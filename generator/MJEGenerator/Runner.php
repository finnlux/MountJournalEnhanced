<?php


namespace MJEGenerator;

use MJEGenerator\Battlenet\Requester as Battlenet;
use MJEGenerator\Wowhead\Requester as Wowhead;
use MJEGenerator\WarcraftMounts\Requester as WarcraftMounts;
use MJEGenerator\Convert\Family;
use MJEGenerator\Convert\ItemList;
use MJEGenerator\Convert\LuaExport;

class Runner
{
    private $config;
    private $export;

    public function __construct(array $config)
    {
        $this->config = $config;
        $this->export = new LuaExport;
    }

    /**
     * @return Mount[]
     */
    private function collectMounts(): array
    {
        $bnet = new Battlenet($this->config['battle.net']['apiKey']);

        return $bnet->fetchMounts($bnet::REGION_EU) + $bnet->fetchMounts($bnet::REGION_US);
    }

    /**
     * @param Mount[] $mounts
     * @return array
     */
    private function enhanceMounts($mounts): array
    {
        $mountItems = (new Wowhead)->fetchMountItems();
        foreach ($mountItems as $spellId => $itemIds) {
            if (isset($mounts[$spellId])) {
                $mounts[$spellId]->setItemIds($itemIds);
            }
        }

        return $mounts;
    }

    private function generateFamilies(array $mounts): self
    {
        $wcmMountFamilies = (new WarcraftMounts)->fetchMountFamilies();

        $families = (new Family($this->config['familyMap'], $this->config['ignored']))
            ->groupMountsByFamily($mounts, $wcmMountFamilies);
        $lua      = $this->export->toLuaCategories('MountJournalEnhancedFamily', $families);
        file_put_contents('families.db.lua', $lua);

        return $this;
    }

    private function generateItemList(array $mounts): self
    {
        $itemList = (new ItemList)->listMountsByItemIds($mounts);
        $lua      = $this->export->toLuaSpellList('MountJournalEnhancedItems', $itemList);
        file_put_contents('items.db.lua', $lua);

        return $this;
    }

    public function run(): self
    {
        $mounts = $this->collectMounts();
        $this->enhanceMounts($mounts);

        $this->generateFamilies($mounts);
        $this->generateItemList($mounts);

        return $this;
    }
}
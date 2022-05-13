contract main {


// =======================  Init code  ======================


address stor0;

function _fallback() payable {
    stor0 = msg.sender
    return code.data[48 len 15957]
}



// =====================  Runtime code  =====================


const name = 'MAGICACADEMY JADE'

const decimals = 0

const symbol = 'Jade'


address owner;
address stor1;
address stor2;
address stor3;
address stor4;
address stor5;
uint256 roughSupply;
uint256 totalJadeProduction;
array of uint256 totalJadeProductionSnapshots;
array of uint256 sub_e3b69715;
mapping of uint256 jadeBalance;
mapping of uint256 coinBalance;
mapping of uint256 totalEtherPool;
mapping of uint256 jadeProduction;
mapping of uint8 stor14;
mapping of uint256 lastJadeSaveTime;
mapping of uint256 lastJadeProductionUpdate;
mapping of uint256 allowance;
array of address stor19;
uint8 stor20;
address schemaAddress; offset 8
mapping of uint256 ownedCount;
mapping of uint256 upgradesOwned;
mapping of uint256 uintsOwnerCount;
mapping of uint256 uintProduction;
mapping of uint256 unitCoinProductionIncreases;
mapping of uint256 unitCoinProductionMultiplier;
mapping of uint256 unitAttackIncreases;
mapping of uint256 unitAttackMultiplier;
mapping of uint256 unitDefenseIncreases;
mapping of uint256 unitDefenseMultiplier;
mapping of uint256 unitJadeStealingIncreases;
mapping of uint256 unitJadeStealingMultiplier;

function unitCoinProductionIncreases(address arg1, uint256 arg2) {
    return unitCoinProductionIncreases[arg1][arg2]
}

function upgradesOwned(address arg1, uint256 arg2) {
    return upgradesOwned[arg1][arg2]
}

function unitAttackMultiplier(address arg1, uint256 arg2) {
    return unitAttackMultiplier[arg1][arg2]
}

function getlastJadeProductionUpdate(address arg1) {
    return lastJadeProductionUpdate[address(arg1)]
}

function totalSupply() {
    return roughSupply
}

function getOwnedCount(address arg1, uint256 arg2) {
    return ownedCount[address(arg1)][arg2]
}

function getUnitJadeStealingMultiplier(address arg1, uint256 arg2) {
    return unitJadeStealingMultiplier[address(arg1)][arg2]
}

function unitCoinProductionMultiplier(address arg1, uint256 arg2) {
    return unitCoinProductionMultiplier[arg1][arg2]
}

function getUnitAttackIncreases(address arg1, uint256 arg2) {
    return unitAttackIncreases[address(arg1)][arg2]
}

function getJadeProduction(address arg1) {
    return jadeProduction[address(arg1)][stor16[address(arg1)]]
}

function lastJadeProductionUpdate(address arg1) {
    return lastJadeProductionUpdate[arg1]
}

function getUnitDefenseIncreases(address arg1, uint256 arg2) {
    return unitDefenseIncreases[address(arg1)][arg2]
}

function uintsOwnerCount(address arg1) {
    return uintsOwnerCount[arg1]
}

function jadeBalance(address arg1) {
    return jadeBalance[arg1]
}

function unitDefenseMultiplier(address arg1, uint256 arg2) {
    return unitDefenseMultiplier[arg1][arg2]
}

function unitJadeStealingIncreases(address arg1, uint256 arg2) {
    return unitJadeStealingIncreases[arg1][arg2]
}

function unitAttackIncreases(address arg1, uint256 arg2) {
    return unitAttackIncreases[arg1][arg2]
}

function getUnitDefenseMultiplier(address arg1, uint256 arg2) {
    return unitDefenseMultiplier[address(arg1)][arg2]
}

function lastJadeSaveTime(address arg1) {
    return lastJadeSaveTime[arg1]
}

function totalJadeProduction() {
    return totalJadeProduction
}

function getUnitJadeStealingIncreases(address arg1, uint256 arg2) {
    return unitJadeStealingIncreases[address(arg1)][arg2]
}

function owner() {
    return owner
}

function totalJadeProductionSnapshots(uint256 arg1) {
    require arg1 < totalJadeProductionSnapshots.length
    return totalJadeProductionSnapshots[arg1]
}

function getGameStarted() {
    return bool(stor20)
}

function getTotalEtherPool(uint8 arg1) {
    return totalEtherPool[arg1 << 248]
}

function roughSupply() {
    return roughSupply
}

function coinBalance(address arg1, uint8 arg2) {
    return coinBalance[arg1][arg2]
}

function getTotalUsers() {
    return stor19.length
}

function getUintsOwnerCount(address arg1) {
    return uintsOwnerCount[address(arg1)]
}

function getUnitAttackMultiplier(address arg1, uint256 arg2) {
    return unitAttackMultiplier[address(arg1)][arg2]
}

function unitJadeStealingMultiplier(address arg1, uint256 arg2) {
    return unitJadeStealingMultiplier[arg1][arg2]
}

function getUnitCoinProductionMultiplier(address arg1, uint256 arg2) {
    return unitCoinProductionMultiplier[address(arg1)][arg2]
}

function uintProduction(address arg1, uint256 arg2) {
    return uintProduction[arg1][arg2]
}

function unitsOwned(address arg1, uint256 arg2) {
    return ownedCount[arg1][arg2]
}

function getUnitCoinProductionIncreases(address arg1, uint256 arg2) {
    return unitCoinProductionIncreases[address(arg1)][arg2]
}

function allowance(address arg1, address arg2) {
    return allowance[address(arg1)][address(arg2)]
}

function unitDefenseIncreases(address arg1, uint256 arg2) {
    return unitDefenseIncreases[arg1][arg2]
}

function sub_e3b69715(?) {
    require arg1 < sub_e3b69715.length
    return sub_e3b69715[arg1]
}

function getUintCoinProduction(address arg1, uint256 arg2) {
    return uintProduction[address(arg1)][arg2]
}

function coinBalanceOf(address arg1, uint8 arg2) {
    return coinBalance[address(arg1)][arg2 << 248]
}

function getUpgradesOwned(address arg1, uint256 arg2) {
    return upgradesOwned[address(arg1)][arg2]
}

function schema() {
    return schemaAddress
}

function _fallback() payable {
    revert
}

function beginGame() {
    require owner == msg.sender
    require not stor20
    stor20 = 1
}

function setConfigAddress(address arg1) {
    require owner == msg.sender
    schemaAddress = arg1
}

function setDrawAddress(address arg1) {
    require owner == msg.sender
    require arg1
    stor5 = arg1
}

function setPLATAddress(address arg1) {
    require owner == msg.sender
    require arg1
    stor2 = arg1
}

function setTradeAddress(address arg1) {
    require owner == msg.sender
    require arg1
    stor1 = arg1
}

function setAttackAddress(address arg1) {
    require owner == msg.sender
    require arg1
    stor3 = arg1
}

function setRaffleAddress(address arg1) {
    require owner == msg.sender
    require arg1
    stor4 = arg1
}

function transferOwnership(address arg1) {
    require owner == msg.sender
    require arg1
    emit OwnershipTransferred(owner, arg1);
    owner = arg1
}

function approve(address arg1, uint256 arg2) {
    allowance[address(msg.sender)][address(arg1)] = arg2
    emit Approval(arg2, msg.sender, arg1);
    return 1
}

function setJadeCoinZero(address arg1) {
    if stor1 != msg.sender:
        if stor2 != msg.sender:
            if stor3 != msg.sender:
                if stor4 != msg.sender:
                    require stor5 == msg.sender
    jadeBalance[address(arg1)] = 0
}

function JadeCoinMining(address arg1, uint256 arg2) {
    require owner == msg.sender
    require arg2 + roughSupply >= roughSupply
    roughSupply += arg2
    require arg2 + jadeBalance[address(arg1)] >= jadeBalance[address(arg1)]
    jadeBalance[address(arg1)] += arg2
}

function setLastJadeSaveTime(address arg1) {
    if stor1 != msg.sender:
        if stor2 != msg.sender:
            if stor3 != msg.sender:
                if stor4 != msg.sender:
                    require stor5 == msg.sender
    lastJadeSaveTime[address(arg1)] = block.timestamp
}

function setRoughSupply(uint256 arg1) {
    if stor1 != msg.sender:
        if stor2 != msg.sender:
            if stor3 != msg.sender:
                if stor4 != msg.sender:
                    require stor5 == msg.sender
    require arg1 + roughSupply >= roughSupply
    roughSupply += arg1
}

function setUpgradesOwned(address arg1, uint256 arg2) {
    if stor1 != msg.sender:
        if stor2 != msg.sender:
            if stor3 != msg.sender:
                if stor4 != msg.sender:
                    require stor5 == msg.sender
    require upgradesOwned[address(arg1)][arg2] + 1 >= upgradesOwned[address(arg1)][arg2]
    upgradesOwned[address(arg1)][arg2]++
}

function AddPlayers(address arg1) {
    if stor1 != msg.sender:
        if stor2 != msg.sender:
            if stor3 != msg.sender:
                if stor4 != msg.sender:
                    require stor5 == msg.sender
    stor19.length++
    if not stor19.length <= stor19.length + 1:
        idx = stor19.length + 1
        while stor19.length > idx:
            stor19[idx] = 0
            idx = idx + 1
            continue 
    stor19[stor19.length] = arg1
}

function getUnitsInProduction(address arg1, uint256 arg2, uint256 arg3) {
    if not arg3:
        if ownedCount[address(arg1)][arg2]:
            return (0 / ownedCount[address(arg1)][arg2])
    else:
        if uintProduction[address(arg1)][arg2] * arg3 / arg3 == uintProduction[address(arg1)][arg2]:
            if ownedCount[address(arg1)][arg2]:
                return (uintProduction[address(arg1)][arg2] * arg3 / ownedCount[address(arg1)][arg2])
    revert
}

function setJadeCoin(address arg1, uint256 arg2, bool arg3) {
    if stor1 != msg.sender:
        if stor2 != msg.sender:
            if stor3 != msg.sender:
                if stor4 != msg.sender:
                    require stor5 == msg.sender
    if not arg3:
        require arg2 <= jadeBalance[address(arg1)]
        jadeBalance[address(arg1)] -= arg2
    else:
        require arg2 + jadeBalance[address(arg1)] >= jadeBalance[address(arg1)]
        jadeBalance[address(arg1)] += arg2
}

function setTotalEtherPool(uint256 arg1, uint8 arg2, bool arg3) {
    if stor1 != msg.sender:
        if stor2 != msg.sender:
            if stor3 != msg.sender:
                if stor4 != msg.sender:
                    require stor5 == msg.sender
    if not arg3:
        require arg1 <= totalEtherPool[arg2 << 248]
        totalEtherPool[arg2 << 248] -= arg1
    else:
        require arg1 + totalEtherPool[arg2 << 248] >= totalEtherPool[arg2 << 248]
        totalEtherPool[arg2 << 248] += arg1
}

function setUintsOwnerCount(address arg1, uint256 arg2, bool arg3) {
    if stor1 != msg.sender:
        if stor2 != msg.sender:
            if stor3 != msg.sender:
                if stor4 != msg.sender:
                    require stor5 == msg.sender
    if not arg3:
        require arg2 <= uintsOwnerCount[address(arg1)]
        uintsOwnerCount[address(arg1)] -= arg2
    else:
        require arg2 + uintsOwnerCount[address(arg1)] >= uintsOwnerCount[address(arg1)]
        uintsOwnerCount[address(arg1)] += arg2
}

function setOwnedCount(address arg1, uint256 arg2, uint256 arg3, bool arg4) {
    if stor1 != msg.sender:
        if stor2 != msg.sender:
            if stor3 != msg.sender:
                if stor4 != msg.sender:
                    require stor5 == msg.sender
    if not arg4:
        require arg3 <= ownedCount[address(arg1)][arg2]
        ownedCount[address(arg1)][arg2] -= arg3
    else:
        require arg3 + ownedCount[address(arg1)][arg2] >= ownedCount[address(arg1)][arg2]
        ownedCount[address(arg1)][arg2] += arg3
}

function getUnitsProduction(address arg1, uint256 arg2, uint256 arg3) {
    require ext_code.size(schemaAddress)
    call schemaAddress.0x702123ae with:
         gas gas_remaining wei
        args arg2
    require ext_call.success
    return ((10 * ext_call.return_data[0] * arg3) + (unitCoinProductionMultiplier[address(arg1)][arg2] * ext_call.return_data[0] * arg3) + (10 * unitCoinProductionIncreases[address(arg1)][arg2] * arg3) + (unitCoinProductionMultiplier[address(arg1)][arg2] * unitCoinProductionIncreases[address(arg1)][arg2] * arg3) / 10)
}

function setUintCoinProduction(address arg1, uint256 arg2, uint256 arg3, bool arg4) {
    if stor1 != msg.sender:
        if stor2 != msg.sender:
            if stor3 != msg.sender:
                if stor4 != msg.sender:
                    require stor5 == msg.sender
    if not arg4:
        require arg3 <= uintProduction[address(arg1)][arg2]
        uintProduction[address(arg1)][arg2] -= arg3
    else:
        require arg3 + uintProduction[address(arg1)][arg2] >= uintProduction[address(arg1)][arg2]
        uintProduction[address(arg1)][arg2] += arg3
}

function setCoinBalance(address arg1, uint256 arg2, uint8 arg3, bool arg4) {
    if stor1 != msg.sender:
        if stor2 != msg.sender:
            if stor3 != msg.sender:
                if stor4 != msg.sender:
                    require stor5 == msg.sender
    if not arg4:
        require arg2 <= coinBalance[address(arg1)][arg3 << 248]
        coinBalance[address(arg1)][arg3 << 248] -= arg2
    else:
        require arg2 + coinBalance[address(arg1)][arg3 << 248] >= coinBalance[address(arg1)][arg3 << 248]
        coinBalance[address(arg1)][arg3 << 248] += arg2
}

function setUnitAttackIncreases(address arg1, uint256 arg2, uint256 arg3, bool arg4) {
    if stor1 != msg.sender:
        if stor2 != msg.sender:
            if stor3 != msg.sender:
                if stor4 != msg.sender:
                    require stor5 == msg.sender
    if not arg4:
        require arg3 <= unitAttackIncreases[address(arg1)][arg2]
        unitAttackIncreases[address(arg1)][arg2] -= arg3
    else:
        require arg3 + unitAttackIncreases[address(arg1)][arg2] >= unitAttackIncreases[address(arg1)][arg2]
        unitAttackIncreases[address(arg1)][arg2] += arg3
}

function setUnitAttackMultiplier(address arg1, uint256 arg2, uint256 arg3, bool arg4) {
    if stor1 != msg.sender:
        if stor2 != msg.sender:
            if stor3 != msg.sender:
                if stor4 != msg.sender:
                    require stor5 == msg.sender
    if not arg4:
        require arg3 <= unitAttackMultiplier[address(arg1)][arg2]
        unitAttackMultiplier[address(arg1)][arg2] -= arg3
    else:
        require arg3 + unitAttackMultiplier[address(arg1)][arg2] >= unitAttackMultiplier[address(arg1)][arg2]
        unitAttackMultiplier[address(arg1)][arg2] += arg3
}

function setUnitDefenseIncreases(address arg1, uint256 arg2, uint256 arg3, bool arg4) {
    if stor1 != msg.sender:
        if stor2 != msg.sender:
            if stor3 != msg.sender:
                if stor4 != msg.sender:
                    require stor5 == msg.sender
    if not arg4:
        require arg3 <= unitDefenseIncreases[address(arg1)][arg2]
        unitDefenseIncreases[address(arg1)][arg2] -= arg3
    else:
        require arg3 + unitDefenseIncreases[address(arg1)][arg2] >= unitDefenseIncreases[address(arg1)][arg2]
        unitDefenseIncreases[address(arg1)][arg2] += arg3
}

function setunitDefenseMultiplier(address arg1, uint256 arg2, uint256 arg3, bool arg4) {
    if stor1 != msg.sender:
        if stor2 != msg.sender:
            if stor3 != msg.sender:
                if stor4 != msg.sender:
                    require stor5 == msg.sender
    if not arg4:
        require arg3 <= unitDefenseMultiplier[address(arg1)][arg2]
        unitDefenseMultiplier[address(arg1)][arg2] -= arg3
    else:
        require arg3 + unitDefenseMultiplier[address(arg1)][arg2] >= unitDefenseMultiplier[address(arg1)][arg2]
        unitDefenseMultiplier[address(arg1)][arg2] += arg3
}

function setUnitJadeStealingIncreases(address arg1, uint256 arg2, uint256 arg3, bool arg4) {
    if stor1 != msg.sender:
        if stor2 != msg.sender:
            if stor3 != msg.sender:
                if stor4 != msg.sender:
                    require stor5 == msg.sender
    if not arg4:
        require arg3 <= unitJadeStealingIncreases[address(arg1)][arg2]
        unitJadeStealingIncreases[address(arg1)][arg2] -= arg3
    else:
        require arg3 + unitJadeStealingIncreases[address(arg1)][arg2] >= unitJadeStealingIncreases[address(arg1)][arg2]
        unitJadeStealingIncreases[address(arg1)][arg2] += arg3
}

function setUnitJadeStealingMultiplier(address arg1, uint256 arg2, uint256 arg3, bool arg4) {
    if stor1 != msg.sender:
        if stor2 != msg.sender:
            if stor3 != msg.sender:
                if stor4 != msg.sender:
                    require stor5 == msg.sender
    if not arg4:
        require arg3 <= unitJadeStealingMultiplier[address(arg1)][arg2]
        unitJadeStealingMultiplier[address(arg1)][arg2] -= arg3
    else:
        require arg3 + unitJadeStealingMultiplier[address(arg1)][arg2] >= unitJadeStealingMultiplier[address(arg1)][arg2]
        unitJadeStealingMultiplier[address(arg1)][arg2] += arg3
}

function setUnitCoinProductionIncreases(address arg1, uint256 arg2, uint256 arg3, bool arg4) {
    if stor1 != msg.sender:
        if stor2 != msg.sender:
            if stor3 != msg.sender:
                if stor4 != msg.sender:
                    require stor5 == msg.sender
    if not arg4:
        require arg3 <= unitCoinProductionIncreases[address(arg1)][arg2]
        unitCoinProductionIncreases[address(arg1)][arg2] -= arg3
    else:
        require arg3 + unitCoinProductionIncreases[address(arg1)][arg2] >= unitCoinProductionIncreases[address(arg1)][arg2]
        unitCoinProductionIncreases[address(arg1)][arg2] += arg3
}

function setUnitCoinProductionMultiplier(address arg1, uint256 arg2, uint256 arg3, bool arg4) {
    if stor1 != msg.sender:
        if stor2 != msg.sender:
            if stor3 != msg.sender:
                if stor4 != msg.sender:
                    require stor5 == msg.sender
    if not arg4:
        require arg3 <= unitCoinProductionMultiplier[address(arg1)][arg2]
        unitCoinProductionMultiplier[address(arg1)][arg2] -= arg3
    else:
        require arg3 + unitCoinProductionMultiplier[address(arg1)][arg2] >= unitCoinProductionMultiplier[address(arg1)][arg2]
        unitCoinProductionMultiplier[address(arg1)][arg2] += arg3
}

function increasePlayersJadeProduction(address arg1, uint256 arg2) {
    if stor1 != msg.sender:
        if stor2 != msg.sender:
            if stor3 != msg.sender:
                if stor4 != msg.sender:
                    require stor5 == msg.sender
    require arg2 + jadeProduction[address(arg1)][stor16[address(arg1)]] >= jadeProduction[address(arg1)][stor16[address(arg1)]]
    jadeProduction[address(arg1)][stor9.length] = arg2 + jadeProduction[address(arg1)][stor16[address(arg1)]]
    lastJadeProductionUpdate[address(arg1)] = sub_e3b69715.length
    require arg2 + totalJadeProduction >= totalJadeProduction
    totalJadeProduction += arg2
}

function balanceOfUnclaimed(address arg1) {
    if lastJadeSaveTime[address(arg1)] <= 0:
        return 0
    if lastJadeSaveTime[address(arg1)] >= block.timestamp:
        return 0
    require lastJadeSaveTime[address(arg1)] <= block.timestamp
    if not jadeProduction[address(arg1)][stor16[address(arg1)]]:
        return 0
    require block.timestamp - lastJadeSaveTime[address(arg1)] / 60 * jadeProduction[address(arg1)][stor16[address(arg1)]] / jadeProduction[address(arg1)][stor16[address(arg1)]] == block.timestamp - lastJadeSaveTime[address(arg1)] / 60
    return (block.timestamp - lastJadeSaveTime[address(arg1)] / 60 * jadeProduction[address(arg1)][stor16[address(arg1)]])
}

function reducePlayersJadeProduction(address arg1, uint256 arg2) {
    if stor1 != msg.sender:
        if stor2 != msg.sender:
            if stor3 != msg.sender:
                if stor4 != msg.sender:
                    require stor5 == msg.sender
    require arg2 <= jadeProduction[address(arg1)][stor16[address(arg1)]]
    if jadeProduction[address(arg1)][stor16[address(arg1)]] - arg2:
        jadeProduction[address(arg1)][stor9.length] = jadeProduction[address(arg1)][stor16[address(arg1)]] - arg2
    else:
        stor14[address(arg1)][stor9.length] = 1
        jadeProduction[address(arg1)][stor9.length] = 0
    lastJadeProductionUpdate[address(arg1)] = sub_e3b69715.length
    require arg2 <= totalJadeProduction
    totalJadeProduction -= arg2
}

function balanceOf(address arg1) {
    if lastJadeSaveTime[address(arg1)] <= 0:
        if jadeBalance[address(arg1)] >= jadeBalance[address(arg1)]:
            return jadeBalance[address(arg1)]
    else:
        if lastJadeSaveTime[address(arg1)] >= block.timestamp:
            if jadeBalance[address(arg1)] >= jadeBalance[address(arg1)]:
                return jadeBalance[address(arg1)]
        else:
            if lastJadeSaveTime[address(arg1)] <= block.timestamp:
                if not jadeProduction[address(arg1)][stor16[address(arg1)]]:
                    if jadeBalance[address(arg1)] >= jadeBalance[address(arg1)]:
                        return jadeBalance[address(arg1)]
                else:
                    if block.timestamp - lastJadeSaveTime[address(arg1)] / 60 * jadeProduction[address(arg1)][stor16[address(arg1)]] / jadeProduction[address(arg1)][stor16[address(arg1)]] == block.timestamp - lastJadeSaveTime[address(arg1)] / 60:
                        if (block.timestamp - lastJadeSaveTime[address(arg1)] / 60 * jadeProduction[address(arg1)][stor16[address(arg1)]]) + jadeBalance[address(arg1)] >= jadeBalance[address(arg1)]:
                            return ((block.timestamp - lastJadeSaveTime[address(arg1)] / 60 * jadeProduction[address(arg1)][stor16[address(arg1)]]) + jadeBalance[address(arg1)])
    revert
}

function updatePlayersCoinByOut(address arg1) {
    if stor1 != msg.sender:
        if stor2 != msg.sender:
            if stor3 != msg.sender:
                if stor4 != msg.sender:
                    require stor5 == msg.sender
    if lastJadeSaveTime[address(arg1)] <= 0:
        lastJadeSaveTime[address(arg1)] = block.timestamp
        require roughSupply >= roughSupply
        require jadeBalance[address(arg1)] >= jadeBalance[address(arg1)]
    if lastJadeSaveTime[address(arg1)] >= block.timestamp:
        lastJadeSaveTime[address(arg1)] = block.timestamp
        require roughSupply >= roughSupply
        require jadeBalance[address(arg1)] >= jadeBalance[address(arg1)]
    require lastJadeSaveTime[address(arg1)] <= block.timestamp
    if not jadeProduction[address(arg1)][stor16[address(arg1)]]:
        lastJadeSaveTime[address(arg1)] = block.timestamp
        require roughSupply >= roughSupply
        require jadeBalance[address(arg1)] >= jadeBalance[address(arg1)]
    require block.timestamp - lastJadeSaveTime[address(arg1)] / 60 * jadeProduction[address(arg1)][stor16[address(arg1)]] / jadeProduction[address(arg1)][stor16[address(arg1)]] == block.timestamp - lastJadeSaveTime[address(arg1)] / 60
    lastJadeSaveTime[address(arg1)] = block.timestamp
    require (block.timestamp - lastJadeSaveTime[address(arg1)] / 60 * jadeProduction[address(arg1)][stor16[address(arg1)]]) + roughSupply >= roughSupply
    roughSupply += block.timestamp - lastJadeSaveTime[address(arg1)] / 60 * jadeProduction[address(arg1)][stor16[address(arg1)]]
    require (block.timestamp - lastJadeSaveTime[address(arg1)] / 60 * jadeProduction[address(arg1)][stor16[address(arg1)]]) + jadeBalance[address(arg1)] >= jadeBalance[address(arg1)]
    jadeBalance[address(arg1)] += block.timestamp - lastJadeSaveTime[address(arg1)] / 60 * jadeProduction[address(arg1)][stor16[address(arg1)]]
}

function transferFrom(address arg1, address arg2, uint256 arg3) {
    if lastJadeSaveTime[address(arg1)] <= 0:
        lastJadeSaveTime[address(arg1)] = block.timestamp
        require roughSupply >= roughSupply
        require jadeBalance[address(arg1)] >= jadeBalance[address(arg1)]
    else:
        if lastJadeSaveTime[address(arg1)] >= block.timestamp:
            lastJadeSaveTime[address(arg1)] = block.timestamp
            require roughSupply >= roughSupply
            require jadeBalance[address(arg1)] >= jadeBalance[address(arg1)]
        else:
            require lastJadeSaveTime[address(arg1)] <= block.timestamp
            if not jadeProduction[address(arg1)][stor16[address(arg1)]]:
                lastJadeSaveTime[address(arg1)] = block.timestamp
                require roughSupply >= roughSupply
                require jadeBalance[address(arg1)] >= jadeBalance[address(arg1)]
            else:
                require block.timestamp - lastJadeSaveTime[address(arg1)] / 60 * jadeProduction[address(arg1)][stor16[address(arg1)]] / jadeProduction[address(arg1)][stor16[address(arg1)]] == block.timestamp - lastJadeSaveTime[address(arg1)] / 60
                lastJadeSaveTime[address(arg1)] = block.timestamp
                require (block.timestamp - lastJadeSaveTime[address(arg1)] / 60 * jadeProduction[address(arg1)][stor16[address(arg1)]]) + roughSupply >= roughSupply
                roughSupply += block.timestamp - lastJadeSaveTime[address(arg1)] / 60 * jadeProduction[address(arg1)][stor16[address(arg1)]]
                require (block.timestamp - lastJadeSaveTime[address(arg1)] / 60 * jadeProduction[address(arg1)][stor16[address(arg1)]]) + jadeBalance[address(arg1)] >= jadeBalance[address(arg1)]
                jadeBalance[address(arg1)] += block.timestamp - lastJadeSaveTime[address(arg1)] / 60 * jadeProduction[address(arg1)][stor16[address(arg1)]]
    require arg3 <= allowance[address(arg1)][address(msg.sender)]
    require arg3 <= jadeBalance[address(arg1)]
    require arg3 <= jadeBalance[address(arg1)]
    jadeBalance[address(arg1)] -= arg3
    require arg3 + jadeBalance[arg2] >= jadeBalance[arg2]
    jadeBalance[address(arg2)] = arg3 + jadeBalance[arg2]
    require arg3 <= allowance[address(arg1)][address(msg.sender)]
    allowance[address(arg1)][address(msg.sender)] -= arg3
    emit Transfer(arg3, arg1, arg2);
    return 1
}

function transfer(address arg1, uint256 arg2) {
    if lastJadeSaveTime[address(msg.sender)] <= 0:
        lastJadeSaveTime[address(msg.sender)] = block.timestamp
        require roughSupply >= roughSupply
        require jadeBalance[address(msg.sender)] >= jadeBalance[address(msg.sender)]
    else:
        if lastJadeSaveTime[address(msg.sender)] >= block.timestamp:
            lastJadeSaveTime[address(msg.sender)] = block.timestamp
            require roughSupply >= roughSupply
            require jadeBalance[address(msg.sender)] >= jadeBalance[address(msg.sender)]
        else:
            require lastJadeSaveTime[address(msg.sender)] <= block.timestamp
            if not jadeProduction[address(msg.sender)][stor16[address(msg.sender)]]:
                lastJadeSaveTime[address(msg.sender)] = block.timestamp
                require roughSupply >= roughSupply
                require jadeBalance[address(msg.sender)] >= jadeBalance[address(msg.sender)]
            else:
                require block.timestamp - lastJadeSaveTime[address(msg.sender)] / 60 * jadeProduction[address(msg.sender)][stor16[address(msg.sender)]] / jadeProduction[address(msg.sender)][stor16[address(msg.sender)]] == block.timestamp - lastJadeSaveTime[address(msg.sender)] / 60
                lastJadeSaveTime[address(msg.sender)] = block.timestamp
                require (block.timestamp - lastJadeSaveTime[address(msg.sender)] / 60 * jadeProduction[address(msg.sender)][stor16[address(msg.sender)]]) + roughSupply >= roughSupply
                roughSupply += block.timestamp - lastJadeSaveTime[address(msg.sender)] / 60 * jadeProduction[address(msg.sender)][stor16[address(msg.sender)]]
                require (block.timestamp - lastJadeSaveTime[address(msg.sender)] / 60 * jadeProduction[address(msg.sender)][stor16[address(msg.sender)]]) + jadeBalance[address(msg.sender)] >= jadeBalance[address(msg.sender)]
                jadeBalance[address(msg.sender)] += block.timestamp - lastJadeSaveTime[address(msg.sender)] / 60 * jadeProduction[address(msg.sender)][stor16[address(msg.sender)]]
    require arg2 <= jadeBalance[address(msg.sender)]
    require arg2 <= jadeBalance[address(msg.sender)]
    jadeBalance[address(msg.sender)] -= arg2
    require arg2 + jadeBalance[arg1] >= jadeBalance[arg1]
    jadeBalance[address(arg1)] = arg2 + jadeBalance[arg1]
    emit Transfer(arg2, msg.sender, arg1);
    return 1
}

function updatePlayersCoinByPurchase(address arg1, uint256 arg2) {
    if stor1 != msg.sender:
        if stor2 != msg.sender:
            if stor3 != msg.sender:
                if stor4 != msg.sender:
                    require stor5 == msg.sender
    if lastJadeSaveTime[address(arg1)] <= 0:
        if arg2 <= 0:
            require -arg2 + roughSupply >= roughSupply
            roughSupply -= arg2
            require -arg2 + jadeBalance[address(arg1)] >= jadeBalance[address(arg1)]
            jadeBalance[address(arg1)] -= arg2
        else:
            require 0 <= arg2
            require jadeBalance[address(arg1)] >= arg2
            require arg2 <= roughSupply
            roughSupply -= arg2
            require arg2 <= jadeBalance[address(arg1)]
            jadeBalance[address(arg1)] -= arg2
    else:
        if lastJadeSaveTime[address(arg1)] >= block.timestamp:
            if arg2 <= 0:
                require -arg2 + roughSupply >= roughSupply
                roughSupply -= arg2
                require -arg2 + jadeBalance[address(arg1)] >= jadeBalance[address(arg1)]
                jadeBalance[address(arg1)] -= arg2
            else:
                require 0 <= arg2
                require jadeBalance[address(arg1)] >= arg2
                require arg2 <= roughSupply
                roughSupply -= arg2
                require arg2 <= jadeBalance[address(arg1)]
                jadeBalance[address(arg1)] -= arg2
        else:
            require lastJadeSaveTime[address(arg1)] <= block.timestamp
            if not jadeProduction[address(arg1)][stor16[address(arg1)]]:
                if arg2 <= 0:
                    require -arg2 + roughSupply >= roughSupply
                    roughSupply -= arg2
                    require -arg2 + jadeBalance[address(arg1)] >= jadeBalance[address(arg1)]
                    jadeBalance[address(arg1)] -= arg2
                else:
                    require 0 <= arg2
                    require jadeBalance[address(arg1)] >= arg2
                    require arg2 <= roughSupply
                    roughSupply -= arg2
                    require arg2 <= jadeBalance[address(arg1)]
                    jadeBalance[address(arg1)] -= arg2
            else:
                require block.timestamp - lastJadeSaveTime[address(arg1)] / 60 * jadeProduction[address(arg1)][stor16[address(arg1)]] / jadeProduction[address(arg1)][stor16[address(arg1)]] == block.timestamp - lastJadeSaveTime[address(arg1)] / 60
                if arg2 <= block.timestamp - lastJadeSaveTime[address(arg1)] / 60 * jadeProduction[address(arg1)][stor16[address(arg1)]]:
                    require (block.timestamp - lastJadeSaveTime[address(arg1)] / 60 * jadeProduction[address(arg1)][stor16[address(arg1)]]) - arg2 + roughSupply >= roughSupply
                    roughSupply = (block.timestamp - lastJadeSaveTime[address(arg1)] / 60 * jadeProduction[address(arg1)][stor16[address(arg1)]]) - arg2 + roughSupply
                    require (block.timestamp - lastJadeSaveTime[address(arg1)] / 60 * jadeProduction[address(arg1)][stor16[address(arg1)]]) - arg2 + jadeBalance[address(arg1)] >= jadeBalance[address(arg1)]
                    jadeBalance[address(arg1)] = (block.timestamp - lastJadeSaveTime[address(arg1)] / 60 * jadeProduction[address(arg1)][stor16[address(arg1)]]) - arg2 + jadeBalance[address(arg1)]
                else:
                    require block.timestamp - lastJadeSaveTime[address(arg1)] / 60 * jadeProduction[address(arg1)][stor16[address(arg1)]] <= arg2
                    require jadeBalance[address(arg1)] >= arg2 - (block.timestamp - lastJadeSaveTime[address(arg1)] / 60 * jadeProduction[address(arg1)][stor16[address(arg1)]])
                    require arg2 - (block.timestamp - lastJadeSaveTime[address(arg1)] / 60 * jadeProduction[address(arg1)][stor16[address(arg1)]]) <= roughSupply
                    roughSupply = roughSupply - arg2 + (block.timestamp - lastJadeSaveTime[address(arg1)] / 60 * jadeProduction[address(arg1)][stor16[address(arg1)]])
                    require arg2 - (block.timestamp - lastJadeSaveTime[address(arg1)] / 60 * jadeProduction[address(arg1)][stor16[address(arg1)]]) <= jadeBalance[address(arg1)]
                    jadeBalance[address(arg1)] = jadeBalance[address(arg1)] - arg2 + (block.timestamp - lastJadeSaveTime[address(arg1)] / 60 * jadeProduction[address(arg1)][stor16[address(arg1)]])
    lastJadeSaveTime[address(arg1)] = block.timestamp
}

function getRanking() {
    if 256 >= (32 * stor19.length) + 256:
        mem[256] = stor19.length
        idx = 0
        s = 0
        while idx < stor19.length:
            mem[32] = sha3(stor19[idx], 13)
            require s < stor19.length
            mem[(32 * s) + 256] = jadeProduction[stor19[idx]][stor16[stor19[idx]]]
            require idx < stor19.length
            mem[0] = 19
            require s < mem[256]
            mem[(32 * s) + 288] = stor19[idx]
            idx = idx + 1
            s = s + 1
            continue 
        s = 0
        t = 0
        u = 0
        idx = 0
        while idx < stor19.length - 1:
            u = s
            v = t
            w = 0
            while w < stor19.length + -idx - 1:
                require w + 1 < stor19.length
                require w < stor19.length
                if mem[(32 * w) + 256] >= mem[(32 * w + 1) + 256]:
                    u = u
                    v = v
                    w = w + 1
                    continue 
                require w < stor19.length
                _488 = mem[(32 * w) + 256]
                require w < mem[256]
                _496 = mem[(32 * w) + 288]
                require w + 1 < stor19.length
                require w < stor19.length
                mem[(32 * w) + 256] = mem[(32 * w + 1) + 256]
                require w + 1 < stor19.length
                mem[(32 * w + 1) + 256] = _488
                require w + 1 < mem[256]
                require w < mem[256]
                mem[(32 * w) + 288] = mem[(32 * w + 1) + 300 len 20]
                require w + 1 < mem[256]
                mem[(32 * w + 1) + 288] = address(_496)
                u = _496
                v = _488
                w = w + 1
                continue 
            s = u
            t = v
            u = w
            idx = idx + 1
            continue 
        mem[(32 * stor19.length) + 288] = 64
        mem[(32 * stor19.length) + 352] = mem[256]
        mem[(32 * stor19.length) + 384 len floor32(mem[256])] = mem[288 len floor32(mem[256])]
        mem[(32 * mem[256]) + (32 * stor19.length) + 384] = stor19.length
        mem[(32 * mem[256]) + (32 * stor19.length) + 416 len floor32(stor19.length)] = mem[256 len floor32(stor19.length)]
        return Array(len=mem[256], data=mem[(32 * stor19.length) + 384 len (32 * mem[256]) + 32], mem[256 len floor32(stor19.length)], mem[(32 * stor19.length) + (32 * mem[256]) + floor32(stor19.length) + 416 len (32 * stor19.length) - floor32(stor19.length)]), 
               (32 * mem[256]) + 96
    mem[(32 * stor19.length) + 256] = stor19.length
    idx = 0
    s = 0
    while idx < stor19.length:
        mem[32] = sha3(stor19[idx], 13)
        require s < stor19.length
        mem[(32 * s) + 256] = jadeProduction[stor19[idx]][stor16[stor19[idx]]]
        require idx < stor19.length
        mem[0] = 19
        require s < mem[(32 * stor19.length) + 256]
        mem[(32 * stor19.length) + (32 * s) + 288] = stor19[idx]
        idx = idx + 1
        s = s + 1
        continue 
    s = 0
    t = 0
    u = 0
    idx = 0
    while idx < stor19.length - 1:
        u = s
        v = t
        w = 0
        while w < stor19.length + -idx - 1:
            require w + 1 < stor19.length
            require w < stor19.length
            if mem[(32 * w) + 256] >= mem[(32 * w + 1) + 256]:
                u = u
                v = v
                w = w + 1
                continue 
            require w < stor19.length
            _486 = mem[(32 * w) + 256]
            require w < mem[(32 * stor19.length) + 256]
            _494 = mem[(32 * w) + (32 * stor19.length) + 288]
            require w + 1 < stor19.length
            require w < stor19.length
            mem[(32 * w) + 256] = mem[(32 * w + 1) + 256]
            require w + 1 < stor19.length
            mem[(32 * w + 1) + 256] = _486
            require w + 1 < mem[(32 * stor19.length) + 256]
            require w < mem[(32 * stor19.length) + 256]
            mem[(32 * stor19.length) + (32 * w) + 288] = mem[(32 * w + 1) + (32 * stor19.length) + 300 len 20]
            require w + 1 < mem[(32 * stor19.length) + 256]
            mem[(32 * stor19.length) + (32 * w + 1) + 288] = address(_494)
            u = _494
            v = _486
            w = w + 1
            continue 
        s = u
        t = v
        u = w
        idx = idx + 1
        continue 
    mem[(64 * stor19.length) + 288] = 64
    mem[(64 * stor19.length) + 352] = mem[(32 * stor19.length) + 256]
    mem[(64 * stor19.length) + 384 len floor32(mem[(32 * stor19.length) + 256])] = mem[(32 * stor19.length) + 288 len floor32(mem[(32 * stor19.length) + 256])]
    mem[(64 * stor19.length) + 320] = (32 * mem[(32 * stor19.length) + 256]) + 96
    mem[(32 * mem[(32 * stor19.length) + 256]) + (64 * stor19.length) + 384] = stor19.length
    mem[(32 * mem[(32 * stor19.length) + 256]) + (64 * stor19.length) + 416 len floor32(stor19.length)] = mem[256 len floor32(stor19.length)]
    return memory
      from (64 * stor19.length) + 288
       len (161 * stor19.length) + (32 * mem[(32 * stor19.length) + 256]) + 128
}

function getPlayersBattleStats(address arg1) {
    require ext_code.size(schemaAddress)
    call schemaAddress.0xcf0f864e with:
         gas gas_remaining wei
    mem[96 len 64] = ext_call.return_data[0 len 64]
    require ext_call.success
    idx = mem[96]
    s = 0
    t = 0
    u = 0
    v = 0
    while idx <= ext_call.return_data[32]:
        _39 = sha3(idx, sha3(address(arg1), 21))
        _43 = sha3(idx, sha3(address(arg1), 28))
        _45 = sha3(idx, sha3(address(arg1), 27))
        require ext_code.size(schemaAddress)
        call schemaAddress.0x69632f56 with:
             gas gas_remaining wei
            args idx
        require ext_call.success
        _49 = ext_call.return_data[0]
        require ((10 * ext_call.return_data[0] * ownedCount[address(arg1)][idx]) + (unitAttackMultiplier[address(arg1)][idx] * ext_call.return_data[0] * ownedCount[address(arg1)][idx]) + (10 * unitAttackIncreases[address(arg1)][idx] * ownedCount[address(arg1)][idx]) + (unitAttackMultiplier[address(arg1)][idx] * unitAttackIncreases[address(arg1)][idx] * ownedCount[address(arg1)][idx]) / 10) + v >= v
        require ext_code.size(schemaAddress)
        call schemaAddress.0x6101a1f7 with:
             gas gas_remaining wei
            args idx
        require ext_call.success
        require ((10 * ext_call.return_data[0] * ownedCount[address(arg1)][idx]) + (unitJadeStealingMultiplier[address(arg1)][idx] * ext_call.return_data[0] * ownedCount[address(arg1)][idx]) + (10 * unitJadeStealingIncreases[address(arg1)][idx] * ownedCount[address(arg1)][idx]) + (unitJadeStealingMultiplier[address(arg1)][idx] * unitJadeStealingIncreases[address(arg1)][idx] * ownedCount[address(arg1)][idx]) / 10) + t >= t
        mem[0] = idx
        mem[32] = sha3(address(arg1), 29)
        mem[100] = idx
        require ext_code.size(schemaAddress)
        call schemaAddress.0x21446cfe with:
             gas gas_remaining wei
            args idx
        mem[96] = ext_call.return_data[0]
        require ext_call.success
        require ((10 * ext_call.return_data[0] * ownedCount[address(arg1)][idx]) + (unitDefenseMultiplier[address(arg1)][idx] * ext_call.return_data[0] * ownedCount[address(arg1)][idx]) + (10 * unitDefenseIncreases[address(arg1)][idx] * ownedCount[address(arg1)][idx]) + (unitDefenseMultiplier[address(arg1)][idx] * unitDefenseIncreases[address(arg1)][idx] * ownedCount[address(arg1)][idx]) / 10) + u >= u
        require ((10 * ext_call.return_data[0] * ownedCount[address(arg1)][idx]) + (unitDefenseMultiplier[address(arg1)][idx] * ext_call.return_data[0] * ownedCount[address(arg1)][idx]) + (10 * unitDefenseIncreases[address(arg1)][idx] * ownedCount[address(arg1)][idx]) + (unitDefenseMultiplier[address(arg1)][idx] * unitDefenseIncreases[address(arg1)][idx] * ownedCount[address(arg1)][idx]) / 10) + u >= 0
        idx = idx + 1
        s = ((10 * ext_call.return_data[0] * ownedCount[address(arg1)][idx]) + (unitDefenseMultiplier[address(arg1)][idx] * ext_call.return_data[0] * ownedCount[address(arg1)][idx]) + (10 * unitDefenseIncreases[address(arg1)][idx] * ownedCount[address(arg1)][idx]) + (unitDefenseMultiplier[address(arg1)][idx] * unitDefenseIncreases[address(arg1)][idx] * ownedCount[address(arg1)][idx]) / 10) + u + ((10 * ext_call.return_data[0] * ownedCount[address(arg1)][idx]) + (unitAttackMultiplier[address(arg1)][idx] * ext_call.return_data[0] * ownedCount[address(arg1)][idx]) + (10 * unitAttackIncreases[address(arg1)][idx] * ownedCount[address(arg1)][idx]) + (unitAttackMultiplier[address(arg1)][idx] * unitAttackIncreases[address(arg1)][idx] * ownedCount[address(arg1)][idx]) / 10) + v
        t = ((10 * ext_call.return_data[0] * ownedCount[address(arg1)][idx]) + (unitJadeStealingMultiplier[address(arg1)][idx] * ext_call.return_data[0] * ownedCount[address(arg1)][idx]) + (10 * unitJadeStealingIncreases[address(arg1)][idx] * ownedCount[address(arg1)][idx]) + (unitJadeStealingMultiplier[address(arg1)][idx] * unitJadeStealingIncreases[address(arg1)][idx] * ownedCount[address(arg1)][idx]) / 10) + t
        u = ((10 * ext_call.return_data[0] * ownedCount[address(arg1)][idx]) + (unitDefenseMultiplier[address(arg1)][idx] * ext_call.return_data[0] * ownedCount[address(arg1)][idx]) + (10 * unitDefenseIncreases[address(arg1)][idx] * ownedCount[address(arg1)][idx]) + (unitDefenseMultiplier[address(arg1)][idx] * unitDefenseIncreases[address(arg1)][idx] * ownedCount[address(arg1)][idx]) / 10) + u
        v = ((10 * ext_call.return_data[0] * ownedCount[address(arg1)][idx]) + (unitAttackMultiplier[address(arg1)][idx] * ext_call.return_data[0] * ownedCount[address(arg1)][idx]) + (10 * unitAttackIncreases[address(arg1)][idx] * ownedCount[address(arg1)][idx]) + (unitAttackMultiplier[address(arg1)][idx] * unitAttackIncreases[address(arg1)][idx] * ownedCount[address(arg1)][idx]) / 10) + v
        continue 
    mem[96] = ((10 * _49 * stor[_39]) + (stor[_43] * _49 * stor[_39]) + (10 * stor[_45] * stor[_39]) + (stor[_43] * stor[_45] * stor[_39]) / 10) + (ext_call.return_data[32] * (10 * _49 * stor[_39]) + (stor[_43] * _49 * stor[_39]) + (10 * stor[_45] * stor[_39]) + (stor[_43] * stor[_45] * stor[_39]) / 10) - (mem[96] * (10 * _49 * stor[_39]) + (stor[_43] * _49 * stor[_39]) + (10 * stor[_45] * stor[_39]) + (stor[_43] * stor[_45] * stor[_39]) / 10)
    return mem[96], u, t, s
}

function getAttackRanking() {
    if 256 >= (32 * stor19.length) + 256:
        mem[256] = stor19.length
        idx = 0
        s = 0
        while idx < stor19.length:
            require ext_code.size(schemaAddress)
            call schemaAddress.0xcf0f864e with:
                 gas gas_remaining wei
            mem[(32 * stor19.length) + 288 len 64] = ext_call.return_data[0 len 64]
            require ext_call.success
            t = mem[(32 * stor19.length) + 288]
            u = 0
            u = 0
            v = 0
            w = 0
            while t <= ext_call.return_data[32]:
                require ext_code.size(schemaAddress)
                call schemaAddress.0x69632f56 with:
                     gas gas_remaining wei
                    args t
                require ext_call.success
                require ((10 * ext_call.return_data[0] * ownedCount[stor19[idx]][t]) + (unitAttackMultiplier[stor19[idx]][t] * ext_call.return_data[0] * ownedCount[stor19[idx]][t]) + (10 * unitAttackIncreases[stor19[idx]][t] * ownedCount[stor19[idx]][t]) + (unitAttackMultiplier[stor19[idx]][t] * unitAttackIncreases[stor19[idx]][t] * ownedCount[stor19[idx]][t]) / 10) + w >= w
                require ext_code.size(schemaAddress)
                call schemaAddress.0x6101a1f7 with:
                     gas gas_remaining wei
                    args t
                require ext_call.success
                require ((10 * ext_call.return_data[0] * ownedCount[stor19[idx]][t]) + (unitJadeStealingMultiplier[stor19[idx]][t] * ext_call.return_data[0] * ownedCount[stor19[idx]][t]) + (10 * unitJadeStealingIncreases[stor19[idx]][t] * ownedCount[stor19[idx]][t]) + (unitJadeStealingMultiplier[stor19[idx]][t] * unitJadeStealingIncreases[stor19[idx]][t] * ownedCount[stor19[idx]][t]) / 10) + u >= u
                _701 = sha3(t, sha3(stor19[idx], 21))
                _721 = sha3(t, sha3(stor19[idx], 30))
                mem[0] = t
                mem[32] = sha3(stor19[idx], 29)
                _723 = sha3(t, sha3(stor19[idx], 29))
                mem[(32 * stor19.length) + 292] = t
                require ext_code.size(schemaAddress)
                call schemaAddress.0x21446cfe with:
                     gas gas_remaining wei
                    args t
                mem[(32 * stor19.length) + 288] = ext_call.return_data[0]
                require ext_call.success
                require ((10 * ext_call.return_data[0] * ownedCount[stor19[idx]][t]) + (unitDefenseMultiplier[stor19[idx]][t] * ext_call.return_data[0] * ownedCount[stor19[idx]][t]) + (10 * unitDefenseIncreases[stor19[idx]][t] * ownedCount[stor19[idx]][t]) + (unitDefenseMultiplier[stor19[idx]][t] * unitDefenseIncreases[stor19[idx]][t] * ownedCount[stor19[idx]][t]) / 10) + v >= v
                require ((10 * ext_call.return_data[0] * ownedCount[stor19[idx]][t]) + (unitDefenseMultiplier[stor19[idx]][t] * ext_call.return_data[0] * ownedCount[stor19[idx]][t]) + (10 * unitDefenseIncreases[stor19[idx]][t] * ownedCount[stor19[idx]][t]) + (unitDefenseMultiplier[stor19[idx]][t] * unitDefenseIncreases[stor19[idx]][t] * ownedCount[stor19[idx]][t]) / 10) + v >= 0
                t = t + 1
                u = ((10 * ext_call.return_data[0] * ownedCount[stor19[idx]][t]) + (unitDefenseMultiplier[stor19[idx]][t] * ext_call.return_data[0] * ownedCount[stor19[idx]][t]) + (10 * unitDefenseIncreases[stor19[idx]][t] * ownedCount[stor19[idx]][t]) + (unitDefenseMultiplier[stor19[idx]][t] * unitDefenseIncreases[stor19[idx]][t] * ownedCount[stor19[idx]][t]) / 10) + v + ((10 * ext_call.return_data[0] * ownedCount[stor19[idx]][t]) + (unitAttackMultiplier[stor19[idx]][t] * ext_call.return_data[0] * ownedCount[stor19[idx]][t]) + (10 * unitAttackIncreases[stor19[idx]][t] * ownedCount[stor19[idx]][t]) + (unitAttackMultiplier[stor19[idx]][t] * unitAttackIncreases[stor19[idx]][t] * ownedCount[stor19[idx]][t]) / 10) + w
                u = ((10 * ext_call.return_data[0] * ownedCount[stor19[idx]][t]) + (unitJadeStealingMultiplier[stor19[idx]][t] * ext_call.return_data[0] * ownedCount[stor19[idx]][t]) + (10 * unitJadeStealingIncreases[stor19[idx]][t] * ownedCount[stor19[idx]][t]) + (unitJadeStealingMultiplier[stor19[idx]][t] * unitJadeStealingIncreases[stor19[idx]][t] * ownedCount[stor19[idx]][t]) / 10) + u
                v = ((10 * ext_call.return_data[0] * ownedCount[stor19[idx]][t]) + (unitDefenseMultiplier[stor19[idx]][t] * ext_call.return_data[0] * ownedCount[stor19[idx]][t]) + (10 * unitDefenseIncreases[stor19[idx]][t] * ownedCount[stor19[idx]][t]) + (unitDefenseMultiplier[stor19[idx]][t] * unitDefenseIncreases[stor19[idx]][t] * ownedCount[stor19[idx]][t]) / 10) + v
                w = ((10 * ext_call.return_data[0] * ownedCount[stor19[idx]][t]) + (unitAttackMultiplier[stor19[idx]][t] * ext_call.return_data[0] * ownedCount[stor19[idx]][t]) + (10 * unitAttackIncreases[stor19[idx]][t] * ownedCount[stor19[idx]][t]) + (unitAttackMultiplier[stor19[idx]][t] * unitAttackIncreases[stor19[idx]][t] * ownedCount[stor19[idx]][t]) / 10) + w
                continue 
            require s < stor19.length
            mem[(32 * s) + 256] = ((10 * _733 * stor[_701]) + (stor[_721] * _733 * stor[_701]) + (10 * stor[_723] * stor[_701]) + (stor[_721] * stor[_723] * stor[_701]) / 10) + (ext_call.return_data[32] * (10 * _733 * stor[_701]) + (stor[_721] * _733 * stor[_701]) + (10 * stor[_723] * stor[_701]) + (stor[_721] * stor[_723] * stor[_701]) / 10) - (mem[(32 * stor19.length) + 288] * (10 * _733 * stor[_701]) + (stor[_721] * _733 * stor[_701]) + (10 * stor[_723] * stor[_701]) + (stor[_721] * stor[_723] * stor[_701]) / 10)
            require idx < stor19.length
            mem[0] = 19
            require s < mem[256]
            mem[(32 * s) + 288] = stor19[idx]
            idx = idx + 1
            s = s + 1
            continue 
        s = 0
        t = 0
        u = 0
        idx = 0
        while idx < stor19.length - 1:
            u = s
            v = t
            w = 0
            while w < stor19.length + -idx - 1:
                require w + 1 < stor19.length
                require w < stor19.length
                if mem[(32 * w) + 256] >= mem[(32 * w + 1) + 256]:
                    u = u
                    v = v
                    w = w + 1
                    continue 
                require w < stor19.length
                _876 = mem[(32 * w) + 256]
                require w < mem[256]
                _884 = mem[(32 * w) + 288]
                require w + 1 < stor19.length
                require w < stor19.length
                mem[(32 * w) + 256] = mem[(32 * w + 1) + 256]
                require w + 1 < stor19.length
                mem[(32 * w + 1) + 256] = _876
                require w + 1 < mem[256]
                require w < mem[256]
                mem[(32 * w) + 288] = mem[(32 * w + 1) + 300 len 20]
                require w + 1 < mem[256]
                mem[(32 * w + 1) + 288] = address(_884)
                u = _884
                v = _876
                w = w + 1
                continue 
            s = u
            t = v
            u = w
            idx = idx + 1
            continue 
        mem[(32 * stor19.length) + 288] = 64
        mem[(32 * stor19.length) + 352] = mem[256]
        mem[(32 * stor19.length) + 384 len floor32(mem[256])] = mem[288 len floor32(mem[256])]
        mem[(32 * mem[256]) + (32 * stor19.length) + 384] = stor19.length
        mem[(32 * mem[256]) + (32 * stor19.length) + 416 len floor32(stor19.length)] = mem[256 len floor32(stor19.length)]
        return Array(len=mem[256], data=mem[(32 * stor19.length) + 384 len (32 * mem[256]) + 32], mem[256 len floor32(stor19.length)], mem[(32 * stor19.length) + (32 * mem[256]) + floor32(stor19.length) + 416 len (32 * stor19.length) - floor32(stor19.length)]), 
               (32 * mem[256]) + 96
    mem[(32 * stor19.length) + 256] = stor19.length
    idx = 0
    s = 0
    while idx < stor19.length:
        require ext_code.size(schemaAddress)
        call schemaAddress.0xcf0f864e with:
             gas gas_remaining wei
        mem[(64 * stor19.length) + 288 len 64] = ext_call.return_data[0 len 64]
        require ext_call.success
        t = mem[(64 * stor19.length) + 288]
        u = 0
        u = 0
        v = 0
        w = 0
        while t <= ext_call.return_data[32]:
            require ext_code.size(schemaAddress)
            call schemaAddress.0x69632f56 with:
                 gas gas_remaining wei
                args t
            require ext_call.success
            require ((10 * ext_call.return_data[0] * ownedCount[stor19[idx]][t]) + (unitAttackMultiplier[stor19[idx]][t] * ext_call.return_data[0] * ownedCount[stor19[idx]][t]) + (10 * unitAttackIncreases[stor19[idx]][t] * ownedCount[stor19[idx]][t]) + (unitAttackMultiplier[stor19[idx]][t] * unitAttackIncreases[stor19[idx]][t] * ownedCount[stor19[idx]][t]) / 10) + w >= w
            require ext_code.size(schemaAddress)
            call schemaAddress.0x6101a1f7 with:
                 gas gas_remaining wei
                args t
            require ext_call.success
            require ((10 * ext_call.return_data[0] * ownedCount[stor19[idx]][t]) + (unitJadeStealingMultiplier[stor19[idx]][t] * ext_call.return_data[0] * ownedCount[stor19[idx]][t]) + (10 * unitJadeStealingIncreases[stor19[idx]][t] * ownedCount[stor19[idx]][t]) + (unitJadeStealingMultiplier[stor19[idx]][t] * unitJadeStealingIncreases[stor19[idx]][t] * ownedCount[stor19[idx]][t]) / 10) + u >= u
            _699 = sha3(t, sha3(stor19[idx], 21))
            _715 = sha3(t, sha3(stor19[idx], 30))
            mem[0] = t
            mem[32] = sha3(stor19[idx], 29)
            _717 = sha3(t, sha3(stor19[idx], 29))
            mem[(64 * stor19.length) + 292] = t
            require ext_code.size(schemaAddress)
            call schemaAddress.0x21446cfe with:
                 gas gas_remaining wei
                args t
            mem[(64 * stor19.length) + 288] = ext_call.return_data[0]
            require ext_call.success
            require ((10 * ext_call.return_data[0] * ownedCount[stor19[idx]][t]) + (unitDefenseMultiplier[stor19[idx]][t] * ext_call.return_data[0] * ownedCount[stor19[idx]][t]) + (10 * unitDefenseIncreases[stor19[idx]][t] * ownedCount[stor19[idx]][t]) + (unitDefenseMultiplier[stor19[idx]][t] * unitDefenseIncreases[stor19[idx]][t] * ownedCount[stor19[idx]][t]) / 10) + v >= v
            require ((10 * ext_call.return_data[0] * ownedCount[stor19[idx]][t]) + (unitDefenseMultiplier[stor19[idx]][t] * ext_call.return_data[0] * ownedCount[stor19[idx]][t]) + (10 * unitDefenseIncreases[stor19[idx]][t] * ownedCount[stor19[idx]][t]) + (unitDefenseMultiplier[stor19[idx]][t] * unitDefenseIncreases[stor19[idx]][t] * ownedCount[stor19[idx]][t]) / 10) + v >= 0
            t = t + 1
            u = ((10 * ext_call.return_data[0] * ownedCount[stor19[idx]][t]) + (unitDefenseMultiplier[stor19[idx]][t] * ext_call.return_data[0] * ownedCount[stor19[idx]][t]) + (10 * unitDefenseIncreases[stor19[idx]][t] * ownedCount[stor19[idx]][t]) + (unitDefenseMultiplier[stor19[idx]][t] * unitDefenseIncreases[stor19[idx]][t] * ownedCount[stor19[idx]][t]) / 10) + v + ((10 * ext_call.return_data[0] * ownedCount[stor19[idx]][t]) + (unitAttackMultiplier[stor19[idx]][t] * ext_call.return_data[0] * ownedCount[stor19[idx]][t]) + (10 * unitAttackIncreases[stor19[idx]][t] * ownedCount[stor19[idx]][t]) + (unitAttackMultiplier[stor19[idx]][t] * unitAttackIncreases[stor19[idx]][t] * ownedCount[stor19[idx]][t]) / 10) + w
            u = ((10 * ext_call.return_data[0] * ownedCount[stor19[idx]][t]) + (unitJadeStealingMultiplier[stor19[idx]][t] * ext_call.return_data[0] * ownedCount[stor19[idx]][t]) + (10 * unitJadeStealingIncreases[stor19[idx]][t] * ownedCount[stor19[idx]][t]) + (unitJadeStealingMultiplier[stor19[idx]][t] * unitJadeStealingIncreases[stor19[idx]][t] * ownedCount[stor19[idx]][t]) / 10) + u
            v = ((10 * ext_call.return_data[0] * ownedCount[stor19[idx]][t]) + (unitDefenseMultiplier[stor19[idx]][t] * ext_call.return_data[0] * ownedCount[stor19[idx]][t]) + (10 * unitDefenseIncreases[stor19[idx]][t] * ownedCount[stor19[idx]][t]) + (unitDefenseMultiplier[stor19[idx]][t] * unitDefenseIncreases[stor19[idx]][t] * ownedCount[stor19[idx]][t]) / 10) + v
            w = ((10 * ext_call.return_data[0] * ownedCount[stor19[idx]][t]) + (unitAttackMultiplier[stor19[idx]][t] * ext_call.return_data[0] * ownedCount[stor19[idx]][t]) + (10 * unitAttackIncreases[stor19[idx]][t] * ownedCount[stor19[idx]][t]) + (unitAttackMultiplier[stor19[idx]][t] * unitAttackIncreases[stor19[idx]][t] * ownedCount[stor19[idx]][t]) / 10) + w
            continue 
        require s < stor19.length
        mem[(32 * s) + 256] = ((10 * _731 * stor[_699]) + (stor[_715] * _731 * stor[_699]) + (10 * stor[_717] * stor[_699]) + (stor[_715] * stor[_717] * stor[_699]) / 10) + (ext_call.return_data[32] * (10 * _731 * stor[_699]) + (stor[_715] * _731 * stor[_699]) + (10 * stor[_717] * stor[_699]) + (stor[_715] * stor[_717] * stor[_699]) / 10) - (mem[(64 * stor19.length) + 288] * (10 * _731 * stor[_699]) + (stor[_715] * _731 * stor[_699]) + (10 * stor[_717] * stor[_699]) + (stor[_715] * stor[_717] * stor[_699]) / 10)
        require idx < stor19.length
        mem[0] = 19
        require s < mem[(32 * stor19.length) + 256]
        mem[(32 * stor19.length) + (32 * s) + 288] = stor19[idx]
        idx = idx + 1
        s = s + 1
        continue 
    s = 0
    t = 0
    u = 0
    idx = 0
    while idx < stor19.length - 1:
        u = s
        v = t
        w = 0
        while w < stor19.length + -idx - 1:
            require w + 1 < stor19.length
            require w < stor19.length
            if mem[(32 * w) + 256] >= mem[(32 * w + 1) + 256]:
                u = u
                v = v
                w = w + 1
                continue 
            require w < stor19.length
            _874 = mem[(32 * w) + 256]
            require w < mem[(32 * stor19.length) + 256]
            _882 = mem[(32 * w) + (32 * stor19.length) + 288]
            require w + 1 < stor19.length
            require w < stor19.length
            mem[(32 * w) + 256] = mem[(32 * w + 1) + 256]
            require w + 1 < stor19.length
            mem[(32 * w + 1) + 256] = _874
            require w + 1 < mem[(32 * stor19.length) + 256]
            require w < mem[(32 * stor19.length) + 256]
            mem[(32 * stor19.length) + (32 * w) + 288] = mem[(32 * w + 1) + (32 * stor19.length) + 300 len 20]
            require w + 1 < mem[(32 * stor19.length) + 256]
            mem[(32 * stor19.length) + (32 * w + 1) + 288] = address(_882)
            u = _882
            v = _874
            w = w + 1
            continue 
        s = u
        t = v
        u = w
        idx = idx + 1
        continue 
    mem[(64 * stor19.length) + 288] = 64
    mem[(64 * stor19.length) + 352] = mem[(32 * stor19.length) + 256]
    mem[(64 * stor19.length) + 384 len floor32(mem[(32 * stor19.length) + 256])] = mem[(32 * stor19.length) + 288 len floor32(mem[(32 * stor19.length) + 256])]
    mem[(64 * stor19.length) + 320] = (32 * mem[(32 * stor19.length) + 256]) + 96
    mem[(32 * mem[(32 * stor19.length) + 256]) + (64 * stor19.length) + 384] = stor19.length
    mem[(32 * mem[(32 * stor19.length) + 256]) + (64 * stor19.length) + 416 len floor32(stor19.length)] = mem[256 len floor32(stor19.length)]
    return memory
      from (64 * stor19.length) + 288
       len (32 * stor19.length) + (32 * mem[(32 * stor19.length) + 256]) + 128
}



}

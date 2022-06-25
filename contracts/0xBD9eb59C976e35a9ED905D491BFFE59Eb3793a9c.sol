contract main {




// =====================  Runtime code  =====================


#
#  - atkBoss(uint256 arg1)
#
const isContractMiniGame = 1

const isBossWannaCryContract = 1

const VIRUS_MINING_PERIOD = (24 * 3600)


mapping of uint256 payments;
uint256 totalPayments;
uint8 stor2;
address administratorAddress; offset 8
uint256 bossRoundNumber;
uint256 BOSS_HP_DEFAULT;
uint256 HALF_TIME_ATK_BOSS;
uint256 BOSS_DEF_DEFFAULT;
address sub_b4bd7d41Address;
address sub_c3f656f1Address;
mapping of struct players;
mapping of struct bossData;
mapping of uint8 stor11;

function totalPayments() {
    return totalPayments
}

function BOSS_DEF_DEFFAULT() {
    return BOSS_DEF_DEFFAULT
}

function bossData(uint256 arg1) {
    return bossData[arg1].field_0, 
           bossData[arg1].field_256,
           bossData[arg1].field_512,
           bossData[arg1].field_768,
           bossData[arg1].field_1024,
           bossData[arg1].field_1280,
           bool(bossData[arg1].field_1536)
}

function HALF_TIME_ATK_BOSS() {
    return HALF_TIME_ATK_BOSS
}

function BOSS_HP_DEFAULT() {
    return BOSS_HP_DEFAULT
}

function miniGames(address arg1) {
    return bool(stor11[arg1])
}

function sub_b4bd7d41(?) {
    return sub_b4bd7d41Address
}

function sub_c3f656f1(?) {
    return sub_c3f656f1Address
}

function bossRoundNumber() {
    return bossRoundNumber
}

function payments(address arg1) {
    return payments[arg1]
}

function players(address arg1) {
    return players[arg1].field_0, 
           players[arg1].field_256,
           players[arg1].field_512,
           players[arg1].field_768,
           players[arg1].field_1024,
           players[arg1].field_1280
}

function administrator() {
    return administratorAddress
}

function upgrade(address arg1) {
    require msg.sender == administratorAddress
    selfdestruct(arg1)
}

function _fallback() payable {
  stop
}

function setupMiniGame(uint256 arg1, uint256 arg2) {
  stop
}

function setDefenceBoss(uint256 arg1) {
    require msg.sender == administratorAddress
    BOSS_DEF_DEFFAULT = arg1
}

function setBossHPDefault(uint256 arg1) {
    require msg.sender == administratorAddress
    BOSS_HP_DEFAULT = arg1
}

function setBossRoundNumber(uint256 arg1) {
    require msg.sender == administratorAddress
    bossRoundNumber = arg1
}

function setHalfTimeAtkBoss(uint256 arg1) {
    require msg.sender == administratorAddress
    HALF_TIME_ATK_BOSS = arg1
}

function removeContractMiniGame(address arg1) {
    require msg.sender == administratorAddress
    stor11[address(arg1)] = 0
}

function setContractsMiniGame(address arg1) {
    require msg.sender == administratorAddress
    require ext_code.size(arg1)
    call arg1.0x3281d576 with:
         gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0]
    stor11[address(arg1)] = 1
}

function setMiningWarInterface(address arg1) {
    require msg.sender == administratorAddress
    require ext_code.size(arg1)
    call arg1.0x688b5c2b with:
         gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require bool(ext_call.return_data[0]) == 1
    sub_c3f656f1Address = arg1
}

function setEngineerInterface(address arg1) {
    require msg.sender == administratorAddress
    require ext_code.size(arg1)
    call arg1.isEngineerContract() with:
         gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require bool(ext_call.return_data[0]) == 1
    sub_b4bd7d41Address = arg1
}

function withdrawPayments() {
    require payments[address(msg.sender)]
    require eth.balance(this.address) >= payments[address(msg.sender)]
    require payments[address(msg.sender)] <= totalPayments
    totalPayments -= payments[address(msg.sender)]
    payments[address(msg.sender)] = 0
    call msg.sender with:
       value payments[address(msg.sender)] wei
         gas 2300 * is_zero(value) wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function startGame() {
    require msg.sender == administratorAddress
    require not stor2
    stor2 = 1
    bossData[stor3].field_1536 = 1
    require bool(bossData[stor3].field_1536) == 1
    bossRoundNumber++
    require ext_code.size(sub_b4bd7d41Address)
    call sub_b4bd7d41Address.0x719ce73e with:
         gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if not ext_call.return_data[0]:
        require ext_code.size(sub_b4bd7d41Address)
        call sub_b4bd7d41Address.claimPrizePool(address arg1, uint256 arg2) with:
             gas gas_remaining wei
            args address(this.address), 0
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        bossData[stor3].field_0 = bossRoundNumber
        bossData[stor3].field_256 = BOSS_HP_DEFAULT * bossRoundNumber
        bossData[stor3].field_512 = BOSS_DEF_DEFFAULT
        bossData[stor3].field_768 = 0
    else:
        require ext_call.return_data[0]
        require 5 * ext_call.return_data[0] / ext_call.return_data[0] == 5
        require ext_code.size(sub_b4bd7d41Address)
        call sub_b4bd7d41Address.claimPrizePool(address arg1, uint256 arg2) with:
             gas gas_remaining wei
            args address(this.address), 5 * ext_call.return_data[0] / 100
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        bossData[stor3].field_0 = bossRoundNumber
        bossData[stor3].field_256 = BOSS_HP_DEFAULT * bossRoundNumber
        bossData[stor3].field_512 = BOSS_DEF_DEFFAULT
        bossData[stor3].field_768 = 5 * ext_call.return_data[0] / 100
    bossData[stor3].field_1024 = 0
    bossData[stor3].field_1280 = 0
    bossData[stor3].field_1280 = 0
    bossData[stor3].field_1536 = 0
}

function calculateShareETH(address arg1, uint256 arg2) {
    if players[address(arg1)].field_256 < players[address(arg1)].field_0:
        if bossData[arg2].field_1280:
            if not bossData[arg2].field_768:
                require bossData[arg2].field_1280
                require bossData[arg2].field_1280
                require 100 * bossData[arg2].field_1280 / bossData[arg2].field_1280 == 100
                require 100 * bossData[arg2].field_1280
                if bossData[arg2].field_1536:
                    return (0 / 100 * bossData[arg2].field_1280)
            else:
                require bossData[arg2].field_768
                require 95 * bossData[arg2].field_768 / bossData[arg2].field_768 == 95
                if not 95 * bossData[arg2].field_768:
                    require bossData[arg2].field_1280
                    require bossData[arg2].field_1280
                    require 100 * bossData[arg2].field_1280 / bossData[arg2].field_1280 == 100
                    require 100 * bossData[arg2].field_1280
                    if bossData[arg2].field_1536:
                        return (0 / 100 * bossData[arg2].field_1280)
                else:
                    require 95 * bossData[arg2].field_768
                    require 95 * bossData[arg2].field_768 * players[address(arg1)].field_1024 / 95 * bossData[arg2].field_768 == players[address(arg1)].field_1024
                    require bossData[arg2].field_1280
                    require bossData[arg2].field_1280
                    require 100 * bossData[arg2].field_1280 / bossData[arg2].field_1280 == 100
                    require 100 * bossData[arg2].field_1280
                    if bossData[arg2].field_1536:
                        return (95 * bossData[arg2].field_768 * players[address(arg1)].field_1024 / 100 * bossData[arg2].field_1280)
            ('iszero', ('field', 1536, ('stor', ('map', ('param', 'arg2'), ('name', 'bossData', 10)))))
    else:
        if not players[address(arg1)].field_0:
            if bossData[arg2].field_1280:
                if not bossData[arg2].field_768:
                    require bossData[arg2].field_1280
                    require bossData[arg2].field_1280
                    require 100 * bossData[arg2].field_1280 / bossData[arg2].field_1280 == 100
                    require 100 * bossData[arg2].field_1280
                    if bossData[arg2].field_1536:
                        return (0 / 100 * bossData[arg2].field_1280)
                else:
                    require bossData[arg2].field_768
                    require 95 * bossData[arg2].field_768 / bossData[arg2].field_768 == 95
                    if not 95 * bossData[arg2].field_768:
                        require bossData[arg2].field_1280
                        require bossData[arg2].field_1280
                        require 100 * bossData[arg2].field_1280 / bossData[arg2].field_1280 == 100
                        require 100 * bossData[arg2].field_1280
                        if bossData[arg2].field_1536:
                            return (0 / 100 * bossData[arg2].field_1280)
                    else:
                        require 95 * bossData[arg2].field_768
                        require 95 * bossData[arg2].field_768 * players[address(arg1)].field_1024 / 95 * bossData[arg2].field_768 == players[address(arg1)].field_1024
                        require bossData[arg2].field_1280
                        require bossData[arg2].field_1280
                        require 100 * bossData[arg2].field_1280 / bossData[arg2].field_1280 == 100
                        require 100 * bossData[arg2].field_1280
                        if bossData[arg2].field_1536:
                            return (95 * bossData[arg2].field_768 * players[address(arg1)].field_1024 / 100 * bossData[arg2].field_1280)
                ('iszero', ('field', 1536, ('stor', ('map', ('param', 'arg2'), ('name', 'bossData', 10)))))
    return 0
}

function getCurrentReward(address arg1) {
    require players[address(arg1)].field_512 + players[address(arg1)].field_768 >= players[address(arg1)].field_512
    if players[address(arg1)].field_256 < players[address(arg1)].field_0:
        if bossData[stor9[address(arg1)].field_0].field_1280:
            if not bossData[stor9[address(arg1)].field_0].field_768:
                require bossData[stor9[address(arg1)].field_0].field_1280
                require bossData[stor9[address(arg1)].field_0].field_1280
                require 100 * bossData[stor9[address(arg1)].field_0].field_1280 / bossData[stor9[address(arg1)].field_0].field_1280 == 100
                require 100 * bossData[stor9[address(arg1)].field_0].field_1280
                if bossData[stor9[address(arg1)].field_0].field_1536:
                    return (players[address(arg1)].field_512 + players[address(arg1)].field_768 + (0 / 100 * bossData[stor9[address(arg1)].field_0].field_1280))
            else:
                require bossData[stor9[address(arg1)].field_0].field_768
                require 95 * bossData[stor9[address(arg1)].field_0].field_768 / bossData[stor9[address(arg1)].field_0].field_768 == 95
                if not 95 * bossData[stor9[address(arg1)].field_0].field_768:
                    require bossData[stor9[address(arg1)].field_0].field_1280
                    require bossData[stor9[address(arg1)].field_0].field_1280
                    require 100 * bossData[stor9[address(arg1)].field_0].field_1280 / bossData[stor9[address(arg1)].field_0].field_1280 == 100
                    require 100 * bossData[stor9[address(arg1)].field_0].field_1280
                    if bossData[stor9[address(arg1)].field_0].field_1536:
                        return (players[address(arg1)].field_512 + players[address(arg1)].field_768 + (0 / 100 * bossData[stor9[address(arg1)].field_0].field_1280))
                else:
                    require 95 * bossData[stor9[address(arg1)].field_0].field_768
                    require 95 * bossData[stor9[address(arg1)].field_0].field_768 * players[address(arg1)].field_1024 / 95 * bossData[stor9[address(arg1)].field_0].field_768 == players[address(arg1)].field_1024
                    require bossData[stor9[address(arg1)].field_0].field_1280
                    require bossData[stor9[address(arg1)].field_0].field_1280
                    require 100 * bossData[stor9[address(arg1)].field_0].field_1280 / bossData[stor9[address(arg1)].field_0].field_1280 == 100
                    require 100 * bossData[stor9[address(arg1)].field_0].field_1280
                    if bossData[stor9[address(arg1)].field_0].field_1536:
                        return (players[address(arg1)].field_512 + players[address(arg1)].field_768 + (95 * bossData[stor9[address(arg1)].field_0].field_768 * players[address(arg1)].field_1024 / 100 * bossData[stor9[address(arg1)].field_0].field_1280))
            ('iszero', ('field', 1536, ('stor', ('map', ('field', 0, ('stor', ('map', ('mask_shl', 160, 0, 0, ('param', 'arg1')), ('name', 'stor9', 9)))), ('name', 'bossData', 10)))))
    else:
        if not players[address(arg1)].field_0:
            if bossData[stor9[address(arg1)].field_0].field_1280:
                if not bossData[stor9[address(arg1)].field_0].field_768:
                    require bossData[stor9[address(arg1)].field_0].field_1280
                    require bossData[stor9[address(arg1)].field_0].field_1280
                    require 100 * bossData[stor9[address(arg1)].field_0].field_1280 / bossData[stor9[address(arg1)].field_0].field_1280 == 100
                    require 100 * bossData[stor9[address(arg1)].field_0].field_1280
                    if bossData[stor9[address(arg1)].field_0].field_1536:
                        return (players[address(arg1)].field_512 + players[address(arg1)].field_768 + (0 / 100 * bossData[stor9[address(arg1)].field_0].field_1280))
                else:
                    require bossData[stor9[address(arg1)].field_0].field_768
                    require 95 * bossData[stor9[address(arg1)].field_0].field_768 / bossData[stor9[address(arg1)].field_0].field_768 == 95
                    if not 95 * bossData[stor9[address(arg1)].field_0].field_768:
                        require bossData[stor9[address(arg1)].field_0].field_1280
                        require bossData[stor9[address(arg1)].field_0].field_1280
                        require 100 * bossData[stor9[address(arg1)].field_0].field_1280 / bossData[stor9[address(arg1)].field_0].field_1280 == 100
                        require 100 * bossData[stor9[address(arg1)].field_0].field_1280
                        if bossData[stor9[address(arg1)].field_0].field_1536:
                            return (players[address(arg1)].field_512 + players[address(arg1)].field_768 + (0 / 100 * bossData[stor9[address(arg1)].field_0].field_1280))
                    else:
                        require 95 * bossData[stor9[address(arg1)].field_0].field_768
                        require 95 * bossData[stor9[address(arg1)].field_0].field_768 * players[address(arg1)].field_1024 / 95 * bossData[stor9[address(arg1)].field_0].field_768 == players[address(arg1)].field_1024
                        require bossData[stor9[address(arg1)].field_0].field_1280
                        require bossData[stor9[address(arg1)].field_0].field_1280
                        require 100 * bossData[stor9[address(arg1)].field_0].field_1280 / bossData[stor9[address(arg1)].field_0].field_1280 == 100
                        require 100 * bossData[stor9[address(arg1)].field_0].field_1280
                        if bossData[stor9[address(arg1)].field_0].field_1536:
                            return (players[address(arg1)].field_512 + players[address(arg1)].field_768 + (95 * bossData[stor9[address(arg1)].field_0].field_768 * players[address(arg1)].field_1024 / 100 * bossData[stor9[address(arg1)].field_0].field_1280))
                ('iszero', ('field', 1536, ('stor', ('map', ('field', 0, ('stor', ('map', ('mask_shl', 160, 0, 0, ('param', 'arg1')), ('name', 'stor9', 9)))), ('name', 'bossData', 10)))))
    return (players[address(arg1)].field_512 + players[address(arg1)].field_768)
}

function withdrawReward(address arg1) {
    if bool(bossData[stor9[address(arg1)].field_0].field_1536) == 1:
        if players[address(arg1)].field_256 < players[address(arg1)].field_0:
            if players[address(msg.sender)].field_256 < players[address(msg.sender)].field_0:
                if not bossData[stor9[address(arg1)].field_0].field_1280:
                    require players[address(arg1)].field_768 >= players[address(arg1)].field_768
                else:
                    if not bossData[stor9[address(arg1)].field_0].field_768:
                        require bossData[stor9[address(arg1)].field_0].field_1280
                        require bossData[stor9[address(arg1)].field_0].field_1280
                        require 100 * bossData[stor9[address(arg1)].field_0].field_1280 / bossData[stor9[address(arg1)].field_0].field_1280 == 100
                        require 100 * bossData[stor9[address(arg1)].field_0].field_1280
                        if not bossData[stor9[address(arg1)].field_0].field_1536:
                            require players[address(arg1)].field_768 >= players[address(arg1)].field_768
                        else:
                            require players[address(arg1)].field_768 + (0 / 100 * bossData[stor9[address(arg1)].field_0].field_1280) >= players[address(arg1)].field_768
                            players[address(arg1)].field_768 += 0 / 100 * bossData[stor9[address(arg1)].field_0].field_1280
                    else:
                        require bossData[stor9[address(arg1)].field_0].field_768
                        require 95 * bossData[stor9[address(arg1)].field_0].field_768 / bossData[stor9[address(arg1)].field_0].field_768 == 95
                        if not 95 * bossData[stor9[address(arg1)].field_0].field_768:
                            require bossData[stor9[address(arg1)].field_0].field_1280
                            require bossData[stor9[address(arg1)].field_0].field_1280
                            require 100 * bossData[stor9[address(arg1)].field_0].field_1280 / bossData[stor9[address(arg1)].field_0].field_1280 == 100
                            require 100 * bossData[stor9[address(arg1)].field_0].field_1280
                            if not bossData[stor9[address(arg1)].field_0].field_1536:
                                require players[address(arg1)].field_768 >= players[address(arg1)].field_768
                            else:
                                require players[address(arg1)].field_768 + (0 / 100 * bossData[stor9[address(arg1)].field_0].field_1280) >= players[address(arg1)].field_768
                                players[address(arg1)].field_768 += 0 / 100 * bossData[stor9[address(arg1)].field_0].field_1280
                        else:
                            require 95 * bossData[stor9[address(arg1)].field_0].field_768
                            require 95 * bossData[stor9[address(arg1)].field_0].field_768 * players[address(msg.sender)].field_1024 / 95 * bossData[stor9[address(arg1)].field_0].field_768 == players[address(msg.sender)].field_1024
                            require bossData[stor9[address(arg1)].field_0].field_1280
                            require bossData[stor9[address(arg1)].field_0].field_1280
                            require 100 * bossData[stor9[address(arg1)].field_0].field_1280 / bossData[stor9[address(arg1)].field_0].field_1280 == 100
                            require 100 * bossData[stor9[address(arg1)].field_0].field_1280
                            if not bossData[stor9[address(arg1)].field_0].field_1536:
                                require players[address(arg1)].field_768 >= players[address(arg1)].field_768
                            else:
                                require players[address(arg1)].field_768 + (95 * bossData[stor9[address(arg1)].field_0].field_768 * players[address(msg.sender)].field_1024 / 100 * bossData[stor9[address(arg1)].field_0].field_1280) >= players[address(arg1)].field_768
                                players[address(arg1)].field_768 += 95 * bossData[stor9[address(arg1)].field_0].field_768 * players[address(msg.sender)].field_1024 / 100 * bossData[stor9[address(arg1)].field_0].field_1280
            else:
                if players[address(msg.sender)].field_0:
                    require players[address(arg1)].field_768 >= players[address(arg1)].field_768
                else:
                    if not bossData[stor9[address(arg1)].field_0].field_1280:
                        require players[address(arg1)].field_768 >= players[address(arg1)].field_768
                    else:
                        if not bossData[stor9[address(arg1)].field_0].field_768:
                            require bossData[stor9[address(arg1)].field_0].field_1280
                            require bossData[stor9[address(arg1)].field_0].field_1280
                            require 100 * bossData[stor9[address(arg1)].field_0].field_1280 / bossData[stor9[address(arg1)].field_0].field_1280 == 100
                            require 100 * bossData[stor9[address(arg1)].field_0].field_1280
                            if not bossData[stor9[address(arg1)].field_0].field_1536:
                                require players[address(arg1)].field_768 >= players[address(arg1)].field_768
                            else:
                                require players[address(arg1)].field_768 + (0 / 100 * bossData[stor9[address(arg1)].field_0].field_1280) >= players[address(arg1)].field_768
                                players[address(arg1)].field_768 += 0 / 100 * bossData[stor9[address(arg1)].field_0].field_1280
                        else:
                            require bossData[stor9[address(arg1)].field_0].field_768
                            require 95 * bossData[stor9[address(arg1)].field_0].field_768 / bossData[stor9[address(arg1)].field_0].field_768 == 95
                            if not 95 * bossData[stor9[address(arg1)].field_0].field_768:
                                require bossData[stor9[address(arg1)].field_0].field_1280
                                require bossData[stor9[address(arg1)].field_0].field_1280
                                require 100 * bossData[stor9[address(arg1)].field_0].field_1280 / bossData[stor9[address(arg1)].field_0].field_1280 == 100
                                require 100 * bossData[stor9[address(arg1)].field_0].field_1280
                                if not bossData[stor9[address(arg1)].field_0].field_1536:
                                    require players[address(arg1)].field_768 >= players[address(arg1)].field_768
                                else:
                                    require players[address(arg1)].field_768 + (0 / 100 * bossData[stor9[address(arg1)].field_0].field_1280) >= players[address(arg1)].field_768
                                    players[address(arg1)].field_768 += 0 / 100 * bossData[stor9[address(arg1)].field_0].field_1280
                            else:
                                require 95 * bossData[stor9[address(arg1)].field_0].field_768
                                require 95 * bossData[stor9[address(arg1)].field_0].field_768 * players[address(msg.sender)].field_1024 / 95 * bossData[stor9[address(arg1)].field_0].field_768 == players[address(msg.sender)].field_1024
                                require bossData[stor9[address(arg1)].field_0].field_1280
                                require bossData[stor9[address(arg1)].field_0].field_1280
                                require 100 * bossData[stor9[address(arg1)].field_0].field_1280 / bossData[stor9[address(arg1)].field_0].field_1280 == 100
                                require 100 * bossData[stor9[address(arg1)].field_0].field_1280
                                if not bossData[stor9[address(arg1)].field_0].field_1536:
                                    require players[address(arg1)].field_768 >= players[address(arg1)].field_768
                                else:
                                    require players[address(arg1)].field_768 + (95 * bossData[stor9[address(arg1)].field_0].field_768 * players[address(msg.sender)].field_1024 / 100 * bossData[stor9[address(arg1)].field_0].field_1280) >= players[address(arg1)].field_768
                                    players[address(arg1)].field_768 += 95 * bossData[stor9[address(arg1)].field_0].field_768 * players[address(msg.sender)].field_1024 / 100 * bossData[stor9[address(arg1)].field_0].field_1280
            players[address(arg1)].field_256 = players[address(arg1)].field_0
    require players[address(arg1)].field_768 + players[address(arg1)].field_512 >= players[address(arg1)].field_768
    if eth.balance(this.address) >= players[address(arg1)].field_768 + players[address(arg1)].field_512:
        if players[address(arg1)].field_768 + players[address(arg1)].field_512 > 0:
            call arg1 with:
               value players[address(arg1)].field_768 + players[address(arg1)].field_512 wei
                 gas 2300 * is_zero(value) wei
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            players[address(arg1)].field_512 = 0
            players[address(arg1)].field_768 = 0
}



}

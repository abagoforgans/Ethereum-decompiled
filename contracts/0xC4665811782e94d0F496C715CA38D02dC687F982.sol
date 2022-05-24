contract main {




// =====================  Runtime code  =====================


#
#  - addGame(address arg1, string arg2)
#
const rankNumbers_ = 10

const roundBlockCount_ = 5760

const balances = eth.balance(this.address)


address stor0;
address stor1;
mapping of struct stor2;
uint256 nameFee;
mapping of address games_;
mapping of uint256 gameNames_;
mapping of uint256 gameIDs_;
uint256 gID_;
uint256 pID_;
mapping of uint32 pIDxAddr_;
mapping of uint256 pIDxName_;
mapping of struct myReward;
mapping of uint8 stor12;
mapping of uint256 plyrNameList_;
mapping of uint256 levelValue_;
array of uint256 superPlayers_;
array of uint256 rankPlayers_;
array of uint256 rankCost_;
uint256 referralsVault_;
uint256 lastRefrralsVault_;
uint256 startBlockNumber_;
uint32 roundNumber_;

function referralsVault_() {
    return referralsVault_
}

function pIDxAddr_(address arg1) {
    return uint256(pIDxAddr_[arg1])
}

function superPlayers_(uint256 arg1) {
    require arg1 < superPlayers_.length
    return superPlayers_[arg1]
}

function registrationFee_() {
    return nameFee
}

function getNameFee() {
    return nameFee
}

function plyrNames_(uint256 arg1, bytes32 arg2) {
    return bool(stor12[arg1][arg2])
}

function gameNames_(address arg1) {
    return gameNames_[arg1]
}

function rankCost_(uint256 arg1) {
    require arg1 < rankCost_.length
    return rankCost_[arg1]
}

function levelValue_(uint8 arg1) {
    return levelValue_[arg1]
}

function pIDxName_(bytes32 arg1) {
    return pIDxName_[arg1]
}

function myReward() {
    return myReward[uint256(stor9[msg.sender])].field_1024
}

function pID_() {
    return pID_
}

function getPlayerAddr(uint256 arg1) {
    return myReward[arg1].field_0
}

function rankPlayers_(uint256 arg1) {
    require arg1 < rankPlayers_.length
    return rankPlayers_[arg1]
}

function getPlayerName(uint256 arg1) {
    return myReward[arg1].field_256
}

function lastRefrralsVault_() {
    return lastRefrralsVault_
}

function startBlockNumber_() {
    return startBlockNumber_
}

function plyrNameList_(uint256 arg1, uint256 arg2) {
    return plyrNameList_[arg1][arg2]
}

function gID_() {
    return gID_
}

function getPlayerLevel(uint256 arg1) {
    return myReward[arg1].field_1568
}

function games_(uint256 arg1) {
    return games_[arg1]
}

function gameIDs_(address arg1) {
    return gameIDs_[arg1]
}

function plyr_(uint256 arg1) {
    return myReward[arg1].field_0, 
           myReward[arg1].field_256,
           myReward[arg1].field_512,
           myReward[arg1].field_768,
           myReward[arg1].field_1024,
           myReward[arg1].field_1280,
           myReward[arg1].field_1536,
           myReward[arg1].field_1568
}

function getPlayerLAff(uint256 arg1) {
    return myReward[arg1].field_512
}

function roundNumber_() {
    return roundNumber_
}

function _fallback() payable {
    revert
}

function setPlayerAffID(uint256 arg1, uint256 arg2) {
    require gameIDs_[msg.sender]
    myReward[arg1].field_512 = arg2
    emit eveSetAffID(arg1, myReward[arg1].field_0, arg2, myReward[arg2].field_0);
}

function deposit() payable {
    require msg.sender
    if msg.value <= 0:
        return 0
    referralsVault_ += msg.value
    emit eveDeposit(msg.sender, msg.value, eth.balance(this.address));
    return 1
}

function getPlayerID(address arg1) {
    require gameIDs_[msg.sender]
    if not uint256(pIDxAddr_[address(arg1)]):
        pID_++
        uint256(pIDxAddr_[address(arg1)]) = pID_ + 1
        myReward[stor8 + 1].field_0 = arg1
    return uint256(pIDxAddr_[address(arg1)])
}

function checkData(bytes32 arg1) {
    if 0xa32c09c8962aec444abde1991469ed0a9ccaf7 != msg.sender:
        if 0xabbff93b10ece374b14abb70c4e588ba1f799f != msg.sender:
            revert with 0, 'only dev'
    return stor2[arg1][this.address].field_0, stor2[arg1][this.address].field_256
}

function withdraw() {
    require myReward[uint256(stor9[msg.sender])].field_1024 > 0
    if ext_code.size(msg.sender):
        revert with 0, 'sorry humans only'
    myReward[uint256(stor9[msg.sender])].field_1024 = 0
    call msg.sender with:
       value myReward[uint256(stor9[msg.sender])].field_1024 wei
         gas 2300 * is_zero(value) wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    emit eveWithdraw(uint256(pIDxAddr_[address(msg.sender)]), msg.sender, myReward[uint256(stor9[msg.sender])].field_1024, eth.balance(this.address));
}

function deleteAnyProposal(bytes32 arg1) {
    if 0xa32c09c8962aec444abde1991469ed0a9ccaf7 != msg.sender:
        if 0xabbff93b10ece374b14abb70c4e588ba1f799f != msg.sender:
            revert with 0, 'only dev'
    idx = 0
    s = 0
    while idx < stor2[arg1][this.address].field_256:
        stor2[arg1][this.address][2][stor2[arg1][this.address][3][idx].field_0].field_0 = 0
        stor2[arg1][this.address][3][idx].field_0 = 0
        mem[0] = sha3(arg1, this.address)
        mem[32] = 2
        idx = idx + 1
        s = stor2[arg1][this.address][3][idx].field_0
        continue 
    stor2[arg1][this.address].field_0 = 0
    stor2[arg1][this.address].field_256 = 0
}

function checkSignersByAddress(bytes32 arg1, uint256 arg2, uint256 arg3, uint256 arg4) {
    if 0xa32c09c8962aec444abde1991469ed0a9ccaf7 != msg.sender:
        if 0xabbff93b10ece374b14abb70c4e588ba1f799f != msg.sender:
            revert with 0, 'only dev'
    if arg2 <= 0:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'MSFun checkSigner failed - 0 not allowed'
    if arg3 <= 0:
        revert with 0, 'MSFun checkSigner failed - 0 not allowed'
    if arg4 <= 0:
        revert with 0, 'MSFun checkSigner failed - 0 not allowed'
    return stor2[arg1][this.address][3][arg2 - 1].field_0, 
           stor2[arg1][this.address][3][arg3 - 1].field_0,
           stor2[arg1][this.address][3][arg4 - 1].field_0
}

function setRegistrationFee(uint256 arg1) {
    if 0xa32c09c8962aec444abde1991469ed0a9ccaf7 != msg.sender:
        if 0xabbff93b10ece374b14abb70c4e588ba1f799f != msg.sender:
            revert with 0, 'only dev'
    idx = 0
    s = 0
    while idx < stor2['setRegistrationFee'][this.address].field_256:
        stor2['setRegistrationFee'][this.address][2][stor2['setRegistrationFee'][this.address][3][idx].field_0].field_0 = 0
        stor2['setRegistrationFee'][this.address][3][idx].field_0 = 0
        mem[0] = sha3('setRegistrationFee', this.address)
        mem[32] = 2
        idx = idx + 1
        s = stor2['setRegistrationFee'][this.address][3][idx].field_0
        continue 
    stor2['setRegistrationFee'][this.address].field_0 = 0
    stor2['setRegistrationFee'][this.address].field_256 = 0
    nameFee = arg1
}

function addMeToGame(uint256 arg1) {
    if ext_code.size(msg.sender):
        revert with 0, 'sorry humans only'
    if arg1 > gID_:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'silly player, that game doesn't exist yet'
    if not uint256(pIDxAddr_[msg.sender]):
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'hey there buddy, you dont even have an account'
    require ext_code.size(games_[arg1])
    call games_[arg1].receivePlayerInfo(uint256 arg1, address arg2, bytes32 arg3, uint256 arg4, uint8 arg5) with:
         gas gas_remaining wei
        args 0, uint32(pIDxAddr_[msg.sender]), msg.sender, myReward[uint256(stor9[msg.sender])].field_256, myReward[uint256(stor9[msg.sender])].field_512, 0
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    if myReward[uint256(stor9[msg.sender])].field_768 > 1:
        idx = 1
        while idx <= myReward[uint256(stor9[msg.sender])].field_768:
            mem[0] = idx
            mem[32] = sha3(uint256(pIDxAddr_[msg.sender]), 13)
            mem[96] = 0x8f7140ea00000000000000000000000000000000000000000000000000000000
            mem[100] = uint256(pIDxAddr_[msg.sender])
            mem[132] = plyrNameList_[uint256(stor9[msg.sender])][idx]
            require ext_code.size(games_[arg1])
            call games_[arg1].receivePlayerNameList(uint256 arg1, bytes32 arg2) with:
                 gas gas_remaining wei
                args uint256(pIDxAddr_[msg.sender]), plyrNameList_[uint256(stor9[msg.sender])][idx]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            idx = idx + 1
            continue 
}

function addMeToAllGames() {
    if ext_code.size(msg.sender):
        revert with 0, 'sorry humans only'
    if not uint256(pIDxAddr_[msg.sender]):
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'hey there buddy, you dont even have an account'
    s = 0
    idx = 1
    while idx <= gID_:
        mem[0] = idx
        mem[32] = 4
        mem[96] = 0x2341a1af00000000000000000000000000000000000000000000000000000000
        mem[100] = uint256(pIDxAddr_[msg.sender])
        mem[132] = msg.sender
        mem[164] = myReward[uint256(stor9[msg.sender])].field_256
        mem[196] = myReward[uint256(stor9[msg.sender])].field_512
        mem[228] = 0
        require ext_code.size(games_[idx])
        call games_[idx].receivePlayerInfo(uint256 arg1, address arg2, bytes32 arg3, uint256 arg4, uint8 arg5) with:
             gas gas_remaining wei
            args uint256(pIDxAddr_[msg.sender]), msg.sender, myReward[uint256(stor9[msg.sender])].field_256, myReward[uint256(stor9[msg.sender])].field_512, 0
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        if myReward[uint256(stor9[msg.sender])].field_768 <= 1:
            s = s
            idx = idx + 1
            continue 
        s = 1
        while s <= myReward[uint256(stor9[msg.sender])].field_768:
            mem[0] = s
            mem[32] = sha3(uint256(pIDxAddr_[msg.sender]), 13)
            mem[96] = 0x8f7140ea00000000000000000000000000000000000000000000000000000000
            mem[100] = uint256(pIDxAddr_[msg.sender])
            mem[132] = plyrNameList_[uint256(stor9[msg.sender])][s]
            require ext_code.size(games_[idx])
            call games_[idx].receivePlayerNameList(uint256 arg1, bytes32 arg2) with:
                 gas gas_remaining wei
                args uint256(pIDxAddr_[msg.sender]), plyrNameList_[uint256(stor9[msg.sender])][s]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            s = s + 1
            continue 
        s = myReward[uint256(stor9[msg.sender])].field_768 + 1
        idx = idx + 1
        continue 
}

function updateRankBoard(uint256 arg1, uint256 arg2) {
    require gameIDs_[msg.sender]
    require msg.sender
    if myReward[arg1].field_512 > 0:
        if arg2 > 0:
            if 3 == myReward[myReward[arg1].field_512].field_1568:
                if not arg2:
                    if roundNumber_ != myReward[myReward[arg1].field_512].field_1536:
                        myReward[myReward[arg1].field_512].field_1280 = 0
                        myReward[myReward[arg1].field_512].field_1536 = roundNumber_
                else:
                    if 5 * arg2 / arg2 != 5:
                        revert with 0, 'SafeMath mul failed'
                    if roundNumber_ == myReward[myReward[arg1].field_512].field_1536:
                        myReward[myReward[arg1].field_512].field_1280 += 5 * arg2 / 100
                    else:
                        myReward[myReward[arg1].field_512].field_1280 = 5 * arg2 / 100
                        myReward[myReward[arg1].field_512].field_1536 = roundNumber_
                idx = 0
                while uint8(idx) < 10:
                    require uint8(idx) < rankPlayers_.length
                    mem[0] = 16
                    if myReward[arg1].field_512 != rankPlayers_[uint8(idx)]:
                        idx = idx + 1
                        continue 
                    require uint8(idx) < rankCost_.length
                    rankCost_[uint8(idx)] = myReward[myReward[arg1].field_512].field_1280
                    emit eveUpdate(myReward[arg1].field_512, roundNumber_, myReward[myReward[arg1].field_512].field_1280, arg2);
                mem[0] = myReward[arg1].field_512
                idx = 0
                s = 10
                t = myReward[mem[0]].field_1280
                while uint8(idx) < 10:
                    require uint8(idx) < rankCost_.length
                    mem[0] = 17
                    if rankCost_[uint8(idx)] >= t:
                        idx = idx + 1
                        s = s
                        t = t
                        continue 
                    require uint8(idx) < rankCost_.length
                    mem[0] = 17
                    idx = idx + 1
                    s = idx
                    t = rankCost_[uint8(idx)]
                    continue 
                if uint8(s) != 10:
                    require uint8(s) < rankPlayers_.length
                    rankPlayers_[uint8(s)] = myReward[arg1].field_512
                    require uint8(s) < rankCost_.length
                    rankCost_[uint8(s)] = myReward[myReward[arg1].field_512].field_1280
                emit eveUpdate(myReward[arg1].field_512, roundNumber_, myReward[myReward[arg1].field_512].field_1280, arg2);
}

function checkIfNameValid(string arg1) {
    mem[64] = ceil32(arg1.length) + 128
    mem[96] = arg1.length
    mem[128 len arg1.length] = arg1[all]
    if arg1.length > 32:
        revert with 0, 'string must be between 1 and 32 characters'
    if arg1.length <= 0:
        revert with 0, 'string must be between 1 and 32 characters'
    require 0 < arg1.length
    if 0x2000000000000000000000000000000000000000000000000000000000000000 == Mask(8, 248, mem[128]):
        revert with 0, 'string cannot start or end with space'
    require arg1.length - 1 < arg1.length
    if 0x2000000000000000000000000000000000000000000000000000000000000000 == Mask(8, 248, mem[arg1.length + 127]):
        revert with 0, 'string cannot start or end with space'
    require 0 < arg1.length
    if 0x3000000000000000000000000000000000000000000000000000000000000000 == Mask(8, 248, mem[128]):
        require 1 < arg1.length
        if 0x7800000000000000000000000000000000000000000000000000000000000000 == Mask(8, 248, mem[129]):
            revert with 0, 'string cannot start with 0x'
        require 1 < arg1.length
        if 0x5800000000000000000000000000000000000000000000000000000000000000 == Mask(8, 248, mem[129]):
            revert with 0, 'string cannot start with 0X'
    idx = 0
    s = 0
    while idx < arg1.length:
        require idx < arg1.length
        require idx < arg1.length
        require idx < arg1.length
        if Mask(8, 248, mem[idx + 128]) <= '@':
            if Mask(8, 248, mem[idx + 128]) != 0x2000000000000000000000000000000000000000000000000000000000000000:
                require idx < arg1.length
                if Mask(8, 248, mem[idx + 128]) <= '`':
                    if Mask(8, 248, mem[idx + 128]) <= '/':
                        revert with 0, 'string contains invalid characters'
                    require idx < arg1.length
                    if Mask(8, 248, mem[idx + 128]) >= ':':
                        revert with 0, 'string contains invalid characters'
                else:
                    if Mask(8, 248, mem[idx + 128]) >= '{':
                        require idx < arg1.length
                        if Mask(8, 248, mem[idx + 128]) <= '/':
                            revert with 0, 'string contains invalid characters'
                        require idx < arg1.length
                        if Mask(8, 248, mem[idx + 128]) >= ':':
                            revert with 0, 'string contains invalid characters'
            if 0x2000000000000000000000000000000000000000000000000000000000000000 == Mask(8, 248, mem[idx + 128]):
                require idx + 1 < arg1.length
                if 0x2000000000000000000000000000000000000000000000000000000000000000 == Mask(8, 248, mem[idx + 129]):
                    revert with 0, 'string cannot contain consecutive spaces'
            if s:
                idx = idx + 1
                s = s
                continue 
            require idx < arg1.length
            if Mask(8, 248, mem[idx + 128]) >= '0':
                require idx < arg1.length
                if Mask(8, 248, mem[idx + 128]) <= '9':
                    idx = idx + 1
                    s = s
                    continue 
        else:
            require idx < arg1.length
            if Mask(8, 248, mem[idx + 128]) < '[':
                mem[idx + 128 len 8] = Mask(8, -(('mask_shl', 8, 0, 245, ('add', 32, ('mem', ('range', ('add', 128, ('var', 0)), 1)))), 0) + 256, 0) << (('mask_shl', 8, 0, 245, ('add', 32, ('mem', ('range', ('add', 128, ('var', 0)), 1)))), 0) - 256
                if s:
                    idx = idx + 1
                    s = s
                    continue 
            else:
                if Mask(8, 248, mem[idx + 128]) != 0x2000000000000000000000000000000000000000000000000000000000000000:
                    require idx < arg1.length
                    if Mask(8, 248, mem[idx + 128]) <= '`':
                        if Mask(8, 248, mem[idx + 128]) <= '/':
                            revert with 0, 'string contains invalid characters'
                        require idx < arg1.length
                        if Mask(8, 248, mem[idx + 128]) >= ':':
                            revert with 0, 'string contains invalid characters'
                    else:
                        if Mask(8, 248, mem[idx + 128]) >= '{':
                            require idx < arg1.length
                            if Mask(8, 248, mem[idx + 128]) <= '/':
                                revert with 0, 'string contains invalid characters'
                            require idx < arg1.length
                            if Mask(8, 248, mem[idx + 128]) >= ':':
                                revert with 0, 'string contains invalid characters'
                if 0x2000000000000000000000000000000000000000000000000000000000000000 == Mask(8, 248, mem[idx + 128]):
                    require idx + 1 < arg1.length
                    if 0x2000000000000000000000000000000000000000000000000000000000000000 == Mask(8, 248, mem[idx + 129]):
                        revert with 0, 'string cannot contain consecutive spaces'
                if s:
                    idx = idx + 1
                    s = s
                    continue 
                require idx < arg1.length
                if Mask(8, 248, mem[idx + 128]) >= '0':
                    require idx < arg1.length
                    if Mask(8, 248, mem[idx + 128]) <= '9':
                        idx = idx + 1
                        s = s
                        continue 
        idx = idx + 1
        s = 1
        continue 
    if bool(s) != 1:
        revert with 0, 'string cannot be only numbers'
    if pIDxName_[mem[128]]:
        return 0
    return 1
}

function useMyOldName(string arg1) {
    mem[64] = ceil32(arg1.length) + 128
    mem[96] = arg1.length
    mem[128 len arg1.length] = arg1[all]
    if ext_code.size(msg.sender):
        revert with 0, 'sorry humans only'
    if arg1.length > 32:
        revert with 0, 'string must be between 1 and 32 characters'
    if arg1.length <= 0:
        revert with 0, 'string must be between 1 and 32 characters'
    require 0 < arg1.length
    if 0x2000000000000000000000000000000000000000000000000000000000000000 == Mask(8, 248, mem[128]):
        revert with 0, 'string cannot start or end with space'
    require arg1.length - 1 < arg1.length
    if 0x2000000000000000000000000000000000000000000000000000000000000000 == Mask(8, 248, mem[arg1.length + 127]):
        revert with 0, 'string cannot start or end with space'
    require 0 < arg1.length
    if 0x3000000000000000000000000000000000000000000000000000000000000000 == Mask(8, 248, mem[128]):
        require 1 < arg1.length
        if 0x7800000000000000000000000000000000000000000000000000000000000000 == Mask(8, 248, mem[129]):
            revert with 0, 'string cannot start with 0x'
        require 1 < arg1.length
        if 0x5800000000000000000000000000000000000000000000000000000000000000 == Mask(8, 248, mem[129]):
            revert with 0, 'string cannot start with 0X'
    idx = 0
    s = 0
    while idx < arg1.length:
        require idx < arg1.length
        require idx < arg1.length
        require idx < arg1.length
        if Mask(8, 248, mem[idx + 128]) <= '@':
            if Mask(8, 248, mem[idx + 128]) != 0x2000000000000000000000000000000000000000000000000000000000000000:
                require idx < arg1.length
                if Mask(8, 248, mem[idx + 128]) <= '`':
                    if Mask(8, 248, mem[idx + 128]) <= '/':
                        revert with 0, 'string contains invalid characters'
                    require idx < arg1.length
                    if Mask(8, 248, mem[idx + 128]) >= ':':
                        revert with 0, 'string contains invalid characters'
                else:
                    if Mask(8, 248, mem[idx + 128]) >= '{':
                        require idx < arg1.length
                        if Mask(8, 248, mem[idx + 128]) <= '/':
                            revert with 0, 'string contains invalid characters'
                        require idx < arg1.length
                        if Mask(8, 248, mem[idx + 128]) >= ':':
                            revert with 0, 'string contains invalid characters'
            if 0x2000000000000000000000000000000000000000000000000000000000000000 == Mask(8, 248, mem[idx + 128]):
                require idx + 1 < arg1.length
                if 0x2000000000000000000000000000000000000000000000000000000000000000 == Mask(8, 248, mem[idx + 129]):
                    revert with 0, 'string cannot contain consecutive spaces'
            if s:
                idx = idx + 1
                s = s
                continue 
            require idx < arg1.length
            if Mask(8, 248, mem[idx + 128]) >= '0':
                require idx < arg1.length
                if Mask(8, 248, mem[idx + 128]) <= '9':
                    idx = idx + 1
                    s = s
                    continue 
        else:
            require idx < arg1.length
            if Mask(8, 248, mem[idx + 128]) < '[':
                mem[idx + 128 len 8] = Mask(8, -(('mask_shl', 8, 0, 245, ('add', 32, ('mem', ('range', ('add', 128, ('var', 0)), 1)))), 0) + 256, 0) << (('mask_shl', 8, 0, 245, ('add', 32, ('mem', ('range', ('add', 128, ('var', 0)), 1)))), 0) - 256
                if s:
                    idx = idx + 1
                    s = s
                    continue 
            else:
                if Mask(8, 248, mem[idx + 128]) != 0x2000000000000000000000000000000000000000000000000000000000000000:
                    require idx < arg1.length
                    if Mask(8, 248, mem[idx + 128]) <= '`':
                        if Mask(8, 248, mem[idx + 128]) <= '/':
                            revert with 0, 'string contains invalid characters'
                        require idx < arg1.length
                        if Mask(8, 248, mem[idx + 128]) >= ':':
                            revert with 0, 'string contains invalid characters'
                    else:
                        if Mask(8, 248, mem[idx + 128]) >= '{':
                            require idx < arg1.length
                            if Mask(8, 248, mem[idx + 128]) <= '/':
                                revert with 0, 'string contains invalid characters'
                            require idx < arg1.length
                            if Mask(8, 248, mem[idx + 128]) >= ':':
                                revert with 0, 'string contains invalid characters'
                if 0x2000000000000000000000000000000000000000000000000000000000000000 == Mask(8, 248, mem[idx + 128]):
                    require idx + 1 < arg1.length
                    if 0x2000000000000000000000000000000000000000000000000000000000000000 == Mask(8, 248, mem[idx + 129]):
                        revert with 0, 'string cannot contain consecutive spaces'
                if s:
                    idx = idx + 1
                    s = s
                    continue 
                require idx < arg1.length
                if Mask(8, 248, mem[idx + 128]) >= '0':
                    require idx < arg1.length
                    if Mask(8, 248, mem[idx + 128]) <= '9':
                        idx = idx + 1
                        s = s
                        continue 
        idx = idx + 1
        s = 1
        continue 
    if bool(s) != 1:
        revert with 0, 'string cannot be only numbers'
    if bool(stor12[uint256(stor9[msg.sender])][mem[128]]) != 1:
        revert with 0, 'umm... thats not a name you own'
    myReward[uint256(stor9[msg.sender])].field_256 = mem[128]
}

function registerNameXnameFromDapp(address arg1, bytes32 arg2, bytes32 arg3, bool arg4, uint8 arg5) payable {
    require gameIDs_[msg.sender]
    if arg5 < 0:
        revert with 0, 'invalid level'
    if arg5 > 3:
        revert with 0, 'invalid level'
    if msg.value < levelValue_[arg5 << 248]:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'sorry request price less than affiliate level'
    if uint256(pIDxAddr_[address(arg1)]):
        if not arg3:
            if uint256(pIDxAddr_[address(arg1)]) != pIDxName_[arg2]:
                if pIDxName_[arg2]:
                    if bool(stor12[uint256(stor9[address(arg1)])][arg2]) != 1:
                        revert with 0, 'sorry that names already taken'
            else:
                if not uint256(pIDxAddr_[address(arg1)]):
                    if pIDxName_[arg2]:
                        if bool(stor12[uint256(stor9[address(arg1)])][arg2]) != 1:
                            revert with 0, 'sorry that names already taken'
                else:
                    if arg5 >= myReward[uint256(stor9[address(arg1)])].field_1568:
                        if bool(stor12[uint256(stor9[address(arg1)])][arg2]) != 1:
                            revert with 0, 'sorry that names already taken'
            myReward[uint256(stor9[address(arg1)])].field_256 = arg2
            myReward[uint256(stor9[address(arg1)])].field_1568 = arg5
            pIDxName_[arg2] = uint256(pIDxAddr_[address(arg1)])
            if not stor12[uint256(stor9[address(arg1)])][arg2]:
                stor12[uint256(stor9[address(arg1)])][arg2] = 1
                myReward[uint256(stor9[address(arg1)])].field_768++
                plyrNameList_[uint256(stor9[address(arg1)])][stor11[uint256(stor9[address(arg1)])].field_768 + 1] = arg2
            call stor0 with:
               value msg.value / 2 wei
                 gas 2300 * is_zero(value) wei
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            call stor1 with:
               value msg.value / 2 wei
                 gas 2300 * is_zero(value) wei
            if arg4 == 1:
                idx = 1
                while idx <= gID_:
                    mem[0] = idx
                    mem[32] = 4
                    mem[96] = 0x2341a1af00000000000000000000000000000000000000000000000000000000
                    mem[100] = uint256(pIDxAddr_[address(arg1)])
                    mem[132] = arg1
                    mem[164] = arg2
                    mem[196] = 0
                    mem[228] = arg5
                    require ext_code.size(games_[idx])
                    call games_[idx].receivePlayerInfo(uint256 arg1, address arg2, bytes32 arg3, uint256 arg4, uint8 arg5) with:
                         gas gas_remaining wei
                        args uint256(pIDxAddr_[address(arg1)]), address(arg1), arg2, 0, arg5
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    idx = idx + 1
                    continue 
            emit onNewName(0, 0, myReward[0].field_0, myReward[0].field_256, msg.value, block.timestamp, uint256(pIDxAddr_[address(arg1)]), arg1, arg2);
            return 0
        if arg2 == arg3:
            if uint256(pIDxAddr_[address(arg1)]) != pIDxName_[arg2]:
                if pIDxName_[arg2]:
                    if bool(stor12[uint256(stor9[address(arg1)])][arg2]) != 1:
                        revert with 0, 'sorry that names already taken'
            else:
                if not uint256(pIDxAddr_[address(arg1)]):
                    if pIDxName_[arg2]:
                        if bool(stor12[uint256(stor9[address(arg1)])][arg2]) != 1:
                            revert with 0, 'sorry that names already taken'
                else:
                    if arg5 >= myReward[uint256(stor9[address(arg1)])].field_1568:
                        if bool(stor12[uint256(stor9[address(arg1)])][arg2]) != 1:
                            revert with 0, 'sorry that names already taken'
            myReward[uint256(stor9[address(arg1)])].field_256 = arg2
            myReward[uint256(stor9[address(arg1)])].field_1568 = arg5
            pIDxName_[arg2] = uint256(pIDxAddr_[address(arg1)])
            if not stor12[uint256(stor9[address(arg1)])][arg2]:
                stor12[uint256(stor9[address(arg1)])][arg2] = 1
                myReward[uint256(stor9[address(arg1)])].field_768++
                plyrNameList_[uint256(stor9[address(arg1)])][stor11[uint256(stor9[address(arg1)])].field_768 + 1] = arg2
            call stor0 with:
               value msg.value / 2 wei
                 gas 2300 * is_zero(value) wei
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            call stor1 with:
               value msg.value / 2 wei
                 gas 2300 * is_zero(value) wei
            if arg4 == 1:
                idx = 1
                while idx <= gID_:
                    mem[0] = idx
                    mem[32] = 4
                    mem[96] = 0x2341a1af00000000000000000000000000000000000000000000000000000000
                    mem[100] = uint256(pIDxAddr_[address(arg1)])
                    mem[132] = arg1
                    mem[164] = arg2
                    mem[196] = 0
                    mem[228] = arg5
                    require ext_code.size(games_[idx])
                    call games_[idx].receivePlayerInfo(uint256 arg1, address arg2, bytes32 arg3, uint256 arg4, uint8 arg5) with:
                         gas gas_remaining wei
                        args uint256(pIDxAddr_[address(arg1)]), address(arg1), arg2, 0, arg5
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    idx = idx + 1
                    continue 
            emit onNewName(0, 0, myReward[0].field_0, myReward[0].field_256, msg.value, block.timestamp, uint256(pIDxAddr_[address(arg1)]), arg1, arg2);
            return 0
        if pIDxName_[arg3] != myReward[uint256(stor9[address(arg1)])].field_512:
            if not myReward[uint256(stor9[address(arg1)])].field_512:
                myReward[uint256(stor9[address(arg1)])].field_512 = pIDxName_[arg3]
        if uint256(pIDxAddr_[address(arg1)]) != pIDxName_[arg2]:
            if pIDxName_[arg2]:
                if bool(stor12[uint256(stor9[address(arg1)])][arg2]) != 1:
                    revert with 0, 'sorry that names already taken'
        else:
            if not uint256(pIDxAddr_[address(arg1)]):
                if pIDxName_[arg2]:
                    if bool(stor12[uint256(stor9[address(arg1)])][arg2]) != 1:
                        revert with 0, 'sorry that names already taken'
            else:
                if arg5 >= myReward[uint256(stor9[address(arg1)])].field_1568:
                    if bool(stor12[uint256(stor9[address(arg1)])][arg2]) != 1:
                        revert with 0, 'sorry that names already taken'
        myReward[uint256(stor9[address(arg1)])].field_256 = arg2
        myReward[uint256(stor9[address(arg1)])].field_1568 = arg5
        pIDxName_[arg2] = uint256(pIDxAddr_[address(arg1)])
        if not stor12[uint256(stor9[address(arg1)])][arg2]:
            stor12[uint256(stor9[address(arg1)])][arg2] = 1
            myReward[uint256(stor9[address(arg1)])].field_768++
            plyrNameList_[uint256(stor9[address(arg1)])][stor11[uint256(stor9[address(arg1)])].field_768 + 1] = arg2
        call stor0 with:
           value msg.value / 2 wei
             gas 2300 * is_zero(value) wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        call stor1 with:
           value msg.value / 2 wei
             gas 2300 * is_zero(value) wei
        if arg4 == 1:
            idx = 1
            while idx <= gID_:
                mem[0] = idx
                mem[32] = 4
                mem[96] = 0x2341a1af00000000000000000000000000000000000000000000000000000000
                mem[100] = uint256(pIDxAddr_[address(arg1)])
                mem[132] = arg1
                mem[164] = arg2
                mem[196] = pIDxName_[arg3]
                mem[228] = arg5
                require ext_code.size(games_[idx])
                call games_[idx].receivePlayerInfo(uint256 arg1, address arg2, bytes32 arg3, uint256 arg4, uint8 arg5) with:
                     gas gas_remaining wei
                    args uint256(pIDxAddr_[address(arg1)]), address(arg1), arg2, pIDxName_[arg3], arg5
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                idx = idx + 1
                continue 
        emit onNewName(0, pIDxName_[arg3], myReward[stor10[arg3]].field_0, myReward[stor10[arg3]].field_256, msg.value, block.timestamp, uint256(pIDxAddr_[address(arg1)]), arg1, arg2);
        return 0, pIDxName_[arg3]
    pID_++
    uint256(pIDxAddr_[address(arg1)]) = pID_ + 1
    myReward[stor8 + 1].field_0 = arg1
    if not arg3:
        if uint256(pIDxAddr_[address(arg1)]) != pIDxName_[arg2]:
            if pIDxName_[arg2]:
                if bool(stor12[uint256(stor9[address(arg1)])][arg2]) != 1:
                    revert with 0, 'sorry that names already taken'
        else:
            if not uint256(pIDxAddr_[address(arg1)]):
                if pIDxName_[arg2]:
                    if bool(stor12[uint256(stor9[address(arg1)])][arg2]) != 1:
                        revert with 0, 'sorry that names already taken'
            else:
                if arg5 >= myReward[uint256(stor9[address(arg1)])].field_1568:
                    if bool(stor12[uint256(stor9[address(arg1)])][arg2]) != 1:
                        revert with 0, 'sorry that names already taken'
        myReward[uint256(stor9[address(arg1)])].field_256 = arg2
        myReward[uint256(stor9[address(arg1)])].field_1568 = arg5
        pIDxName_[arg2] = uint256(pIDxAddr_[address(arg1)])
        if not stor12[uint256(stor9[address(arg1)])][arg2]:
            stor12[uint256(stor9[address(arg1)])][arg2] = 1
            myReward[uint256(stor9[address(arg1)])].field_768++
            plyrNameList_[uint256(stor9[address(arg1)])][stor11[uint256(stor9[address(arg1)])].field_768 + 1] = arg2
        call stor0 with:
           value msg.value / 2 wei
             gas 2300 * is_zero(value) wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        call stor1 with:
           value msg.value / 2 wei
             gas 2300 * is_zero(value) wei
        if arg4 == 1:
            idx = 1
            while idx <= gID_:
                mem[0] = idx
                mem[32] = 4
                mem[96] = 0x2341a1af00000000000000000000000000000000000000000000000000000000
                mem[100] = uint256(pIDxAddr_[address(arg1)])
                mem[132] = arg1
                mem[164] = arg2
                mem[196] = 0
                mem[228] = arg5
                require ext_code.size(games_[idx])
                call games_[idx].receivePlayerInfo(uint256 arg1, address arg2, bytes32 arg3, uint256 arg4, uint8 arg5) with:
                     gas gas_remaining wei
                    args uint256(pIDxAddr_[address(arg1)]), address(arg1), arg2, 0, arg5
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                idx = idx + 1
                continue 
        emit onNewName(1, 0, myReward[0].field_0, myReward[0].field_256, msg.value, block.timestamp, uint256(pIDxAddr_[address(arg1)]), arg1, arg2);
        return 1, 0
    if arg2 == arg3:
        if uint256(pIDxAddr_[address(arg1)]) != pIDxName_[arg2]:
            if pIDxName_[arg2]:
                if bool(stor12[uint256(stor9[address(arg1)])][arg2]) != 1:
                    revert with 0, 'sorry that names already taken'
        else:
            if not uint256(pIDxAddr_[address(arg1)]):
                if pIDxName_[arg2]:
                    if bool(stor12[uint256(stor9[address(arg1)])][arg2]) != 1:
                        revert with 0, 'sorry that names already taken'
            else:
                if arg5 >= myReward[uint256(stor9[address(arg1)])].field_1568:
                    if bool(stor12[uint256(stor9[address(arg1)])][arg2]) != 1:
                        revert with 0, 'sorry that names already taken'
        myReward[uint256(stor9[address(arg1)])].field_256 = arg2
        myReward[uint256(stor9[address(arg1)])].field_1568 = arg5
        pIDxName_[arg2] = uint256(pIDxAddr_[address(arg1)])
        if not stor12[uint256(stor9[address(arg1)])][arg2]:
            stor12[uint256(stor9[address(arg1)])][arg2] = 1
            myReward[uint256(stor9[address(arg1)])].field_768++
            plyrNameList_[uint256(stor9[address(arg1)])][stor11[uint256(stor9[address(arg1)])].field_768 + 1] = arg2
        call stor0 with:
           value msg.value / 2 wei
             gas 2300 * is_zero(value) wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        call stor1 with:
           value msg.value / 2 wei
             gas 2300 * is_zero(value) wei
        if arg4 == 1:
            idx = 1
            while idx <= gID_:
                mem[0] = idx
                mem[32] = 4
                mem[96] = 0x2341a1af00000000000000000000000000000000000000000000000000000000
                mem[100] = uint256(pIDxAddr_[address(arg1)])
                mem[132] = arg1
                mem[164] = arg2
                mem[196] = 0
                mem[228] = arg5
                require ext_code.size(games_[idx])
                call games_[idx].receivePlayerInfo(uint256 arg1, address arg2, bytes32 arg3, uint256 arg4, uint8 arg5) with:
                     gas gas_remaining wei
                    args uint256(pIDxAddr_[address(arg1)]), address(arg1), arg2, 0, arg5
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                idx = idx + 1
                continue 
        emit onNewName(1, 0, myReward[0].field_0, myReward[0].field_256, msg.value, block.timestamp, uint256(pIDxAddr_[address(arg1)]), arg1, arg2);
        return 1, 0
    if pIDxName_[arg3] != myReward[uint256(stor9[address(arg1)])].field_512:
        if not myReward[uint256(stor9[address(arg1)])].field_512:
            myReward[uint256(stor9[address(arg1)])].field_512 = pIDxName_[arg3]
    if uint256(pIDxAddr_[address(arg1)]) != pIDxName_[arg2]:
        if pIDxName_[arg2]:
            if bool(stor12[uint256(stor9[address(arg1)])][arg2]) != 1:
                revert with 0, 'sorry that names already taken'
    else:
        if not uint256(pIDxAddr_[address(arg1)]):
            if pIDxName_[arg2]:
                if bool(stor12[uint256(stor9[address(arg1)])][arg2]) != 1:
                    revert with 0, 'sorry that names already taken'
        else:
            if arg5 >= myReward[uint256(stor9[address(arg1)])].field_1568:
                if bool(stor12[uint256(stor9[address(arg1)])][arg2]) != 1:
                    revert with 0, 'sorry that names already taken'
    myReward[uint256(stor9[address(arg1)])].field_256 = arg2
    myReward[uint256(stor9[address(arg1)])].field_1568 = arg5
    pIDxName_[arg2] = uint256(pIDxAddr_[address(arg1)])
    if not stor12[uint256(stor9[address(arg1)])][arg2]:
        stor12[uint256(stor9[address(arg1)])][arg2] = 1
        myReward[uint256(stor9[address(arg1)])].field_768++
        plyrNameList_[uint256(stor9[address(arg1)])][stor11[uint256(stor9[address(arg1)])].field_768 + 1] = arg2
    call stor0 with:
       value msg.value / 2 wei
         gas 2300 * is_zero(value) wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    call stor1 with:
       value msg.value / 2 wei
         gas 2300 * is_zero(value) wei
    if arg4 == 1:
        idx = 1
        while idx <= gID_:
            mem[0] = idx
            mem[32] = 4
            mem[96] = 0x2341a1af00000000000000000000000000000000000000000000000000000000
            mem[100] = uint256(pIDxAddr_[address(arg1)])
            mem[132] = arg1
            mem[164] = arg2
            mem[196] = pIDxName_[arg3]
            mem[228] = arg5
            require ext_code.size(games_[idx])
            call games_[idx].receivePlayerInfo(uint256 arg1, address arg2, bytes32 arg3, uint256 arg4, uint8 arg5) with:
                 gas gas_remaining wei
                args uint256(pIDxAddr_[address(arg1)]), address(arg1), arg2, pIDxName_[arg3], arg5
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            idx = idx + 1
            continue 
    emit onNewName(1, pIDxName_[arg3], myReward[stor10[arg3]].field_0, myReward[stor10[arg3]].field_256, msg.value, block.timestamp, uint256(pIDxAddr_[address(arg1)]), arg1, arg2);
    return 1, pIDxName_[arg3]
}

function registerNameXaddrFromDapp(address arg1, bytes32 arg2, address arg3, bool arg4, uint8 arg5) payable {
    require gameIDs_[msg.sender]
    if arg5 < 0:
        revert with 0, 'invalid level'
    if arg5 > 3:
        revert with 0, 'invalid level'
    if msg.value < levelValue_[arg5 << 248]:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'sorry request price less than affiliate level'
    if uint256(pIDxAddr_[address(arg1)]):
        if not arg3:
            if uint256(pIDxAddr_[address(arg1)]) != pIDxName_[arg2]:
                if pIDxName_[arg2]:
                    if bool(stor12[uint256(stor9[address(arg1)])][arg2]) != 1:
                        revert with 0, 'sorry that names already taken'
            else:
                if not uint256(pIDxAddr_[address(arg1)]):
                    if pIDxName_[arg2]:
                        if bool(stor12[uint256(stor9[address(arg1)])][arg2]) != 1:
                            revert with 0, 'sorry that names already taken'
                else:
                    if arg5 >= myReward[uint256(stor9[address(arg1)])].field_1568:
                        if bool(stor12[uint256(stor9[address(arg1)])][arg2]) != 1:
                            revert with 0, 'sorry that names already taken'
            myReward[uint256(stor9[address(arg1)])].field_256 = arg2
            myReward[uint256(stor9[address(arg1)])].field_1568 = arg5
            pIDxName_[arg2] = uint256(pIDxAddr_[address(arg1)])
            if not stor12[uint256(stor9[address(arg1)])][arg2]:
                stor12[uint256(stor9[address(arg1)])][arg2] = 1
                myReward[uint256(stor9[address(arg1)])].field_768++
                plyrNameList_[uint256(stor9[address(arg1)])][stor11[uint256(stor9[address(arg1)])].field_768 + 1] = arg2
            call stor0 with:
               value msg.value / 2 wei
                 gas 2300 * is_zero(value) wei
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            call stor1 with:
               value msg.value / 2 wei
                 gas 2300 * is_zero(value) wei
            if arg4 == 1:
                idx = 1
                while idx <= gID_:
                    mem[0] = idx
                    mem[32] = 4
                    mem[96] = 0x2341a1af00000000000000000000000000000000000000000000000000000000
                    mem[100] = uint256(pIDxAddr_[address(arg1)])
                    mem[132] = arg1
                    mem[164] = arg2
                    mem[196] = 0
                    mem[228] = arg5
                    require ext_code.size(games_[idx])
                    call games_[idx].receivePlayerInfo(uint256 arg1, address arg2, bytes32 arg3, uint256 arg4, uint8 arg5) with:
                         gas gas_remaining wei
                        args uint256(pIDxAddr_[address(arg1)]), address(arg1), arg2, 0, arg5
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    idx = idx + 1
                    continue 
            emit onNewName(0, 0, myReward[0].field_0, myReward[0].field_256, msg.value, block.timestamp, uint256(pIDxAddr_[address(arg1)]), arg1, arg2);
            return 0
        if arg3 == arg1:
            if uint256(pIDxAddr_[address(arg1)]) != pIDxName_[arg2]:
                if pIDxName_[arg2]:
                    if bool(stor12[uint256(stor9[address(arg1)])][arg2]) != 1:
                        revert with 0, 'sorry that names already taken'
            else:
                if not uint256(pIDxAddr_[address(arg1)]):
                    if pIDxName_[arg2]:
                        if bool(stor12[uint256(stor9[address(arg1)])][arg2]) != 1:
                            revert with 0, 'sorry that names already taken'
                else:
                    if arg5 >= myReward[uint256(stor9[address(arg1)])].field_1568:
                        if bool(stor12[uint256(stor9[address(arg1)])][arg2]) != 1:
                            revert with 0, 'sorry that names already taken'
            myReward[uint256(stor9[address(arg1)])].field_256 = arg2
            myReward[uint256(stor9[address(arg1)])].field_1568 = arg5
            pIDxName_[arg2] = uint256(pIDxAddr_[address(arg1)])
            if not stor12[uint256(stor9[address(arg1)])][arg2]:
                stor12[uint256(stor9[address(arg1)])][arg2] = 1
                myReward[uint256(stor9[address(arg1)])].field_768++
                plyrNameList_[uint256(stor9[address(arg1)])][stor11[uint256(stor9[address(arg1)])].field_768 + 1] = arg2
            call stor0 with:
               value msg.value / 2 wei
                 gas 2300 * is_zero(value) wei
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            call stor1 with:
               value msg.value / 2 wei
                 gas 2300 * is_zero(value) wei
            if arg4 == 1:
                idx = 1
                while idx <= gID_:
                    mem[0] = idx
                    mem[32] = 4
                    mem[96] = 0x2341a1af00000000000000000000000000000000000000000000000000000000
                    mem[100] = uint256(pIDxAddr_[address(arg1)])
                    mem[132] = arg1
                    mem[164] = arg2
                    mem[196] = 0
                    mem[228] = arg5
                    require ext_code.size(games_[idx])
                    call games_[idx].receivePlayerInfo(uint256 arg1, address arg2, bytes32 arg3, uint256 arg4, uint8 arg5) with:
                         gas gas_remaining wei
                        args uint256(pIDxAddr_[address(arg1)]), address(arg1), arg2, 0, arg5
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    idx = idx + 1
                    continue 
            emit onNewName(0, 0, myReward[0].field_0, myReward[0].field_256, msg.value, block.timestamp, uint256(pIDxAddr_[address(arg1)]), arg1, arg2);
            return 0
        if uint256(pIDxAddr_[address(arg3)]) != myReward[uint256(stor9[address(arg1)])].field_512:
            if not myReward[uint256(stor9[address(arg1)])].field_512:
                myReward[uint256(stor9[address(arg1)])].field_512 = uint256(pIDxAddr_[address(arg3)])
        if uint256(pIDxAddr_[address(arg1)]) != pIDxName_[arg2]:
            if pIDxName_[arg2]:
                if bool(stor12[uint256(stor9[address(arg1)])][arg2]) != 1:
                    revert with 0, 'sorry that names already taken'
        else:
            if not uint256(pIDxAddr_[address(arg1)]):
                if pIDxName_[arg2]:
                    if bool(stor12[uint256(stor9[address(arg1)])][arg2]) != 1:
                        revert with 0, 'sorry that names already taken'
            else:
                if arg5 >= myReward[uint256(stor9[address(arg1)])].field_1568:
                    if bool(stor12[uint256(stor9[address(arg1)])][arg2]) != 1:
                        revert with 0, 'sorry that names already taken'
        myReward[uint256(stor9[address(arg1)])].field_256 = arg2
        myReward[uint256(stor9[address(arg1)])].field_1568 = arg5
        pIDxName_[arg2] = uint256(pIDxAddr_[address(arg1)])
        if not stor12[uint256(stor9[address(arg1)])][arg2]:
            stor12[uint256(stor9[address(arg1)])][arg2] = 1
            myReward[uint256(stor9[address(arg1)])].field_768++
            plyrNameList_[uint256(stor9[address(arg1)])][stor11[uint256(stor9[address(arg1)])].field_768 + 1] = arg2
        call stor0 with:
           value msg.value / 2 wei
             gas 2300 * is_zero(value) wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        call stor1 with:
           value msg.value / 2 wei
             gas 2300 * is_zero(value) wei
        if arg4 == 1:
            idx = 1
            while idx <= gID_:
                mem[0] = idx
                mem[32] = 4
                mem[96] = 0x2341a1af00000000000000000000000000000000000000000000000000000000
                mem[100] = uint256(pIDxAddr_[address(arg1)])
                mem[132] = arg1
                mem[164] = arg2
                mem[196] = uint256(pIDxAddr_[address(arg3)])
                mem[228] = arg5
                require ext_code.size(games_[idx])
                call games_[idx].receivePlayerInfo(uint256 arg1, address arg2, bytes32 arg3, uint256 arg4, uint8 arg5) with:
                     gas gas_remaining wei
                    args uint256(pIDxAddr_[address(arg1)]), address(arg1), arg2, uint256(pIDxAddr_[address(arg3)]), arg5
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                idx = idx + 1
                continue 
        emit onNewName(0, uint256(pIDxAddr_[address(arg3)]), myReward[uint256(stor9[address(arg3)])].field_0, myReward[uint256(stor9[address(arg3)])].field_256, msg.value, block.timestamp, uint256(pIDxAddr_[address(arg1)]), arg1, arg2);
        return 0, uint256(pIDxAddr_[address(arg3)])
    pID_++
    uint256(pIDxAddr_[address(arg1)]) = pID_ + 1
    myReward[stor8 + 1].field_0 = arg1
    if not arg3:
        if uint256(pIDxAddr_[address(arg1)]) != pIDxName_[arg2]:
            if pIDxName_[arg2]:
                if bool(stor12[uint256(stor9[address(arg1)])][arg2]) != 1:
                    revert with 0, 'sorry that names already taken'
        else:
            if not uint256(pIDxAddr_[address(arg1)]):
                if pIDxName_[arg2]:
                    if bool(stor12[uint256(stor9[address(arg1)])][arg2]) != 1:
                        revert with 0, 'sorry that names already taken'
            else:
                if arg5 >= myReward[uint256(stor9[address(arg1)])].field_1568:
                    if bool(stor12[uint256(stor9[address(arg1)])][arg2]) != 1:
                        revert with 0, 'sorry that names already taken'
        myReward[uint256(stor9[address(arg1)])].field_256 = arg2
        myReward[uint256(stor9[address(arg1)])].field_1568 = arg5
        pIDxName_[arg2] = uint256(pIDxAddr_[address(arg1)])
        if not stor12[uint256(stor9[address(arg1)])][arg2]:
            stor12[uint256(stor9[address(arg1)])][arg2] = 1
            myReward[uint256(stor9[address(arg1)])].field_768++
            plyrNameList_[uint256(stor9[address(arg1)])][stor11[uint256(stor9[address(arg1)])].field_768 + 1] = arg2
        call stor0 with:
           value msg.value / 2 wei
             gas 2300 * is_zero(value) wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        call stor1 with:
           value msg.value / 2 wei
             gas 2300 * is_zero(value) wei
        if arg4 == 1:
            idx = 1
            while idx <= gID_:
                mem[0] = idx
                mem[32] = 4
                mem[96] = 0x2341a1af00000000000000000000000000000000000000000000000000000000
                mem[100] = uint256(pIDxAddr_[address(arg1)])
                mem[132] = arg1
                mem[164] = arg2
                mem[196] = 0
                mem[228] = arg5
                require ext_code.size(games_[idx])
                call games_[idx].receivePlayerInfo(uint256 arg1, address arg2, bytes32 arg3, uint256 arg4, uint8 arg5) with:
                     gas gas_remaining wei
                    args uint256(pIDxAddr_[address(arg1)]), address(arg1), arg2, 0, arg5
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                idx = idx + 1
                continue 
        emit onNewName(1, 0, myReward[0].field_0, myReward[0].field_256, msg.value, block.timestamp, uint256(pIDxAddr_[address(arg1)]), arg1, arg2);
        return 1, 0
    if arg3 == arg1:
        if uint256(pIDxAddr_[address(arg1)]) != pIDxName_[arg2]:
            if pIDxName_[arg2]:
                if bool(stor12[uint256(stor9[address(arg1)])][arg2]) != 1:
                    revert with 0, 'sorry that names already taken'
        else:
            if not uint256(pIDxAddr_[address(arg1)]):
                if pIDxName_[arg2]:
                    if bool(stor12[uint256(stor9[address(arg1)])][arg2]) != 1:
                        revert with 0, 'sorry that names already taken'
            else:
                if arg5 >= myReward[uint256(stor9[address(arg1)])].field_1568:
                    if bool(stor12[uint256(stor9[address(arg1)])][arg2]) != 1:
                        revert with 0, 'sorry that names already taken'
        myReward[uint256(stor9[address(arg1)])].field_256 = arg2
        myReward[uint256(stor9[address(arg1)])].field_1568 = arg5
        pIDxName_[arg2] = uint256(pIDxAddr_[address(arg1)])
        if not stor12[uint256(stor9[address(arg1)])][arg2]:
            stor12[uint256(stor9[address(arg1)])][arg2] = 1
            myReward[uint256(stor9[address(arg1)])].field_768++
            plyrNameList_[uint256(stor9[address(arg1)])][stor11[uint256(stor9[address(arg1)])].field_768 + 1] = arg2
        call stor0 with:
           value msg.value / 2 wei
             gas 2300 * is_zero(value) wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        call stor1 with:
           value msg.value / 2 wei
             gas 2300 * is_zero(value) wei
        if arg4 == 1:
            idx = 1
            while idx <= gID_:
                mem[0] = idx
                mem[32] = 4
                mem[96] = 0x2341a1af00000000000000000000000000000000000000000000000000000000
                mem[100] = uint256(pIDxAddr_[address(arg1)])
                mem[132] = arg1
                mem[164] = arg2
                mem[196] = 0
                mem[228] = arg5
                require ext_code.size(games_[idx])
                call games_[idx].receivePlayerInfo(uint256 arg1, address arg2, bytes32 arg3, uint256 arg4, uint8 arg5) with:
                     gas gas_remaining wei
                    args uint256(pIDxAddr_[address(arg1)]), address(arg1), arg2, 0, arg5
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                idx = idx + 1
                continue 
        emit onNewName(1, 0, myReward[0].field_0, myReward[0].field_256, msg.value, block.timestamp, uint256(pIDxAddr_[address(arg1)]), arg1, arg2);
        return 1, 0
    if uint256(pIDxAddr_[address(arg3)]) != myReward[uint256(stor9[address(arg1)])].field_512:
        if not myReward[uint256(stor9[address(arg1)])].field_512:
            myReward[uint256(stor9[address(arg1)])].field_512 = uint256(pIDxAddr_[address(arg3)])
    if uint256(pIDxAddr_[address(arg1)]) != pIDxName_[arg2]:
        if pIDxName_[arg2]:
            if bool(stor12[uint256(stor9[address(arg1)])][arg2]) != 1:
                revert with 0, 'sorry that names already taken'
    else:
        if not uint256(pIDxAddr_[address(arg1)]):
            if pIDxName_[arg2]:
                if bool(stor12[uint256(stor9[address(arg1)])][arg2]) != 1:
                    revert with 0, 'sorry that names already taken'
        else:
            if arg5 >= myReward[uint256(stor9[address(arg1)])].field_1568:
                if bool(stor12[uint256(stor9[address(arg1)])][arg2]) != 1:
                    revert with 0, 'sorry that names already taken'
    myReward[uint256(stor9[address(arg1)])].field_256 = arg2
    myReward[uint256(stor9[address(arg1)])].field_1568 = arg5
    pIDxName_[arg2] = uint256(pIDxAddr_[address(arg1)])
    if not stor12[uint256(stor9[address(arg1)])][arg2]:
        stor12[uint256(stor9[address(arg1)])][arg2] = 1
        myReward[uint256(stor9[address(arg1)])].field_768++
        plyrNameList_[uint256(stor9[address(arg1)])][stor11[uint256(stor9[address(arg1)])].field_768 + 1] = arg2
    call stor0 with:
       value msg.value / 2 wei
         gas 2300 * is_zero(value) wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    call stor1 with:
       value msg.value / 2 wei
         gas 2300 * is_zero(value) wei
    if arg4 == 1:
        idx = 1
        while idx <= gID_:
            mem[0] = idx
            mem[32] = 4
            mem[96] = 0x2341a1af00000000000000000000000000000000000000000000000000000000
            mem[100] = uint256(pIDxAddr_[address(arg1)])
            mem[132] = arg1
            mem[164] = arg2
            mem[196] = uint256(pIDxAddr_[address(arg3)])
            mem[228] = arg5
            require ext_code.size(games_[idx])
            call games_[idx].receivePlayerInfo(uint256 arg1, address arg2, bytes32 arg3, uint256 arg4, uint8 arg5) with:
                 gas gas_remaining wei
                args uint256(pIDxAddr_[address(arg1)]), address(arg1), arg2, uint256(pIDxAddr_[address(arg3)]), arg5
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            idx = idx + 1
            continue 
    emit onNewName(1, uint256(pIDxAddr_[address(arg3)]), myReward[uint256(stor9[address(arg3)])].field_0, myReward[uint256(stor9[address(arg3)])].field_256, msg.value, block.timestamp, uint256(pIDxAddr_[address(arg1)]), arg1, arg2);
    return 1, uint256(pIDxAddr_[address(arg3)])
}

function resolveRankBoard() payable {
    mem[64] = 96
    require not msg.value
    require msg.sender
    if block.number - startBlockNumber_ >= 5760:
        startBlockNumber_ = block.number
        emit eveResolve(block.number, roundNumber_);
        roundNumber_ = uint32(roundNumber_ + 1)
        idx = 0
        s = 0
        while uint8(idx) < 10:
            require uint8(idx) < rankCost_.length
            mem[0] = 17
            idx = idx + 1
            s = s + rankCost_[uint8(idx)]
            continue 
        if s * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None > 0:
            if lastRefrralsVault_ > referralsVault_:
                revert with 0, 'SafeMath sub failed'
            t = 0
            idx = 0
            t = 0
            while uint8(idx) < 10:
                require uint8(idx) < rankPlayers_.length
                mem[0] = 16
                if rankPlayers_[uint8(idx)] <= 0:
                    t = rankPlayers_[uint8(idx)]
                    idx = idx + 1
                    t = t
                    continue 
                require uint8(idx) < rankCost_.length
                if not referralsVault_ - lastRefrralsVault_:
                    require s * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None
                    lastRefrralsVault_ += 0 / s * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None
                    myReward[stor16[uint8(idx)]].field_1024 += 0 / s * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None
                    require uint8(idx) < rankPlayers_.length
                    mem[0] = rankPlayers_[uint8(idx)]
                    mem[32] = 11
                    mem[mem[64]] = rankPlayers_[uint8(idx)]
                    mem[mem[64] + 32] = myReward[stor16[uint8(idx)]].field_1024
                    mem[mem[64] + 64] = 0 / s * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None
                    mem[mem[64] + 96] = referralsVault_
                    mem[mem[64] + 128] = s * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None
                    mem[mem[64] + 160] = lastRefrralsVault_
                    emit eveReward(rankPlayers_[uint8(idx)], myReward[stor16[uint8(idx)]].field_1024, 0 / s * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None, referralsVault_, s * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None, lastRefrralsVault_);
                    t = rankPlayers_[uint8(idx)]
                    idx = idx + 1
                    t = 0 / s * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None
                    continue 
                if 8 * referralsVault_ - lastRefrralsVault_ / referralsVault_ - lastRefrralsVault_ != 8:
                    revert with 0, 'SafeMath mul failed'
                if not 8 * referralsVault_ - lastRefrralsVault_ / 10:
                    require s * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None
                    lastRefrralsVault_ += 0 / s * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None
                    myReward[stor16[uint8(idx)]].field_1024 += 0 / s * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None
                    require uint8(idx) < rankPlayers_.length
                    mem[0] = rankPlayers_[uint8(idx)]
                    mem[32] = 11
                    mem[mem[64]] = rankPlayers_[uint8(idx)]
                    mem[mem[64] + 32] = myReward[stor16[uint8(idx)]].field_1024
                    mem[mem[64] + 64] = 0 / s * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None
                    mem[mem[64] + 96] = referralsVault_
                    mem[mem[64] + 128] = s * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None
                    mem[mem[64] + 160] = lastRefrralsVault_
                    emit eveReward(rankPlayers_[uint8(idx)], myReward[stor16[uint8(idx)]].field_1024, 0 / s * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None, referralsVault_, s * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None, lastRefrralsVault_);
                    t = rankPlayers_[uint8(idx)]
                    idx = idx + 1
                    t = 0 / s * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None
                    continue 
                if rankCost_[uint8(idx)] * 8 * referralsVault_ - lastRefrralsVault_ / 10 / 8 * referralsVault_ - lastRefrralsVault_ / 10 != rankCost_[uint8(idx)]:
                    revert with 0, 'SafeMath mul failed'
                require s * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None
                lastRefrralsVault_ += rankCost_[uint8(idx)] * 8 * referralsVault_ - lastRefrralsVault_ / 10 / s * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None
                myReward[stor16[uint8(idx)]].field_1024 += rankCost_[uint8(idx)] * 8 * referralsVault_ - lastRefrralsVault_ / 10 / s * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None
                require uint8(idx) < rankPlayers_.length
                mem[0] = rankPlayers_[uint8(idx)]
                mem[32] = 11
                mem[mem[64]] = rankPlayers_[uint8(idx)]
                mem[mem[64] + 32] = myReward[stor16[uint8(idx)]].field_1024
                mem[mem[64] + 64] = rankCost_[uint8(idx)] * 8 * referralsVault_ - lastRefrralsVault_ / 10 / s * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None
                mem[mem[64] + 96] = referralsVault_
                mem[mem[64] + 128] = s * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None
                mem[mem[64] + 160] = lastRefrralsVault_
                emit eveReward(rankPlayers_[uint8(idx)], myReward[stor16[uint8(idx)]].field_1024, rankCost_[uint8(idx)] * 8 * referralsVault_ - lastRefrralsVault_ / 10 / s * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None, referralsVault_, s * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None, lastRefrralsVault_);
                t = rankPlayers_[uint8(idx)]
                idx = idx + 1
                t = rankCost_[uint8(idx)] * 8 * referralsVault_ - lastRefrralsVault_ / 10 / s * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None
                continue 
        rankPlayers_.length = 0
        if rankPlayers_.length > 0:
            idx = 0
            while rankPlayers_.length > idx:
                rankPlayers_[idx] = 0
                idx = idx + 1
                continue 
        rankCost_.length = 0
        if rankCost_.length > 0:
            idx = 0
            while rankCost_.length > idx:
                rankCost_[idx] = 0
                idx = idx + 1
                continue 
        rankPlayers_.length = 10
        if rankPlayers_.length > 10:
            idx = 10
            while rankPlayers_.length > idx:
                rankPlayers_[idx] = 0
                idx = idx + 1
                continue 
        rankCost_.length = 10
        if rankCost_.length > 10:
            idx = 10
            while rankCost_.length > idx:
                rankCost_[idx] = 0
                idx = idx + 1
                continue 
}

function registerNameXIDFromDapp(address arg1, bytes32 arg2, uint256 arg3, bool arg4, uint8 arg5) payable {
    require gameIDs_[msg.sender]
    if arg5 < 0:
        revert with 0, 'invalid level'
    if arg5 > 3:
        revert with 0, 'invalid level'
    if msg.value < levelValue_[arg5 << 248]:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'sorry request price less than affiliate level'
    if uint256(pIDxAddr_[address(arg1)]):
        if not arg3:
            if uint256(pIDxAddr_[address(arg1)]) != pIDxName_[arg2]:
                if pIDxName_[arg2]:
                    if bool(stor12[uint256(stor9[address(arg1)])][arg2]) != 1:
                        revert with 0, 'sorry that names already taken'
            else:
                if not uint256(pIDxAddr_[address(arg1)]):
                    if pIDxName_[arg2]:
                        if bool(stor12[uint256(stor9[address(arg1)])][arg2]) != 1:
                            revert with 0, 'sorry that names already taken'
                else:
                    if arg5 >= myReward[uint256(stor9[address(arg1)])].field_1568:
                        if bool(stor12[uint256(stor9[address(arg1)])][arg2]) != 1:
                            revert with 0, 'sorry that names already taken'
            myReward[uint256(stor9[address(arg1)])].field_256 = arg2
            myReward[uint256(stor9[address(arg1)])].field_1568 = arg5
            pIDxName_[arg2] = uint256(pIDxAddr_[address(arg1)])
            if not stor12[uint256(stor9[address(arg1)])][arg2]:
                stor12[uint256(stor9[address(arg1)])][arg2] = 1
                myReward[uint256(stor9[address(arg1)])].field_768++
                plyrNameList_[uint256(stor9[address(arg1)])][stor11[uint256(stor9[address(arg1)])].field_768 + 1] = arg2
            call stor0 with:
               value msg.value / 2 wei
                 gas 2300 * is_zero(value) wei
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            call stor1 with:
               value msg.value / 2 wei
                 gas 2300 * is_zero(value) wei
            if arg3 != uint256(pIDxAddr_[address(arg1)]):
                if arg4 == 1:
                    idx = 1
                    while idx <= gID_:
                        mem[0] = idx
                        mem[32] = 4
                        mem[96] = 0x2341a1af00000000000000000000000000000000000000000000000000000000
                        mem[100] = uint256(pIDxAddr_[address(arg1)])
                        mem[132] = arg1
                        mem[164] = arg2
                        mem[196] = arg3
                        mem[228] = arg5
                        require ext_code.size(games_[idx])
                        call games_[idx].receivePlayerInfo(uint256 arg1, address arg2, bytes32 arg3, uint256 arg4, uint8 arg5) with:
                             gas gas_remaining wei
                            args uint256(pIDxAddr_[address(arg1)]), address(arg1), arg2, arg3, arg5
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        idx = idx + 1
                        continue 
                emit onNewName(0, arg3, myReward[arg3].field_0, myReward[arg3].field_256, msg.value, block.timestamp, uint256(pIDxAddr_[address(arg1)]), arg1, arg2);
                return 0, arg3
            if arg4 == 1:
                idx = 1
                while idx <= gID_:
                    mem[0] = idx
                    mem[32] = 4
                    mem[96] = 0x2341a1af00000000000000000000000000000000000000000000000000000000
                    mem[100] = uint256(pIDxAddr_[address(arg1)])
                    mem[132] = arg1
                    mem[164] = arg2
                    mem[196] = 0
                    mem[228] = arg5
                    require ext_code.size(games_[idx])
                    call games_[idx].receivePlayerInfo(uint256 arg1, address arg2, bytes32 arg3, uint256 arg4, uint8 arg5) with:
                         gas gas_remaining wei
                        args uint256(pIDxAddr_[address(arg1)]), address(arg1), arg2, 0, arg5
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    idx = idx + 1
                    continue 
            emit onNewName(0, 0, myReward[0].field_0, myReward[0].field_256, msg.value, block.timestamp, uint256(pIDxAddr_[address(arg1)]), arg1, arg2);
            return 0
        if arg3 == myReward[uint256(stor9[address(arg1)])].field_512:
            if uint256(pIDxAddr_[address(arg1)]) != pIDxName_[arg2]:
                if pIDxName_[arg2]:
                    if bool(stor12[uint256(stor9[address(arg1)])][arg2]) != 1:
                        revert with 0, 'sorry that names already taken'
            else:
                if not uint256(pIDxAddr_[address(arg1)]):
                    if pIDxName_[arg2]:
                        if bool(stor12[uint256(stor9[address(arg1)])][arg2]) != 1:
                            revert with 0, 'sorry that names already taken'
                else:
                    if arg5 >= myReward[uint256(stor9[address(arg1)])].field_1568:
                        if bool(stor12[uint256(stor9[address(arg1)])][arg2]) != 1:
                            revert with 0, 'sorry that names already taken'
            myReward[uint256(stor9[address(arg1)])].field_256 = arg2
            myReward[uint256(stor9[address(arg1)])].field_1568 = arg5
            pIDxName_[arg2] = uint256(pIDxAddr_[address(arg1)])
            if not stor12[uint256(stor9[address(arg1)])][arg2]:
                stor12[uint256(stor9[address(arg1)])][arg2] = 1
                myReward[uint256(stor9[address(arg1)])].field_768++
                plyrNameList_[uint256(stor9[address(arg1)])][stor11[uint256(stor9[address(arg1)])].field_768 + 1] = arg2
            call stor0 with:
               value msg.value / 2 wei
                 gas 2300 * is_zero(value) wei
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            call stor1 with:
               value msg.value / 2 wei
                 gas 2300 * is_zero(value) wei
            if arg3 != uint256(pIDxAddr_[address(arg1)]):
                if arg4 == 1:
                    idx = 1
                    while idx <= gID_:
                        mem[0] = idx
                        mem[32] = 4
                        mem[96] = 0x2341a1af00000000000000000000000000000000000000000000000000000000
                        mem[100] = uint256(pIDxAddr_[address(arg1)])
                        mem[132] = arg1
                        mem[164] = arg2
                        mem[196] = arg3
                        mem[228] = arg5
                        require ext_code.size(games_[idx])
                        call games_[idx].receivePlayerInfo(uint256 arg1, address arg2, bytes32 arg3, uint256 arg4, uint8 arg5) with:
                             gas gas_remaining wei
                            args uint256(pIDxAddr_[address(arg1)]), address(arg1), arg2, arg3, arg5
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        idx = idx + 1
                        continue 
                emit onNewName(0, arg3, myReward[arg3].field_0, myReward[arg3].field_256, msg.value, block.timestamp, uint256(pIDxAddr_[address(arg1)]), arg1, arg2);
                return 0, arg3
            if arg4 == 1:
                idx = 1
                while idx <= gID_:
                    mem[0] = idx
                    mem[32] = 4
                    mem[96] = 0x2341a1af00000000000000000000000000000000000000000000000000000000
                    mem[100] = uint256(pIDxAddr_[address(arg1)])
                    mem[132] = arg1
                    mem[164] = arg2
                    mem[196] = 0
                    mem[228] = arg5
                    require ext_code.size(games_[idx])
                    call games_[idx].receivePlayerInfo(uint256 arg1, address arg2, bytes32 arg3, uint256 arg4, uint8 arg5) with:
                         gas gas_remaining wei
                        args uint256(pIDxAddr_[address(arg1)]), address(arg1), arg2, 0, arg5
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    idx = idx + 1
                    continue 
            emit onNewName(0, 0, myReward[0].field_0, myReward[0].field_256, msg.value, block.timestamp, uint256(pIDxAddr_[address(arg1)]), arg1, arg2);
            return 0
        if arg3 == uint256(pIDxAddr_[address(arg1)]):
            if uint256(pIDxAddr_[address(arg1)]) != pIDxName_[arg2]:
                if pIDxName_[arg2]:
                    if bool(stor12[uint256(stor9[address(arg1)])][arg2]) != 1:
                        revert with 0, 'sorry that names already taken'
            else:
                if not uint256(pIDxAddr_[address(arg1)]):
                    if pIDxName_[arg2]:
                        if bool(stor12[uint256(stor9[address(arg1)])][arg2]) != 1:
                            revert with 0, 'sorry that names already taken'
                else:
                    if arg5 >= myReward[uint256(stor9[address(arg1)])].field_1568:
                        if bool(stor12[uint256(stor9[address(arg1)])][arg2]) != 1:
                            revert with 0, 'sorry that names already taken'
            myReward[uint256(stor9[address(arg1)])].field_256 = arg2
            myReward[uint256(stor9[address(arg1)])].field_1568 = arg5
            pIDxName_[arg2] = uint256(pIDxAddr_[address(arg1)])
            if not stor12[uint256(stor9[address(arg1)])][arg2]:
                stor12[uint256(stor9[address(arg1)])][arg2] = 1
                myReward[uint256(stor9[address(arg1)])].field_768++
                plyrNameList_[uint256(stor9[address(arg1)])][stor11[uint256(stor9[address(arg1)])].field_768 + 1] = arg2
            call stor0 with:
               value msg.value / 2 wei
                 gas 2300 * is_zero(value) wei
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            call stor1 with:
               value msg.value / 2 wei
                 gas 2300 * is_zero(value) wei
            if arg4 == 1:
                idx = 1
                while idx <= gID_:
                    mem[0] = idx
                    mem[32] = 4
                    mem[96] = 0x2341a1af00000000000000000000000000000000000000000000000000000000
                    mem[100] = uint256(pIDxAddr_[address(arg1)])
                    mem[132] = arg1
                    mem[164] = arg2
                    mem[196] = 0
                    mem[228] = arg5
                    require ext_code.size(games_[idx])
                    call games_[idx].receivePlayerInfo(uint256 arg1, address arg2, bytes32 arg3, uint256 arg4, uint8 arg5) with:
                         gas gas_remaining wei
                        args uint256(pIDxAddr_[address(arg1)]), address(arg1), arg2, 0, arg5
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    idx = idx + 1
                    continue 
            emit onNewName(0, 0, myReward[0].field_0, myReward[0].field_256, msg.value, block.timestamp, uint256(pIDxAddr_[address(arg1)]), arg1, arg2);
            return 0
        if not myReward[uint256(stor9[address(arg1)])].field_512:
            myReward[uint256(stor9[address(arg1)])].field_512 = arg3
        if uint256(pIDxAddr_[address(arg1)]) != pIDxName_[arg2]:
            if pIDxName_[arg2]:
                if bool(stor12[uint256(stor9[address(arg1)])][arg2]) != 1:
                    revert with 0, 'sorry that names already taken'
        else:
            if not uint256(pIDxAddr_[address(arg1)]):
                if pIDxName_[arg2]:
                    if bool(stor12[uint256(stor9[address(arg1)])][arg2]) != 1:
                        revert with 0, 'sorry that names already taken'
            else:
                if arg5 >= myReward[uint256(stor9[address(arg1)])].field_1568:
                    if bool(stor12[uint256(stor9[address(arg1)])][arg2]) != 1:
                        revert with 0, 'sorry that names already taken'
        myReward[uint256(stor9[address(arg1)])].field_256 = arg2
        myReward[uint256(stor9[address(arg1)])].field_1568 = arg5
        pIDxName_[arg2] = uint256(pIDxAddr_[address(arg1)])
        if not stor12[uint256(stor9[address(arg1)])][arg2]:
            stor12[uint256(stor9[address(arg1)])][arg2] = 1
            myReward[uint256(stor9[address(arg1)])].field_768++
            plyrNameList_[uint256(stor9[address(arg1)])][stor11[uint256(stor9[address(arg1)])].field_768 + 1] = arg2
        call stor0 with:
           value msg.value / 2 wei
             gas 2300 * is_zero(value) wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        call stor1 with:
           value msg.value / 2 wei
             gas 2300 * is_zero(value) wei
        if arg4 == 1:
            idx = 1
            while idx <= gID_:
                mem[0] = idx
                mem[32] = 4
                mem[96] = 0x2341a1af00000000000000000000000000000000000000000000000000000000
                mem[100] = uint256(pIDxAddr_[address(arg1)])
                mem[132] = arg1
                mem[164] = arg2
                mem[196] = arg3
                mem[228] = arg5
                require ext_code.size(games_[idx])
                call games_[idx].receivePlayerInfo(uint256 arg1, address arg2, bytes32 arg3, uint256 arg4, uint8 arg5) with:
                     gas gas_remaining wei
                    args uint256(pIDxAddr_[address(arg1)]), address(arg1), arg2, arg3, arg5
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                idx = idx + 1
                continue 
        emit onNewName(0, arg3, myReward[arg3].field_0, myReward[arg3].field_256, msg.value, block.timestamp, uint256(pIDxAddr_[address(arg1)]), arg1, arg2);
        return 0, arg3
    pID_++
    uint256(pIDxAddr_[address(arg1)]) = pID_ + 1
    myReward[stor8 + 1].field_0 = arg1
    if not arg3:
        if uint256(pIDxAddr_[address(arg1)]) != pIDxName_[arg2]:
            if pIDxName_[arg2]:
                if bool(stor12[uint256(stor9[address(arg1)])][arg2]) != 1:
                    revert with 0, 'sorry that names already taken'
        else:
            if not uint256(pIDxAddr_[address(arg1)]):
                if pIDxName_[arg2]:
                    if bool(stor12[uint256(stor9[address(arg1)])][arg2]) != 1:
                        revert with 0, 'sorry that names already taken'
            else:
                if arg5 >= myReward[uint256(stor9[address(arg1)])].field_1568:
                    if bool(stor12[uint256(stor9[address(arg1)])][arg2]) != 1:
                        revert with 0, 'sorry that names already taken'
        myReward[uint256(stor9[address(arg1)])].field_256 = arg2
        myReward[uint256(stor9[address(arg1)])].field_1568 = arg5
        pIDxName_[arg2] = uint256(pIDxAddr_[address(arg1)])
        if not stor12[uint256(stor9[address(arg1)])][arg2]:
            stor12[uint256(stor9[address(arg1)])][arg2] = 1
            myReward[uint256(stor9[address(arg1)])].field_768++
            plyrNameList_[uint256(stor9[address(arg1)])][stor11[uint256(stor9[address(arg1)])].field_768 + 1] = arg2
        call stor0 with:
           value msg.value / 2 wei
             gas 2300 * is_zero(value) wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        call stor1 with:
           value msg.value / 2 wei
             gas 2300 * is_zero(value) wei
        if arg3 != uint256(pIDxAddr_[address(arg1)]):
            if arg4 == 1:
                idx = 1
                while idx <= gID_:
                    mem[0] = idx
                    mem[32] = 4
                    mem[96] = 0x2341a1af00000000000000000000000000000000000000000000000000000000
                    mem[100] = uint256(pIDxAddr_[address(arg1)])
                    mem[132] = arg1
                    mem[164] = arg2
                    mem[196] = arg3
                    mem[228] = arg5
                    require ext_code.size(games_[idx])
                    call games_[idx].receivePlayerInfo(uint256 arg1, address arg2, bytes32 arg3, uint256 arg4, uint8 arg5) with:
                         gas gas_remaining wei
                        args uint256(pIDxAddr_[address(arg1)]), address(arg1), arg2, arg3, arg5
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    idx = idx + 1
                    continue 
            emit onNewName(1, arg3, myReward[arg3].field_0, myReward[arg3].field_256, msg.value, block.timestamp, uint256(pIDxAddr_[address(arg1)]), arg1, arg2);
            return 1, arg3
        if arg4 == 1:
            idx = 1
            while idx <= gID_:
                mem[0] = idx
                mem[32] = 4
                mem[96] = 0x2341a1af00000000000000000000000000000000000000000000000000000000
                mem[100] = uint256(pIDxAddr_[address(arg1)])
                mem[132] = arg1
                mem[164] = arg2
                mem[196] = 0
                mem[228] = arg5
                require ext_code.size(games_[idx])
                call games_[idx].receivePlayerInfo(uint256 arg1, address arg2, bytes32 arg3, uint256 arg4, uint8 arg5) with:
                     gas gas_remaining wei
                    args uint256(pIDxAddr_[address(arg1)]), address(arg1), arg2, 0, arg5
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                idx = idx + 1
                continue 
        emit onNewName(1, 0, myReward[0].field_0, myReward[0].field_256, msg.value, block.timestamp, uint256(pIDxAddr_[address(arg1)]), arg1, arg2);
        return 1, 0
    if arg3 == myReward[uint256(stor9[address(arg1)])].field_512:
        if uint256(pIDxAddr_[address(arg1)]) != pIDxName_[arg2]:
            if pIDxName_[arg2]:
                if bool(stor12[uint256(stor9[address(arg1)])][arg2]) != 1:
                    revert with 0, 'sorry that names already taken'
        else:
            if not uint256(pIDxAddr_[address(arg1)]):
                if pIDxName_[arg2]:
                    if bool(stor12[uint256(stor9[address(arg1)])][arg2]) != 1:
                        revert with 0, 'sorry that names already taken'
            else:
                if arg5 >= myReward[uint256(stor9[address(arg1)])].field_1568:
                    if bool(stor12[uint256(stor9[address(arg1)])][arg2]) != 1:
                        revert with 0, 'sorry that names already taken'
        myReward[uint256(stor9[address(arg1)])].field_256 = arg2
        myReward[uint256(stor9[address(arg1)])].field_1568 = arg5
        pIDxName_[arg2] = uint256(pIDxAddr_[address(arg1)])
        if not stor12[uint256(stor9[address(arg1)])][arg2]:
            stor12[uint256(stor9[address(arg1)])][arg2] = 1
            myReward[uint256(stor9[address(arg1)])].field_768++
            plyrNameList_[uint256(stor9[address(arg1)])][stor11[uint256(stor9[address(arg1)])].field_768 + 1] = arg2
        call stor0 with:
           value msg.value / 2 wei
             gas 2300 * is_zero(value) wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        call stor1 with:
           value msg.value / 2 wei
             gas 2300 * is_zero(value) wei
        if arg3 != uint256(pIDxAddr_[address(arg1)]):
            if arg4 == 1:
                idx = 1
                while idx <= gID_:
                    mem[0] = idx
                    mem[32] = 4
                    mem[96] = 0x2341a1af00000000000000000000000000000000000000000000000000000000
                    mem[100] = uint256(pIDxAddr_[address(arg1)])
                    mem[132] = arg1
                    mem[164] = arg2
                    mem[196] = arg3
                    mem[228] = arg5
                    require ext_code.size(games_[idx])
                    call games_[idx].receivePlayerInfo(uint256 arg1, address arg2, bytes32 arg3, uint256 arg4, uint8 arg5) with:
                         gas gas_remaining wei
                        args uint256(pIDxAddr_[address(arg1)]), address(arg1), arg2, arg3, arg5
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    idx = idx + 1
                    continue 
            emit onNewName(1, arg3, myReward[arg3].field_0, myReward[arg3].field_256, msg.value, block.timestamp, uint256(pIDxAddr_[address(arg1)]), arg1, arg2);
            return 1, arg3
        if arg4 == 1:
            idx = 1
            while idx <= gID_:
                mem[0] = idx
                mem[32] = 4
                mem[96] = 0x2341a1af00000000000000000000000000000000000000000000000000000000
                mem[100] = uint256(pIDxAddr_[address(arg1)])
                mem[132] = arg1
                mem[164] = arg2
                mem[196] = 0
                mem[228] = arg5
                require ext_code.size(games_[idx])
                call games_[idx].receivePlayerInfo(uint256 arg1, address arg2, bytes32 arg3, uint256 arg4, uint8 arg5) with:
                     gas gas_remaining wei
                    args uint256(pIDxAddr_[address(arg1)]), address(arg1), arg2, 0, arg5
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                idx = idx + 1
                continue 
        emit onNewName(1, 0, myReward[0].field_0, myReward[0].field_256, msg.value, block.timestamp, uint256(pIDxAddr_[address(arg1)]), arg1, arg2);
        return 1, 0
    if arg3 == uint256(pIDxAddr_[address(arg1)]):
        if uint256(pIDxAddr_[address(arg1)]) != pIDxName_[arg2]:
            if pIDxName_[arg2]:
                if bool(stor12[uint256(stor9[address(arg1)])][arg2]) != 1:
                    revert with 0, 'sorry that names already taken'
        else:
            if not uint256(pIDxAddr_[address(arg1)]):
                if pIDxName_[arg2]:
                    if bool(stor12[uint256(stor9[address(arg1)])][arg2]) != 1:
                        revert with 0, 'sorry that names already taken'
            else:
                if arg5 >= myReward[uint256(stor9[address(arg1)])].field_1568:
                    if bool(stor12[uint256(stor9[address(arg1)])][arg2]) != 1:
                        revert with 0, 'sorry that names already taken'
        myReward[uint256(stor9[address(arg1)])].field_256 = arg2
        myReward[uint256(stor9[address(arg1)])].field_1568 = arg5
        pIDxName_[arg2] = uint256(pIDxAddr_[address(arg1)])
        if not stor12[uint256(stor9[address(arg1)])][arg2]:
            stor12[uint256(stor9[address(arg1)])][arg2] = 1
            myReward[uint256(stor9[address(arg1)])].field_768++
            plyrNameList_[uint256(stor9[address(arg1)])][stor11[uint256(stor9[address(arg1)])].field_768 + 1] = arg2
        call stor0 with:
           value msg.value / 2 wei
             gas 2300 * is_zero(value) wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        call stor1 with:
           value msg.value / 2 wei
             gas 2300 * is_zero(value) wei
        if arg4 == 1:
            idx = 1
            while idx <= gID_:
                mem[0] = idx
                mem[32] = 4
                mem[96] = 0x2341a1af00000000000000000000000000000000000000000000000000000000
                mem[100] = uint256(pIDxAddr_[address(arg1)])
                mem[132] = arg1
                mem[164] = arg2
                mem[196] = 0
                mem[228] = arg5
                require ext_code.size(games_[idx])
                call games_[idx].receivePlayerInfo(uint256 arg1, address arg2, bytes32 arg3, uint256 arg4, uint8 arg5) with:
                     gas gas_remaining wei
                    args uint256(pIDxAddr_[address(arg1)]), address(arg1), arg2, 0, arg5
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                idx = idx + 1
                continue 
        emit onNewName(1, 0, myReward[0].field_0, myReward[0].field_256, msg.value, block.timestamp, uint256(pIDxAddr_[address(arg1)]), arg1, arg2);
        return 1, 0
    if not myReward[uint256(stor9[address(arg1)])].field_512:
        myReward[uint256(stor9[address(arg1)])].field_512 = arg3
    if uint256(pIDxAddr_[address(arg1)]) != pIDxName_[arg2]:
        if pIDxName_[arg2]:
            if bool(stor12[uint256(stor9[address(arg1)])][arg2]) != 1:
                revert with 0, 'sorry that names already taken'
    else:
        if not uint256(pIDxAddr_[address(arg1)]):
            if pIDxName_[arg2]:
                if bool(stor12[uint256(stor9[address(arg1)])][arg2]) != 1:
                    revert with 0, 'sorry that names already taken'
        else:
            if arg5 >= myReward[uint256(stor9[address(arg1)])].field_1568:
                if bool(stor12[uint256(stor9[address(arg1)])][arg2]) != 1:
                    revert with 0, 'sorry that names already taken'
    myReward[uint256(stor9[address(arg1)])].field_256 = arg2
    myReward[uint256(stor9[address(arg1)])].field_1568 = arg5
    pIDxName_[arg2] = uint256(pIDxAddr_[address(arg1)])
    if not stor12[uint256(stor9[address(arg1)])][arg2]:
        stor12[uint256(stor9[address(arg1)])][arg2] = 1
        myReward[uint256(stor9[address(arg1)])].field_768++
        plyrNameList_[uint256(stor9[address(arg1)])][stor11[uint256(stor9[address(arg1)])].field_768 + 1] = arg2
    call stor0 with:
       value msg.value / 2 wei
         gas 2300 * is_zero(value) wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    call stor1 with:
       value msg.value / 2 wei
         gas 2300 * is_zero(value) wei
    if arg4 == 1:
        idx = 1
        while idx <= gID_:
            mem[0] = idx
            mem[32] = 4
            mem[96] = 0x2341a1af00000000000000000000000000000000000000000000000000000000
            mem[100] = uint256(pIDxAddr_[address(arg1)])
            mem[132] = arg1
            mem[164] = arg2
            mem[196] = arg3
            mem[228] = arg5
            require ext_code.size(games_[idx])
            call games_[idx].receivePlayerInfo(uint256 arg1, address arg2, bytes32 arg3, uint256 arg4, uint8 arg5) with:
                 gas gas_remaining wei
                args uint256(pIDxAddr_[address(arg1)]), address(arg1), arg2, arg3, arg5
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            idx = idx + 1
            continue 
    emit onNewName(1, arg3, myReward[arg3].field_0, myReward[arg3].field_256, msg.value, block.timestamp, uint256(pIDxAddr_[address(arg1)]), arg1, arg2);
    return 1, arg3
}

function registerNameXname(string arg1, bytes32 arg2, bool arg3, uint8 arg4) payable {
    mem[64] = ceil32(arg1.length) + 128
    mem[96] = arg1.length
    mem[128 len arg1.length] = arg1[all]
    if ext_code.size(msg.sender):
        revert with 0, 'sorry humans only'
    if arg4 < 0:
        revert with 0, 'invalid level'
    if arg4 > 3:
        revert with 0, 'invalid level'
    mem[0] = arg4
    mem[32] = 14
    if msg.value < levelValue_[arg4 << 248]:
        revert with 0, 'sorry request price less than affiliate level'
    if msg.value < nameFee:
        revert with 0, 'umm.....  you have to pay the name fee'
    if arg1.length > 32:
        revert with 0, 'string must be between 1 and 32 characters'
    if arg1.length <= 0:
        revert with 0, 'string must be between 1 and 32 characters'
    require 0 < arg1.length
    if 0x2000000000000000000000000000000000000000000000000000000000000000 == Mask(8, 248, mem[128]):
        revert with 0, 'string cannot start or end with space'
    require arg1.length - 1 < arg1.length
    if 0x2000000000000000000000000000000000000000000000000000000000000000 == Mask(8, 248, mem[arg1.length + 127]):
        revert with 0, 'string cannot start or end with space'
    require 0 < arg1.length
    if Mask(8, 248, mem[128]) != 0x3000000000000000000000000000000000000000000000000000000000000000:
        idx = 0
        s = 0
        while idx < arg1.length:
            require idx < arg1.length
            require idx < arg1.length
            require idx < arg1.length
            if Mask(8, 248, mem[idx + 128]) <= '@':
                if Mask(8, 248, mem[idx + 128]) != 0x2000000000000000000000000000000000000000000000000000000000000000:
                    require idx < arg1.length
                    if Mask(8, 248, mem[idx + 128]) <= '`':
                        if Mask(8, 248, mem[idx + 128]) <= '/':
                            revert with 0, 'string contains invalid characters'
                        require idx < arg1.length
                        if Mask(8, 248, mem[idx + 128]) >= ':':
                            revert with 0, 'string contains invalid characters'
                    else:
                        if Mask(8, 248, mem[idx + 128]) >= '{':
                            require idx < arg1.length
                            if Mask(8, 248, mem[idx + 128]) <= '/':
                                revert with 0, 'string contains invalid characters'
                            require idx < arg1.length
                            if Mask(8, 248, mem[idx + 128]) >= ':':
                                revert with 0, 'string contains invalid characters'
                if 0x2000000000000000000000000000000000000000000000000000000000000000 == Mask(8, 248, mem[idx + 128]):
                    require idx + 1 < arg1.length
                    if 0x2000000000000000000000000000000000000000000000000000000000000000 == Mask(8, 248, mem[idx + 129]):
                        revert with 0, 'string cannot contain consecutive spaces'
                if s:
                    idx = idx + 1
                    s = s
                    continue 
                require idx < arg1.length
                if Mask(8, 248, mem[idx + 128]) >= '0':
                    require idx < arg1.length
                    if Mask(8, 248, mem[idx + 128]) <= '9':
                        idx = idx + 1
                        s = s
                        continue 
            else:
                require idx < arg1.length
                if Mask(8, 248, mem[idx + 128]) < '[':
                    mem[idx + 128 len 8] = Mask(8, -(('mask_shl', 8, 0, 245, ('add', 32, ('mem', ('range', ('add', 128, ('var', 0)), 1)))), 0) + 256, 0) << (('mask_shl', 8, 0, 245, ('add', 32, ('mem', ('range', ('add', 128, ('var', 0)), 1)))), 0) - 256
                    if s:
                        idx = idx + 1
                        s = s
                        continue 
                else:
                    if Mask(8, 248, mem[idx + 128]) != 0x2000000000000000000000000000000000000000000000000000000000000000:
                        require idx < arg1.length
                        if Mask(8, 248, mem[idx + 128]) <= '`':
                            if Mask(8, 248, mem[idx + 128]) <= '/':
                                revert with 0, 'string contains invalid characters'
                            require idx < arg1.length
                            if Mask(8, 248, mem[idx + 128]) >= ':':
                                revert with 0, 'string contains invalid characters'
                        else:
                            if Mask(8, 248, mem[idx + 128]) >= '{':
                                require idx < arg1.length
                                if Mask(8, 248, mem[idx + 128]) <= '/':
                                    revert with 0, 'string contains invalid characters'
                                require idx < arg1.length
                                if Mask(8, 248, mem[idx + 128]) >= ':':
                                    revert with 0, 'string contains invalid characters'
                    if 0x2000000000000000000000000000000000000000000000000000000000000000 == Mask(8, 248, mem[idx + 128]):
                        require idx + 1 < arg1.length
                        if 0x2000000000000000000000000000000000000000000000000000000000000000 == Mask(8, 248, mem[idx + 129]):
                            revert with 0, 'string cannot contain consecutive spaces'
                    if s:
                        idx = idx + 1
                        s = s
                        continue 
                    require idx < arg1.length
                    if Mask(8, 248, mem[idx + 128]) >= '0':
                        require idx < arg1.length
                        if Mask(8, 248, mem[idx + 128]) <= '9':
                            idx = idx + 1
                            s = s
                            continue 
            idx = idx + 1
            s = 1
            continue 
        if bool(s) != 1:
            revert with 0, 'string cannot be only numbers'
        _3826 = mem[128]
        if uint256(pIDxAddr_[address(msg.sender)]):
            if not arg2:
                if uint256(pIDxAddr_[address(msg.sender)]) != pIDxName_[mem[128]]:
                    if pIDxName_[mem[128]]:
                        if bool(stor12[uint256(stor9[address(msg.sender)])][mem[128]]) != 1:
                            revert with 0, 'sorry that names already taken'
                else:
                    if not uint256(pIDxAddr_[address(msg.sender)]):
                        if pIDxName_[mem[128]]:
                            if bool(stor12[uint256(stor9[address(msg.sender)])][mem[128]]) != 1:
                                revert with 0, 'sorry that names already taken'
                    else:
                        if arg4 >= myReward[uint256(stor9[address(msg.sender)])].field_1568:
                            if bool(stor12[uint256(stor9[address(msg.sender)])][mem[128]]) != 1:
                                revert with 0, 'sorry that names already taken'
                myReward[uint256(stor9[address(msg.sender)])].field_256 = mem[128]
                myReward[uint256(stor9[address(msg.sender)])].field_1568 = arg4
                pIDxName_[mem[128]] = uint256(pIDxAddr_[address(msg.sender)])
                if not stor12[uint256(stor9[address(msg.sender)])][mem[128]]:
                    stor12[uint256(stor9[address(msg.sender)])][mem[128]] = 1
                    myReward[uint256(stor9[address(msg.sender)])].field_768++
                    plyrNameList_[uint256(stor9[address(msg.sender)])][stor11[uint256(stor9[address(msg.sender)])].field_768 + 1] = mem[128]
                call stor0 with:
                   value msg.value / 2 wei
                     gas 2300 * is_zero(value) wei
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                call stor1 with:
                   value msg.value / 2 wei
                     gas 2300 * is_zero(value) wei
                if arg3 != 1:
                    emit onNewName(0, 0, myReward[0].field_0, myReward[0].field_256, msg.value, block.timestamp, uint256(pIDxAddr_[address(msg.sender)]), msg.sender, mem[128]);
                else:
                    idx = 1
                    while idx <= gID_:
                        mem[0] = idx
                        mem[32] = 4
                        mem[mem[64]] = 0x2341a1af00000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = uint256(pIDxAddr_[address(msg.sender)])
                        mem[mem[64] + 36] = msg.sender
                        mem[mem[64] + 68] = _3826
                        mem[mem[64] + 100] = 0
                        mem[mem[64] + 132] = arg4
                        require ext_code.size(games_[idx])
                        call games_[idx].receivePlayerInfo(uint256 arg1, address arg2, bytes32 arg3, uint256 arg4, uint8 arg5) with:
                             gas gas_remaining wei
                            args uint256(pIDxAddr_[address(msg.sender)]), msg.sender, _3826, 0, arg4
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        idx = idx + 1
                        continue 
                    emit onNewName(0, 0, myReward[0].field_0, myReward[0].field_256, msg.value, block.timestamp, uint256(pIDxAddr_[address(msg.sender)]), msg.sender, _3826);
            else:
                if mem[128] == arg2:
                    if uint256(pIDxAddr_[address(msg.sender)]) != pIDxName_[mem[128]]:
                        if pIDxName_[mem[128]]:
                            if bool(stor12[uint256(stor9[address(msg.sender)])][mem[128]]) != 1:
                                revert with 0, 'sorry that names already taken'
                    else:
                        if not uint256(pIDxAddr_[address(msg.sender)]):
                            if pIDxName_[mem[128]]:
                                if bool(stor12[uint256(stor9[address(msg.sender)])][mem[128]]) != 1:
                                    revert with 0, 'sorry that names already taken'
                        else:
                            if arg4 >= myReward[uint256(stor9[address(msg.sender)])].field_1568:
                                if bool(stor12[uint256(stor9[address(msg.sender)])][mem[128]]) != 1:
                                    revert with 0, 'sorry that names already taken'
                    myReward[uint256(stor9[address(msg.sender)])].field_256 = mem[128]
                    myReward[uint256(stor9[address(msg.sender)])].field_1568 = arg4
                    pIDxName_[mem[128]] = uint256(pIDxAddr_[address(msg.sender)])
                    if not stor12[uint256(stor9[address(msg.sender)])][mem[128]]:
                        stor12[uint256(stor9[address(msg.sender)])][mem[128]] = 1
                        myReward[uint256(stor9[address(msg.sender)])].field_768++
                        plyrNameList_[uint256(stor9[address(msg.sender)])][stor11[uint256(stor9[address(msg.sender)])].field_768 + 1] = mem[128]
                    call stor0 with:
                       value msg.value / 2 wei
                         gas 2300 * is_zero(value) wei
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    call stor1 with:
                       value msg.value / 2 wei
                         gas 2300 * is_zero(value) wei
                    if arg3 != 1:
                        emit onNewName(0, 0, myReward[0].field_0, myReward[0].field_256, msg.value, block.timestamp, uint256(pIDxAddr_[address(msg.sender)]), msg.sender, mem[128]);
                    else:
                        idx = 1
                        while idx <= gID_:
                            mem[0] = idx
                            mem[32] = 4
                            mem[mem[64]] = 0x2341a1af00000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = uint256(pIDxAddr_[address(msg.sender)])
                            mem[mem[64] + 36] = msg.sender
                            mem[mem[64] + 68] = _3826
                            mem[mem[64] + 100] = 0
                            mem[mem[64] + 132] = arg4
                            require ext_code.size(games_[idx])
                            call games_[idx].receivePlayerInfo(uint256 arg1, address arg2, bytes32 arg3, uint256 arg4, uint8 arg5) with:
                                 gas gas_remaining wei
                                args uint256(pIDxAddr_[address(msg.sender)]), msg.sender, _3826, 0, arg4
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            idx = idx + 1
                            continue 
                        emit onNewName(0, 0, myReward[0].field_0, myReward[0].field_256, msg.value, block.timestamp, uint256(pIDxAddr_[address(msg.sender)]), msg.sender, _3826);
                else:
                    if pIDxName_[arg2] != myReward[uint256(stor9[address(msg.sender)])].field_512:
                        myReward[uint256(stor9[address(msg.sender)])].field_512 = pIDxName_[arg2]
                    if uint256(pIDxAddr_[address(msg.sender)]) != pIDxName_[mem[128]]:
                        if pIDxName_[mem[128]]:
                            if bool(stor12[uint256(stor9[address(msg.sender)])][mem[128]]) != 1:
                                revert with 0, 'sorry that names already taken'
                    else:
                        if not uint256(pIDxAddr_[address(msg.sender)]):
                            if pIDxName_[mem[128]]:
                                if bool(stor12[uint256(stor9[address(msg.sender)])][mem[128]]) != 1:
                                    revert with 0, 'sorry that names already taken'
                        else:
                            if arg4 >= myReward[uint256(stor9[address(msg.sender)])].field_1568:
                                if bool(stor12[uint256(stor9[address(msg.sender)])][mem[128]]) != 1:
                                    revert with 0, 'sorry that names already taken'
                    myReward[uint256(stor9[address(msg.sender)])].field_256 = mem[128]
                    myReward[uint256(stor9[address(msg.sender)])].field_1568 = arg4
                    pIDxName_[mem[128]] = uint256(pIDxAddr_[address(msg.sender)])
                    if not stor12[uint256(stor9[address(msg.sender)])][mem[128]]:
                        stor12[uint256(stor9[address(msg.sender)])][mem[128]] = 1
                        myReward[uint256(stor9[address(msg.sender)])].field_768++
                        plyrNameList_[uint256(stor9[address(msg.sender)])][stor11[uint256(stor9[address(msg.sender)])].field_768 + 1] = mem[128]
                    call stor0 with:
                       value msg.value / 2 wei
                         gas 2300 * is_zero(value) wei
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    call stor1 with:
                       value msg.value / 2 wei
                         gas 2300 * is_zero(value) wei
                    if arg3 != 1:
                        emit onNewName(0, pIDxName_[arg2], myReward[stor10[arg2]].field_0, myReward[stor10[arg2]].field_256, msg.value, block.timestamp, uint256(pIDxAddr_[address(msg.sender)]), msg.sender, mem[128]);
                    else:
                        idx = 1
                        while idx <= gID_:
                            mem[0] = idx
                            mem[32] = 4
                            mem[mem[64]] = 0x2341a1af00000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = uint256(pIDxAddr_[address(msg.sender)])
                            mem[mem[64] + 36] = msg.sender
                            mem[mem[64] + 68] = _3826
                            mem[mem[64] + 100] = pIDxName_[arg2]
                            mem[mem[64] + 132] = arg4
                            require ext_code.size(games_[idx])
                            call games_[idx].receivePlayerInfo(uint256 arg1, address arg2, bytes32 arg3, uint256 arg4, uint8 arg5) with:
                                 gas gas_remaining wei
                                args uint256(pIDxAddr_[address(msg.sender)]), msg.sender, _3826, pIDxName_[arg2], arg4
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            idx = idx + 1
                            continue 
                        emit onNewName(0, pIDxName_[arg2], myReward[stor10[arg2]].field_0, myReward[stor10[arg2]].field_256, msg.value, block.timestamp, uint256(pIDxAddr_[address(msg.sender)]), msg.sender, _3826);
        else:
            pID_++
            uint256(pIDxAddr_[address(msg.sender)]) = pID_ + 1
            myReward[stor8 + 1].field_0 = msg.sender
            if not arg2:
                if uint256(pIDxAddr_[address(msg.sender)]) != pIDxName_[mem[128]]:
                    if pIDxName_[mem[128]]:
                        if bool(stor12[uint256(stor9[address(msg.sender)])][mem[128]]) != 1:
                            revert with 0, 'sorry that names already taken'
                else:
                    if not uint256(pIDxAddr_[address(msg.sender)]):
                        if pIDxName_[mem[128]]:
                            if bool(stor12[uint256(stor9[address(msg.sender)])][mem[128]]) != 1:
                                revert with 0, 'sorry that names already taken'
                    else:
                        if arg4 >= myReward[uint256(stor9[address(msg.sender)])].field_1568:
                            if bool(stor12[uint256(stor9[address(msg.sender)])][mem[128]]) != 1:
                                revert with 0, 'sorry that names already taken'
                myReward[uint256(stor9[address(msg.sender)])].field_256 = mem[128]
                myReward[uint256(stor9[address(msg.sender)])].field_1568 = arg4
                pIDxName_[mem[128]] = uint256(pIDxAddr_[address(msg.sender)])
                if not stor12[uint256(stor9[address(msg.sender)])][mem[128]]:
                    stor12[uint256(stor9[address(msg.sender)])][mem[128]] = 1
                    myReward[uint256(stor9[address(msg.sender)])].field_768++
                    plyrNameList_[uint256(stor9[address(msg.sender)])][stor11[uint256(stor9[address(msg.sender)])].field_768 + 1] = mem[128]
                call stor0 with:
                   value msg.value / 2 wei
                     gas 2300 * is_zero(value) wei
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                call stor1 with:
                   value msg.value / 2 wei
                     gas 2300 * is_zero(value) wei
                if arg3 != 1:
                    emit onNewName(1, 0, myReward[0].field_0, myReward[0].field_256, msg.value, block.timestamp, uint256(pIDxAddr_[address(msg.sender)]), msg.sender, mem[128]);
                else:
                    idx = 1
                    while idx <= gID_:
                        mem[0] = idx
                        mem[32] = 4
                        mem[mem[64]] = 0x2341a1af00000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = uint256(pIDxAddr_[address(msg.sender)])
                        mem[mem[64] + 36] = msg.sender
                        mem[mem[64] + 68] = _3826
                        mem[mem[64] + 100] = 0
                        mem[mem[64] + 132] = arg4
                        require ext_code.size(games_[idx])
                        call games_[idx].receivePlayerInfo(uint256 arg1, address arg2, bytes32 arg3, uint256 arg4, uint8 arg5) with:
                             gas gas_remaining wei
                            args uint256(pIDxAddr_[address(msg.sender)]), msg.sender, _3826, 0, arg4
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        idx = idx + 1
                        continue 
                    emit onNewName(1, 0, myReward[0].field_0, myReward[0].field_256, msg.value, block.timestamp, uint256(pIDxAddr_[address(msg.sender)]), msg.sender, _3826);
            else:
                if mem[128] == arg2:
                    if uint256(pIDxAddr_[address(msg.sender)]) != pIDxName_[mem[128]]:
                        if pIDxName_[mem[128]]:
                            if bool(stor12[uint256(stor9[address(msg.sender)])][mem[128]]) != 1:
                                revert with 0, 'sorry that names already taken'
                    else:
                        if not uint256(pIDxAddr_[address(msg.sender)]):
                            if pIDxName_[mem[128]]:
                                if bool(stor12[uint256(stor9[address(msg.sender)])][mem[128]]) != 1:
                                    revert with 0, 'sorry that names already taken'
                        else:
                            if arg4 >= myReward[uint256(stor9[address(msg.sender)])].field_1568:
                                if bool(stor12[uint256(stor9[address(msg.sender)])][mem[128]]) != 1:
                                    revert with 0, 'sorry that names already taken'
                    myReward[uint256(stor9[address(msg.sender)])].field_256 = mem[128]
                    myReward[uint256(stor9[address(msg.sender)])].field_1568 = arg4
                    pIDxName_[mem[128]] = uint256(pIDxAddr_[address(msg.sender)])
                    if not stor12[uint256(stor9[address(msg.sender)])][mem[128]]:
                        stor12[uint256(stor9[address(msg.sender)])][mem[128]] = 1
                        myReward[uint256(stor9[address(msg.sender)])].field_768++
                        plyrNameList_[uint256(stor9[address(msg.sender)])][stor11[uint256(stor9[address(msg.sender)])].field_768 + 1] = mem[128]
                    call stor0 with:
                       value msg.value / 2 wei
                         gas 2300 * is_zero(value) wei
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    call stor1 with:
                       value msg.value / 2 wei
                         gas 2300 * is_zero(value) wei
                    if arg3 != 1:
                        emit onNewName(1, 0, myReward[0].field_0, myReward[0].field_256, msg.value, block.timestamp, uint256(pIDxAddr_[address(msg.sender)]), msg.sender, mem[128]);
                    else:
                        idx = 1
                        while idx <= gID_:
                            mem[0] = idx
                            mem[32] = 4
                            mem[mem[64]] = 0x2341a1af00000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = uint256(pIDxAddr_[address(msg.sender)])
                            mem[mem[64] + 36] = msg.sender
                            mem[mem[64] + 68] = _3826
                            mem[mem[64] + 100] = 0
                            mem[mem[64] + 132] = arg4
                            require ext_code.size(games_[idx])
                            call games_[idx].receivePlayerInfo(uint256 arg1, address arg2, bytes32 arg3, uint256 arg4, uint8 arg5) with:
                                 gas gas_remaining wei
                                args uint256(pIDxAddr_[address(msg.sender)]), msg.sender, _3826, 0, arg4
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            idx = idx + 1
                            continue 
                        emit onNewName(1, 0, myReward[0].field_0, myReward[0].field_256, msg.value, block.timestamp, uint256(pIDxAddr_[address(msg.sender)]), msg.sender, _3826);
                else:
                    if pIDxName_[arg2] != myReward[uint256(stor9[address(msg.sender)])].field_512:
                        myReward[uint256(stor9[address(msg.sender)])].field_512 = pIDxName_[arg2]
                    if uint256(pIDxAddr_[address(msg.sender)]) != pIDxName_[mem[128]]:
                        if pIDxName_[mem[128]]:
                            if bool(stor12[uint256(stor9[address(msg.sender)])][mem[128]]) != 1:
                                revert with 0, 'sorry that names already taken'
                    else:
                        if not uint256(pIDxAddr_[address(msg.sender)]):
                            if pIDxName_[mem[128]]:
                                if bool(stor12[uint256(stor9[address(msg.sender)])][mem[128]]) != 1:
                                    revert with 0, 'sorry that names already taken'
                        else:
                            if arg4 >= myReward[uint256(stor9[address(msg.sender)])].field_1568:
                                if bool(stor12[uint256(stor9[address(msg.sender)])][mem[128]]) != 1:
                                    revert with 0, 'sorry that names already taken'
                    myReward[uint256(stor9[address(msg.sender)])].field_256 = mem[128]
                    myReward[uint256(stor9[address(msg.sender)])].field_1568 = arg4
                    pIDxName_[mem[128]] = uint256(pIDxAddr_[address(msg.sender)])
                    if not stor12[uint256(stor9[address(msg.sender)])][mem[128]]:
                        stor12[uint256(stor9[address(msg.sender)])][mem[128]] = 1
                        myReward[uint256(stor9[address(msg.sender)])].field_768++
                        plyrNameList_[uint256(stor9[address(msg.sender)])][stor11[uint256(stor9[address(msg.sender)])].field_768 + 1] = mem[128]
                    call stor0 with:
                       value msg.value / 2 wei
                         gas 2300 * is_zero(value) wei
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    call stor1 with:
                       value msg.value / 2 wei
                         gas 2300 * is_zero(value) wei
                    if arg3 != 1:
                        emit onNewName(1, pIDxName_[arg2], myReward[stor10[arg2]].field_0, myReward[stor10[arg2]].field_256, msg.value, block.timestamp, uint256(pIDxAddr_[address(msg.sender)]), msg.sender, mem[128]);
                    else:
                        idx = 1
                        while idx <= gID_:
                            mem[0] = idx
                            mem[32] = 4
                            mem[mem[64]] = 0x2341a1af00000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = uint256(pIDxAddr_[address(msg.sender)])
                            mem[mem[64] + 36] = msg.sender
                            mem[mem[64] + 68] = _3826
                            mem[mem[64] + 100] = pIDxName_[arg2]
                            mem[mem[64] + 132] = arg4
                            require ext_code.size(games_[idx])
                            call games_[idx].receivePlayerInfo(uint256 arg1, address arg2, bytes32 arg3, uint256 arg4, uint8 arg5) with:
                                 gas gas_remaining wei
                                args uint256(pIDxAddr_[address(msg.sender)]), msg.sender, _3826, pIDxName_[arg2], arg4
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            idx = idx + 1
                            continue 
                        emit onNewName(1, pIDxName_[arg2], myReward[stor10[arg2]].field_0, myReward[stor10[arg2]].field_256, msg.value, block.timestamp, uint256(pIDxAddr_[address(msg.sender)]), msg.sender, _3826);
    else:
        require 1 < arg1.length
        if 0x7800000000000000000000000000000000000000000000000000000000000000 == Mask(8, 248, mem[129]):
            revert with 0, 'string cannot start with 0x'
        require 1 < arg1.length
        if 0x5800000000000000000000000000000000000000000000000000000000000000 == Mask(8, 248, mem[129]):
            revert with 0, 'string cannot start with 0X'
        idx = 0
        s = 0
        while idx < arg1.length:
            require idx < arg1.length
            require idx < arg1.length
            require idx < arg1.length
            if Mask(8, 248, mem[idx + 128]) <= '@':
                if Mask(8, 248, mem[idx + 128]) != 0x2000000000000000000000000000000000000000000000000000000000000000:
                    require idx < arg1.length
                    if Mask(8, 248, mem[idx + 128]) <= '`':
                        if Mask(8, 248, mem[idx + 128]) <= '/':
                            revert with 0, 'string contains invalid characters'
                        require idx < arg1.length
                        if Mask(8, 248, mem[idx + 128]) >= ':':
                            revert with 0, 'string contains invalid characters'
                    else:
                        if Mask(8, 248, mem[idx + 128]) >= '{':
                            require idx < arg1.length
                            if Mask(8, 248, mem[idx + 128]) <= '/':
                                revert with 0, 'string contains invalid characters'
                            require idx < arg1.length
                            if Mask(8, 248, mem[idx + 128]) >= ':':
                                revert with 0, 'string contains invalid characters'
                if 0x2000000000000000000000000000000000000000000000000000000000000000 == Mask(8, 248, mem[idx + 128]):
                    require idx + 1 < arg1.length
                    if 0x2000000000000000000000000000000000000000000000000000000000000000 == Mask(8, 248, mem[idx + 129]):
                        revert with 0, 'string cannot contain consecutive spaces'
                if s:
                    idx = idx + 1
                    s = s
                    continue 
                require idx < arg1.length
                if Mask(8, 248, mem[idx + 128]) >= '0':
                    require idx < arg1.length
                    if Mask(8, 248, mem[idx + 128]) <= '9':
                        idx = idx + 1
                        s = s
                        continue 
            else:
                require idx < arg1.length
                if Mask(8, 248, mem[idx + 128]) < '[':
                    mem[idx + 128 len 8] = Mask(8, -(('mask_shl', 8, 0, 245, ('add', 32, ('mem', ('range', ('add', 128, ('var', 0)), 1)))), 0) + 256, 0) << (('mask_shl', 8, 0, 245, ('add', 32, ('mem', ('range', ('add', 128, ('var', 0)), 1)))), 0) - 256
                    if s:
                        idx = idx + 1
                        s = s
                        continue 
                else:
                    if Mask(8, 248, mem[idx + 128]) != 0x2000000000000000000000000000000000000000000000000000000000000000:
                        require idx < arg1.length
                        if Mask(8, 248, mem[idx + 128]) <= '`':
                            if Mask(8, 248, mem[idx + 128]) <= '/':
                                revert with 0, 'string contains invalid characters'
                            require idx < arg1.length
                            if Mask(8, 248, mem[idx + 128]) >= ':':
                                revert with 0, 'string contains invalid characters'
                        else:
                            if Mask(8, 248, mem[idx + 128]) >= '{':
                                require idx < arg1.length
                                if Mask(8, 248, mem[idx + 128]) <= '/':
                                    revert with 0, 'string contains invalid characters'
                                require idx < arg1.length
                                if Mask(8, 248, mem[idx + 128]) >= ':':
                                    revert with 0, 'string contains invalid characters'
                    if 0x2000000000000000000000000000000000000000000000000000000000000000 == Mask(8, 248, mem[idx + 128]):
                        require idx + 1 < arg1.length
                        if 0x2000000000000000000000000000000000000000000000000000000000000000 == Mask(8, 248, mem[idx + 129]):
                            revert with 0, 'string cannot contain consecutive spaces'
                    if s:
                        idx = idx + 1
                        s = s
                        continue 
                    require idx < arg1.length
                    if Mask(8, 248, mem[idx + 128]) >= '0':
                        require idx < arg1.length
                        if Mask(8, 248, mem[idx + 128]) <= '9':
                            idx = idx + 1
                            s = s
                            continue 
            idx = idx + 1
            s = 1
            continue 
        if bool(s) != 1:
            revert with 0, 'string cannot be only numbers'
        _3830 = mem[128]
        if uint256(pIDxAddr_[address(msg.sender)]):
            if not arg2:
                if uint256(pIDxAddr_[address(msg.sender)]) != pIDxName_[mem[128]]:
                    if pIDxName_[mem[128]]:
                        if bool(stor12[uint256(stor9[address(msg.sender)])][mem[128]]) != 1:
                            revert with 0, 'sorry that names already taken'
                else:
                    if not uint256(pIDxAddr_[address(msg.sender)]):
                        if pIDxName_[mem[128]]:
                            if bool(stor12[uint256(stor9[address(msg.sender)])][mem[128]]) != 1:
                                revert with 0, 'sorry that names already taken'
                    else:
                        if arg4 >= myReward[uint256(stor9[address(msg.sender)])].field_1568:
                            if bool(stor12[uint256(stor9[address(msg.sender)])][mem[128]]) != 1:
                                revert with 0, 'sorry that names already taken'
                myReward[uint256(stor9[address(msg.sender)])].field_256 = mem[128]
                myReward[uint256(stor9[address(msg.sender)])].field_1568 = arg4
                pIDxName_[mem[128]] = uint256(pIDxAddr_[address(msg.sender)])
                if not stor12[uint256(stor9[address(msg.sender)])][mem[128]]:
                    stor12[uint256(stor9[address(msg.sender)])][mem[128]] = 1
                    myReward[uint256(stor9[address(msg.sender)])].field_768++
                    plyrNameList_[uint256(stor9[address(msg.sender)])][stor11[uint256(stor9[address(msg.sender)])].field_768 + 1] = mem[128]
                call stor0 with:
                   value msg.value / 2 wei
                     gas 2300 * is_zero(value) wei
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                call stor1 with:
                   value msg.value / 2 wei
                     gas 2300 * is_zero(value) wei
                if arg3 != 1:
                    emit onNewName(0, 0, myReward[0].field_0, myReward[0].field_256, msg.value, block.timestamp, uint256(pIDxAddr_[address(msg.sender)]), msg.sender, mem[128]);
                else:
                    idx = 1
                    while idx <= gID_:
                        mem[0] = idx
                        mem[32] = 4
                        mem[mem[64]] = 0x2341a1af00000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = uint256(pIDxAddr_[address(msg.sender)])
                        mem[mem[64] + 36] = msg.sender
                        mem[mem[64] + 68] = _3830
                        mem[mem[64] + 100] = 0
                        mem[mem[64] + 132] = arg4
                        require ext_code.size(games_[idx])
                        call games_[idx].receivePlayerInfo(uint256 arg1, address arg2, bytes32 arg3, uint256 arg4, uint8 arg5) with:
                             gas gas_remaining wei
                            args uint256(pIDxAddr_[address(msg.sender)]), msg.sender, _3830, 0, arg4
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        idx = idx + 1
                        continue 
                    emit onNewName(0, 0, myReward[0].field_0, myReward[0].field_256, msg.value, block.timestamp, uint256(pIDxAddr_[address(msg.sender)]), msg.sender, _3830);
            else:
                if mem[128] == arg2:
                    if uint256(pIDxAddr_[address(msg.sender)]) != pIDxName_[mem[128]]:
                        if pIDxName_[mem[128]]:
                            if bool(stor12[uint256(stor9[address(msg.sender)])][mem[128]]) != 1:
                                revert with 0, 'sorry that names already taken'
                    else:
                        if not uint256(pIDxAddr_[address(msg.sender)]):
                            if pIDxName_[mem[128]]:
                                if bool(stor12[uint256(stor9[address(msg.sender)])][mem[128]]) != 1:
                                    revert with 0, 'sorry that names already taken'
                        else:
                            if arg4 >= myReward[uint256(stor9[address(msg.sender)])].field_1568:
                                if bool(stor12[uint256(stor9[address(msg.sender)])][mem[128]]) != 1:
                                    revert with 0, 'sorry that names already taken'
                    myReward[uint256(stor9[address(msg.sender)])].field_256 = mem[128]
                    myReward[uint256(stor9[address(msg.sender)])].field_1568 = arg4
                    pIDxName_[mem[128]] = uint256(pIDxAddr_[address(msg.sender)])
                    if not stor12[uint256(stor9[address(msg.sender)])][mem[128]]:
                        stor12[uint256(stor9[address(msg.sender)])][mem[128]] = 1
                        myReward[uint256(stor9[address(msg.sender)])].field_768++
                        plyrNameList_[uint256(stor9[address(msg.sender)])][stor11[uint256(stor9[address(msg.sender)])].field_768 + 1] = mem[128]
                    call stor0 with:
                       value msg.value / 2 wei
                         gas 2300 * is_zero(value) wei
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    call stor1 with:
                       value msg.value / 2 wei
                         gas 2300 * is_zero(value) wei
                    if arg3 != 1:
                        emit onNewName(0, 0, myReward[0].field_0, myReward[0].field_256, msg.value, block.timestamp, uint256(pIDxAddr_[address(msg.sender)]), msg.sender, mem[128]);
                    else:
                        idx = 1
                        while idx <= gID_:
                            mem[0] = idx
                            mem[32] = 4
                            mem[mem[64]] = 0x2341a1af00000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = uint256(pIDxAddr_[address(msg.sender)])
                            mem[mem[64] + 36] = msg.sender
                            mem[mem[64] + 68] = _3830
                            mem[mem[64] + 100] = 0
                            mem[mem[64] + 132] = arg4
                            require ext_code.size(games_[idx])
                            call games_[idx].receivePlayerInfo(uint256 arg1, address arg2, bytes32 arg3, uint256 arg4, uint8 arg5) with:
                                 gas gas_remaining wei
                                args uint256(pIDxAddr_[address(msg.sender)]), msg.sender, _3830, 0, arg4
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            idx = idx + 1
                            continue 
                        emit onNewName(0, 0, myReward[0].field_0, myReward[0].field_256, msg.value, block.timestamp, uint256(pIDxAddr_[address(msg.sender)]), msg.sender, _3830);
                else:
                    if pIDxName_[arg2] != myReward[uint256(stor9[address(msg.sender)])].field_512:
                        myReward[uint256(stor9[address(msg.sender)])].field_512 = pIDxName_[arg2]
                    if uint256(pIDxAddr_[address(msg.sender)]) != pIDxName_[mem[128]]:
                        if pIDxName_[mem[128]]:
                            if bool(stor12[uint256(stor9[address(msg.sender)])][mem[128]]) != 1:
                                revert with 0, 'sorry that names already taken'
                    else:
                        if not uint256(pIDxAddr_[address(msg.sender)]):
                            if pIDxName_[mem[128]]:
                                if bool(stor12[uint256(stor9[address(msg.sender)])][mem[128]]) != 1:
                                    revert with 0, 'sorry that names already taken'
                        else:
                            if arg4 >= myReward[uint256(stor9[address(msg.sender)])].field_1568:
                                if bool(stor12[uint256(stor9[address(msg.sender)])][mem[128]]) != 1:
                                    revert with 0, 'sorry that names already taken'
                    myReward[uint256(stor9[address(msg.sender)])].field_256 = mem[128]
                    myReward[uint256(stor9[address(msg.sender)])].field_1568 = arg4
                    pIDxName_[mem[128]] = uint256(pIDxAddr_[address(msg.sender)])
                    if not stor12[uint256(stor9[address(msg.sender)])][mem[128]]:
                        stor12[uint256(stor9[address(msg.sender)])][mem[128]] = 1
                        myReward[uint256(stor9[address(msg.sender)])].field_768++
                        plyrNameList_[uint256(stor9[address(msg.sender)])][stor11[uint256(stor9[address(msg.sender)])].field_768 + 1] = mem[128]
                    call stor0 with:
                       value msg.value / 2 wei
                         gas 2300 * is_zero(value) wei
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    call stor1 with:
                       value msg.value / 2 wei
                         gas 2300 * is_zero(value) wei
                    if arg3 != 1:
                        emit onNewName(0, pIDxName_[arg2], myReward[stor10[arg2]].field_0, myReward[stor10[arg2]].field_256, msg.value, block.timestamp, uint256(pIDxAddr_[address(msg.sender)]), msg.sender, mem[128]);
                    else:
                        idx = 1
                        while idx <= gID_:
                            mem[0] = idx
                            mem[32] = 4
                            mem[mem[64]] = 0x2341a1af00000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = uint256(pIDxAddr_[address(msg.sender)])
                            mem[mem[64] + 36] = msg.sender
                            mem[mem[64] + 68] = _3830
                            mem[mem[64] + 100] = pIDxName_[arg2]
                            mem[mem[64] + 132] = arg4
                            require ext_code.size(games_[idx])
                            call games_[idx].receivePlayerInfo(uint256 arg1, address arg2, bytes32 arg3, uint256 arg4, uint8 arg5) with:
                                 gas gas_remaining wei
                                args uint256(pIDxAddr_[address(msg.sender)]), msg.sender, _3830, pIDxName_[arg2], arg4
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            idx = idx + 1
                            continue 
                        emit onNewName(0, pIDxName_[arg2], myReward[stor10[arg2]].field_0, myReward[stor10[arg2]].field_256, msg.value, block.timestamp, uint256(pIDxAddr_[address(msg.sender)]), msg.sender, _3830);
        else:
            pID_++
            uint256(pIDxAddr_[address(msg.sender)]) = pID_ + 1
            myReward[stor8 + 1].field_0 = msg.sender
            if not arg2:
                if uint256(pIDxAddr_[address(msg.sender)]) != pIDxName_[mem[128]]:
                    if pIDxName_[mem[128]]:
                        if bool(stor12[uint256(stor9[address(msg.sender)])][mem[128]]) != 1:
                            revert with 0, 'sorry that names already taken'
                else:
                    if not uint256(pIDxAddr_[address(msg.sender)]):
                        if pIDxName_[mem[128]]:
                            if bool(stor12[uint256(stor9[address(msg.sender)])][mem[128]]) != 1:
                                revert with 0, 'sorry that names already taken'
                    else:
                        if arg4 >= myReward[uint256(stor9[address(msg.sender)])].field_1568:
                            if bool(stor12[uint256(stor9[address(msg.sender)])][mem[128]]) != 1:
                                revert with 0, 'sorry that names already taken'
                myReward[uint256(stor9[address(msg.sender)])].field_256 = mem[128]
                myReward[uint256(stor9[address(msg.sender)])].field_1568 = arg4
                pIDxName_[mem[128]] = uint256(pIDxAddr_[address(msg.sender)])
                if not stor12[uint256(stor9[address(msg.sender)])][mem[128]]:
                    stor12[uint256(stor9[address(msg.sender)])][mem[128]] = 1
                    myReward[uint256(stor9[address(msg.sender)])].field_768++
                    plyrNameList_[uint256(stor9[address(msg.sender)])][stor11[uint256(stor9[address(msg.sender)])].field_768 + 1] = mem[128]
                call stor0 with:
                   value msg.value / 2 wei
                     gas 2300 * is_zero(value) wei
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                call stor1 with:
                   value msg.value / 2 wei
                     gas 2300 * is_zero(value) wei
                if arg3 != 1:
                    emit onNewName(1, 0, myReward[0].field_0, myReward[0].field_256, msg.value, block.timestamp, uint256(pIDxAddr_[address(msg.sender)]), msg.sender, mem[128]);
                else:
                    idx = 1
                    while idx <= gID_:
                        mem[0] = idx
                        mem[32] = 4
                        mem[mem[64]] = 0x2341a1af00000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = uint256(pIDxAddr_[address(msg.sender)])
                        mem[mem[64] + 36] = msg.sender
                        mem[mem[64] + 68] = _3830
                        mem[mem[64] + 100] = 0
                        mem[mem[64] + 132] = arg4
                        require ext_code.size(games_[idx])
                        call games_[idx].receivePlayerInfo(uint256 arg1, address arg2, bytes32 arg3, uint256 arg4, uint8 arg5) with:
                             gas gas_remaining wei
                            args uint256(pIDxAddr_[address(msg.sender)]), msg.sender, _3830, 0, arg4
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        idx = idx + 1
                        continue 
                    emit onNewName(1, 0, myReward[0].field_0, myReward[0].field_256, msg.value, block.timestamp, uint256(pIDxAddr_[address(msg.sender)]), msg.sender, _3830);
            else:
                if mem[128] == arg2:
                    if uint256(pIDxAddr_[address(msg.sender)]) != pIDxName_[mem[128]]:
                        if pIDxName_[mem[128]]:
                            if bool(stor12[uint256(stor9[address(msg.sender)])][mem[128]]) != 1:
                                revert with 0, 'sorry that names already taken'
                    else:
                        if not uint256(pIDxAddr_[address(msg.sender)]):
                            if pIDxName_[mem[128]]:
                                if bool(stor12[uint256(stor9[address(msg.sender)])][mem[128]]) != 1:
                                    revert with 0, 'sorry that names already taken'
                        else:
                            if arg4 >= myReward[uint256(stor9[address(msg.sender)])].field_1568:
                                if bool(stor12[uint256(stor9[address(msg.sender)])][mem[128]]) != 1:
                                    revert with 0, 'sorry that names already taken'
                    myReward[uint256(stor9[address(msg.sender)])].field_256 = mem[128]
                    myReward[uint256(stor9[address(msg.sender)])].field_1568 = arg4
                    pIDxName_[mem[128]] = uint256(pIDxAddr_[address(msg.sender)])
                    if not stor12[uint256(stor9[address(msg.sender)])][mem[128]]:
                        stor12[uint256(stor9[address(msg.sender)])][mem[128]] = 1
                        myReward[uint256(stor9[address(msg.sender)])].field_768++
                        plyrNameList_[uint256(stor9[address(msg.sender)])][stor11[uint256(stor9[address(msg.sender)])].field_768 + 1] = mem[128]
                    call stor0 with:
                       value msg.value / 2 wei
                         gas 2300 * is_zero(value) wei
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    call stor1 with:
                       value msg.value / 2 wei
                         gas 2300 * is_zero(value) wei
                    if arg3 != 1:
                        emit onNewName(1, 0, myReward[0].field_0, myReward[0].field_256, msg.value, block.timestamp, uint256(pIDxAddr_[address(msg.sender)]), msg.sender, mem[128]);
                    else:
                        idx = 1
                        while idx <= gID_:
                            mem[0] = idx
                            mem[32] = 4
                            mem[mem[64]] = 0x2341a1af00000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = uint256(pIDxAddr_[address(msg.sender)])
                            mem[mem[64] + 36] = msg.sender
                            mem[mem[64] + 68] = _3830
                            mem[mem[64] + 100] = 0
                            mem[mem[64] + 132] = arg4
                            require ext_code.size(games_[idx])
                            call games_[idx].receivePlayerInfo(uint256 arg1, address arg2, bytes32 arg3, uint256 arg4, uint8 arg5) with:
                                 gas gas_remaining wei
                                args uint256(pIDxAddr_[address(msg.sender)]), msg.sender, _3830, 0, arg4
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            idx = idx + 1
                            continue 
                        emit onNewName(1, 0, myReward[0].field_0, myReward[0].field_256, msg.value, block.timestamp, uint256(pIDxAddr_[address(msg.sender)]), msg.sender, _3830);
                else:
                    if pIDxName_[arg2] != myReward[uint256(stor9[address(msg.sender)])].field_512:
                        myReward[uint256(stor9[address(msg.sender)])].field_512 = pIDxName_[arg2]
                    if uint256(pIDxAddr_[address(msg.sender)]) != pIDxName_[mem[128]]:
                        if pIDxName_[mem[128]]:
                            if bool(stor12[uint256(stor9[address(msg.sender)])][mem[128]]) != 1:
                                revert with 0, 'sorry that names already taken'
                    else:
                        if not uint256(pIDxAddr_[address(msg.sender)]):
                            if pIDxName_[mem[128]]:
                                if bool(stor12[uint256(stor9[address(msg.sender)])][mem[128]]) != 1:
                                    revert with 0, 'sorry that names already taken'
                        else:
                            if arg4 >= myReward[uint256(stor9[address(msg.sender)])].field_1568:
                                if bool(stor12[uint256(stor9[address(msg.sender)])][mem[128]]) != 1:
                                    revert with 0, 'sorry that names already taken'
                    myReward[uint256(stor9[address(msg.sender)])].field_256 = mem[128]
                    myReward[uint256(stor9[address(msg.sender)])].field_1568 = arg4
                    pIDxName_[mem[128]] = uint256(pIDxAddr_[address(msg.sender)])
                    if not stor12[uint256(stor9[address(msg.sender)])][mem[128]]:
                        stor12[uint256(stor9[address(msg.sender)])][mem[128]] = 1
                        myReward[uint256(stor9[address(msg.sender)])].field_768++
                        plyrNameList_[uint256(stor9[address(msg.sender)])][stor11[uint256(stor9[address(msg.sender)])].field_768 + 1] = mem[128]
                    call stor0 with:
                       value msg.value / 2 wei
                         gas 2300 * is_zero(value) wei
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    call stor1 with:
                       value msg.value / 2 wei
                         gas 2300 * is_zero(value) wei
                    if arg3 != 1:
                        emit onNewName(1, pIDxName_[arg2], myReward[stor10[arg2]].field_0, myReward[stor10[arg2]].field_256, msg.value, block.timestamp, uint256(pIDxAddr_[address(msg.sender)]), msg.sender, mem[128]);
                    else:
                        idx = 1
                        while idx <= gID_:
                            mem[0] = idx
                            mem[32] = 4
                            mem[mem[64]] = 0x2341a1af00000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = uint256(pIDxAddr_[address(msg.sender)])
                            mem[mem[64] + 36] = msg.sender
                            mem[mem[64] + 68] = _3830
                            mem[mem[64] + 100] = pIDxName_[arg2]
                            mem[mem[64] + 132] = arg4
                            require ext_code.size(games_[idx])
                            call games_[idx].receivePlayerInfo(uint256 arg1, address arg2, bytes32 arg3, uint256 arg4, uint8 arg5) with:
                                 gas gas_remaining wei
                                args uint256(pIDxAddr_[address(msg.sender)]), msg.sender, _3830, pIDxName_[arg2], arg4
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            idx = idx + 1
                            continue 
                        emit onNewName(1, pIDxName_[arg2], myReward[stor10[arg2]].field_0, myReward[stor10[arg2]].field_256, msg.value, block.timestamp, uint256(pIDxAddr_[address(msg.sender)]), msg.sender, _3830);
}

function registerNameXaddr(string arg1, address arg2, bool arg3, uint8 arg4) payable {
    mem[64] = ceil32(arg1.length) + 128
    mem[96] = arg1.length
    mem[128 len arg1.length] = arg1[all]
    if ext_code.size(msg.sender):
        revert with 0, 'sorry humans only'
    if arg4 < 0:
        revert with 0, 'invalid level'
    if arg4 > 3:
        revert with 0, 'invalid level'
    mem[0] = arg4
    mem[32] = 14
    if msg.value < levelValue_[arg4 << 248]:
        revert with 0, 'sorry request price less than affiliate level'
    if msg.value < nameFee:
        revert with 0, 'umm.....  you have to pay the name fee'
    if arg1.length > 32:
        revert with 0, 'string must be between 1 and 32 characters'
    if arg1.length <= 0:
        revert with 0, 'string must be between 1 and 32 characters'
    require 0 < arg1.length
    if 0x2000000000000000000000000000000000000000000000000000000000000000 == Mask(8, 248, mem[128]):
        revert with 0, 'string cannot start or end with space'
    require arg1.length - 1 < arg1.length
    if 0x2000000000000000000000000000000000000000000000000000000000000000 == Mask(8, 248, mem[arg1.length + 127]):
        revert with 0, 'string cannot start or end with space'
    require 0 < arg1.length
    if Mask(8, 248, mem[128]) != 0x3000000000000000000000000000000000000000000000000000000000000000:
        idx = 0
        s = 0
        while idx < arg1.length:
            require idx < arg1.length
            require idx < arg1.length
            require idx < arg1.length
            if Mask(8, 248, mem[idx + 128]) <= '@':
                if Mask(8, 248, mem[idx + 128]) != 0x2000000000000000000000000000000000000000000000000000000000000000:
                    require idx < arg1.length
                    if Mask(8, 248, mem[idx + 128]) <= '`':
                        if Mask(8, 248, mem[idx + 128]) <= '/':
                            revert with 0, 'string contains invalid characters'
                        require idx < arg1.length
                        if Mask(8, 248, mem[idx + 128]) >= ':':
                            revert with 0, 'string contains invalid characters'
                    else:
                        if Mask(8, 248, mem[idx + 128]) >= '{':
                            require idx < arg1.length
                            if Mask(8, 248, mem[idx + 128]) <= '/':
                                revert with 0, 'string contains invalid characters'
                            require idx < arg1.length
                            if Mask(8, 248, mem[idx + 128]) >= ':':
                                revert with 0, 'string contains invalid characters'
                if 0x2000000000000000000000000000000000000000000000000000000000000000 == Mask(8, 248, mem[idx + 128]):
                    require idx + 1 < arg1.length
                    if 0x2000000000000000000000000000000000000000000000000000000000000000 == Mask(8, 248, mem[idx + 129]):
                        revert with 0, 'string cannot contain consecutive spaces'
                if s:
                    idx = idx + 1
                    s = s
                    continue 
                require idx < arg1.length
                if Mask(8, 248, mem[idx + 128]) >= '0':
                    require idx < arg1.length
                    if Mask(8, 248, mem[idx + 128]) <= '9':
                        idx = idx + 1
                        s = s
                        continue 
            else:
                require idx < arg1.length
                if Mask(8, 248, mem[idx + 128]) < '[':
                    mem[idx + 128 len 8] = Mask(8, -(('mask_shl', 8, 0, 245, ('add', 32, ('mem', ('range', ('add', 128, ('var', 0)), 1)))), 0) + 256, 0) << (('mask_shl', 8, 0, 245, ('add', 32, ('mem', ('range', ('add', 128, ('var', 0)), 1)))), 0) - 256
                    if s:
                        idx = idx + 1
                        s = s
                        continue 
                else:
                    if Mask(8, 248, mem[idx + 128]) != 0x2000000000000000000000000000000000000000000000000000000000000000:
                        require idx < arg1.length
                        if Mask(8, 248, mem[idx + 128]) <= '`':
                            if Mask(8, 248, mem[idx + 128]) <= '/':
                                revert with 0, 'string contains invalid characters'
                            require idx < arg1.length
                            if Mask(8, 248, mem[idx + 128]) >= ':':
                                revert with 0, 'string contains invalid characters'
                        else:
                            if Mask(8, 248, mem[idx + 128]) >= '{':
                                require idx < arg1.length
                                if Mask(8, 248, mem[idx + 128]) <= '/':
                                    revert with 0, 'string contains invalid characters'
                                require idx < arg1.length
                                if Mask(8, 248, mem[idx + 128]) >= ':':
                                    revert with 0, 'string contains invalid characters'
                    if 0x2000000000000000000000000000000000000000000000000000000000000000 == Mask(8, 248, mem[idx + 128]):
                        require idx + 1 < arg1.length
                        if 0x2000000000000000000000000000000000000000000000000000000000000000 == Mask(8, 248, mem[idx + 129]):
                            revert with 0, 'string cannot contain consecutive spaces'
                    if s:
                        idx = idx + 1
                        s = s
                        continue 
                    require idx < arg1.length
                    if Mask(8, 248, mem[idx + 128]) >= '0':
                        require idx < arg1.length
                        if Mask(8, 248, mem[idx + 128]) <= '9':
                            idx = idx + 1
                            s = s
                            continue 
            idx = idx + 1
            s = 1
            continue 
        if bool(s) != 1:
            revert with 0, 'string cannot be only numbers'
        _3826 = mem[128]
        if uint256(pIDxAddr_[address(msg.sender)]):
            if not arg2:
                if uint256(pIDxAddr_[address(msg.sender)]) != pIDxName_[mem[128]]:
                    if pIDxName_[mem[128]]:
                        if bool(stor12[uint256(stor9[address(msg.sender)])][mem[128]]) != 1:
                            revert with 0, 'sorry that names already taken'
                else:
                    if not uint256(pIDxAddr_[address(msg.sender)]):
                        if pIDxName_[mem[128]]:
                            if bool(stor12[uint256(stor9[address(msg.sender)])][mem[128]]) != 1:
                                revert with 0, 'sorry that names already taken'
                    else:
                        if arg4 >= myReward[uint256(stor9[address(msg.sender)])].field_1568:
                            if bool(stor12[uint256(stor9[address(msg.sender)])][mem[128]]) != 1:
                                revert with 0, 'sorry that names already taken'
                myReward[uint256(stor9[address(msg.sender)])].field_256 = mem[128]
                myReward[uint256(stor9[address(msg.sender)])].field_1568 = arg4
                pIDxName_[mem[128]] = uint256(pIDxAddr_[address(msg.sender)])
                if not stor12[uint256(stor9[address(msg.sender)])][mem[128]]:
                    stor12[uint256(stor9[address(msg.sender)])][mem[128]] = 1
                    myReward[uint256(stor9[address(msg.sender)])].field_768++
                    plyrNameList_[uint256(stor9[address(msg.sender)])][stor11[uint256(stor9[address(msg.sender)])].field_768 + 1] = mem[128]
                call stor0 with:
                   value msg.value / 2 wei
                     gas 2300 * is_zero(value) wei
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                call stor1 with:
                   value msg.value / 2 wei
                     gas 2300 * is_zero(value) wei
                if arg3 != 1:
                    emit onNewName(0, 0, myReward[0].field_0, myReward[0].field_256, msg.value, block.timestamp, uint256(pIDxAddr_[address(msg.sender)]), msg.sender, mem[128]);
                else:
                    idx = 1
                    while idx <= gID_:
                        mem[0] = idx
                        mem[32] = 4
                        mem[mem[64]] = 0x2341a1af00000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = uint256(pIDxAddr_[address(msg.sender)])
                        mem[mem[64] + 36] = msg.sender
                        mem[mem[64] + 68] = _3826
                        mem[mem[64] + 100] = 0
                        mem[mem[64] + 132] = arg4
                        require ext_code.size(games_[idx])
                        call games_[idx].receivePlayerInfo(uint256 arg1, address arg2, bytes32 arg3, uint256 arg4, uint8 arg5) with:
                             gas gas_remaining wei
                            args uint256(pIDxAddr_[address(msg.sender)]), msg.sender, _3826, 0, arg4
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        idx = idx + 1
                        continue 
                    emit onNewName(0, 0, myReward[0].field_0, myReward[0].field_256, msg.value, block.timestamp, uint256(pIDxAddr_[address(msg.sender)]), msg.sender, _3826);
            else:
                if arg2 == msg.sender:
                    if uint256(pIDxAddr_[address(msg.sender)]) != pIDxName_[mem[128]]:
                        if pIDxName_[mem[128]]:
                            if bool(stor12[uint256(stor9[address(msg.sender)])][mem[128]]) != 1:
                                revert with 0, 'sorry that names already taken'
                    else:
                        if not uint256(pIDxAddr_[address(msg.sender)]):
                            if pIDxName_[mem[128]]:
                                if bool(stor12[uint256(stor9[address(msg.sender)])][mem[128]]) != 1:
                                    revert with 0, 'sorry that names already taken'
                        else:
                            if arg4 >= myReward[uint256(stor9[address(msg.sender)])].field_1568:
                                if bool(stor12[uint256(stor9[address(msg.sender)])][mem[128]]) != 1:
                                    revert with 0, 'sorry that names already taken'
                    myReward[uint256(stor9[address(msg.sender)])].field_256 = mem[128]
                    myReward[uint256(stor9[address(msg.sender)])].field_1568 = arg4
                    pIDxName_[mem[128]] = uint256(pIDxAddr_[address(msg.sender)])
                    if not stor12[uint256(stor9[address(msg.sender)])][mem[128]]:
                        stor12[uint256(stor9[address(msg.sender)])][mem[128]] = 1
                        myReward[uint256(stor9[address(msg.sender)])].field_768++
                        plyrNameList_[uint256(stor9[address(msg.sender)])][stor11[uint256(stor9[address(msg.sender)])].field_768 + 1] = mem[128]
                    call stor0 with:
                       value msg.value / 2 wei
                         gas 2300 * is_zero(value) wei
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    call stor1 with:
                       value msg.value / 2 wei
                         gas 2300 * is_zero(value) wei
                    if arg3 != 1:
                        emit onNewName(0, 0, myReward[0].field_0, myReward[0].field_256, msg.value, block.timestamp, uint256(pIDxAddr_[address(msg.sender)]), msg.sender, mem[128]);
                    else:
                        idx = 1
                        while idx <= gID_:
                            mem[0] = idx
                            mem[32] = 4
                            mem[mem[64]] = 0x2341a1af00000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = uint256(pIDxAddr_[address(msg.sender)])
                            mem[mem[64] + 36] = msg.sender
                            mem[mem[64] + 68] = _3826
                            mem[mem[64] + 100] = 0
                            mem[mem[64] + 132] = arg4
                            require ext_code.size(games_[idx])
                            call games_[idx].receivePlayerInfo(uint256 arg1, address arg2, bytes32 arg3, uint256 arg4, uint8 arg5) with:
                                 gas gas_remaining wei
                                args uint256(pIDxAddr_[address(msg.sender)]), msg.sender, _3826, 0, arg4
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            idx = idx + 1
                            continue 
                        emit onNewName(0, 0, myReward[0].field_0, myReward[0].field_256, msg.value, block.timestamp, uint256(pIDxAddr_[address(msg.sender)]), msg.sender, _3826);
                else:
                    if uint256(pIDxAddr_[address(arg2)]) != myReward[uint256(stor9[address(msg.sender)])].field_512:
                        myReward[uint256(stor9[address(msg.sender)])].field_512 = uint256(pIDxAddr_[address(arg2)])
                    if uint256(pIDxAddr_[address(msg.sender)]) != pIDxName_[mem[128]]:
                        if pIDxName_[mem[128]]:
                            if bool(stor12[uint256(stor9[address(msg.sender)])][mem[128]]) != 1:
                                revert with 0, 'sorry that names already taken'
                    else:
                        if not uint256(pIDxAddr_[address(msg.sender)]):
                            if pIDxName_[mem[128]]:
                                if bool(stor12[uint256(stor9[address(msg.sender)])][mem[128]]) != 1:
                                    revert with 0, 'sorry that names already taken'
                        else:
                            if arg4 >= myReward[uint256(stor9[address(msg.sender)])].field_1568:
                                if bool(stor12[uint256(stor9[address(msg.sender)])][mem[128]]) != 1:
                                    revert with 0, 'sorry that names already taken'
                    myReward[uint256(stor9[address(msg.sender)])].field_256 = mem[128]
                    myReward[uint256(stor9[address(msg.sender)])].field_1568 = arg4
                    pIDxName_[mem[128]] = uint256(pIDxAddr_[address(msg.sender)])
                    if not stor12[uint256(stor9[address(msg.sender)])][mem[128]]:
                        stor12[uint256(stor9[address(msg.sender)])][mem[128]] = 1
                        myReward[uint256(stor9[address(msg.sender)])].field_768++
                        plyrNameList_[uint256(stor9[address(msg.sender)])][stor11[uint256(stor9[address(msg.sender)])].field_768 + 1] = mem[128]
                    call stor0 with:
                       value msg.value / 2 wei
                         gas 2300 * is_zero(value) wei
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    call stor1 with:
                       value msg.value / 2 wei
                         gas 2300 * is_zero(value) wei
                    if arg3 != 1:
                        emit onNewName(0, uint256(pIDxAddr_[address(arg2)]), myReward[uint256(stor9[address(arg2)])].field_0, myReward[uint256(stor9[address(arg2)])].field_256, msg.value, block.timestamp, uint256(pIDxAddr_[address(msg.sender)]), msg.sender, mem[128]);
                    else:
                        idx = 1
                        while idx <= gID_:
                            mem[0] = idx
                            mem[32] = 4
                            mem[mem[64]] = 0x2341a1af00000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = uint256(pIDxAddr_[address(msg.sender)])
                            mem[mem[64] + 36] = msg.sender
                            mem[mem[64] + 68] = _3826
                            mem[mem[64] + 100] = uint256(pIDxAddr_[address(arg2)])
                            mem[mem[64] + 132] = arg4
                            require ext_code.size(games_[idx])
                            call games_[idx].receivePlayerInfo(uint256 arg1, address arg2, bytes32 arg3, uint256 arg4, uint8 arg5) with:
                                 gas gas_remaining wei
                                args uint256(pIDxAddr_[address(msg.sender)]), msg.sender, _3826, uint256(pIDxAddr_[address(arg2)]), arg4
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            idx = idx + 1
                            continue 
                        emit onNewName(0, uint256(pIDxAddr_[address(arg2)]), myReward[uint256(stor9[address(arg2)])].field_0, myReward[uint256(stor9[address(arg2)])].field_256, msg.value, block.timestamp, uint256(pIDxAddr_[address(msg.sender)]), msg.sender, _3826);
        else:
            pID_++
            uint256(pIDxAddr_[address(msg.sender)]) = pID_ + 1
            myReward[stor8 + 1].field_0 = msg.sender
            if not arg2:
                if uint256(pIDxAddr_[address(msg.sender)]) != pIDxName_[mem[128]]:
                    if pIDxName_[mem[128]]:
                        if bool(stor12[uint256(stor9[address(msg.sender)])][mem[128]]) != 1:
                            revert with 0, 'sorry that names already taken'
                else:
                    if not uint256(pIDxAddr_[address(msg.sender)]):
                        if pIDxName_[mem[128]]:
                            if bool(stor12[uint256(stor9[address(msg.sender)])][mem[128]]) != 1:
                                revert with 0, 'sorry that names already taken'
                    else:
                        if arg4 >= myReward[uint256(stor9[address(msg.sender)])].field_1568:
                            if bool(stor12[uint256(stor9[address(msg.sender)])][mem[128]]) != 1:
                                revert with 0, 'sorry that names already taken'
                myReward[uint256(stor9[address(msg.sender)])].field_256 = mem[128]
                myReward[uint256(stor9[address(msg.sender)])].field_1568 = arg4
                pIDxName_[mem[128]] = uint256(pIDxAddr_[address(msg.sender)])
                if not stor12[uint256(stor9[address(msg.sender)])][mem[128]]:
                    stor12[uint256(stor9[address(msg.sender)])][mem[128]] = 1
                    myReward[uint256(stor9[address(msg.sender)])].field_768++
                    plyrNameList_[uint256(stor9[address(msg.sender)])][stor11[uint256(stor9[address(msg.sender)])].field_768 + 1] = mem[128]
                call stor0 with:
                   value msg.value / 2 wei
                     gas 2300 * is_zero(value) wei
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                call stor1 with:
                   value msg.value / 2 wei
                     gas 2300 * is_zero(value) wei
                if arg3 != 1:
                    emit onNewName(1, 0, myReward[0].field_0, myReward[0].field_256, msg.value, block.timestamp, uint256(pIDxAddr_[address(msg.sender)]), msg.sender, mem[128]);
                else:
                    idx = 1
                    while idx <= gID_:
                        mem[0] = idx
                        mem[32] = 4
                        mem[mem[64]] = 0x2341a1af00000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = uint256(pIDxAddr_[address(msg.sender)])
                        mem[mem[64] + 36] = msg.sender
                        mem[mem[64] + 68] = _3826
                        mem[mem[64] + 100] = 0
                        mem[mem[64] + 132] = arg4
                        require ext_code.size(games_[idx])
                        call games_[idx].receivePlayerInfo(uint256 arg1, address arg2, bytes32 arg3, uint256 arg4, uint8 arg5) with:
                             gas gas_remaining wei
                            args uint256(pIDxAddr_[address(msg.sender)]), msg.sender, _3826, 0, arg4
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        idx = idx + 1
                        continue 
                    emit onNewName(1, 0, myReward[0].field_0, myReward[0].field_256, msg.value, block.timestamp, uint256(pIDxAddr_[address(msg.sender)]), msg.sender, _3826);
            else:
                if arg2 == msg.sender:
                    if uint256(pIDxAddr_[address(msg.sender)]) != pIDxName_[mem[128]]:
                        if pIDxName_[mem[128]]:
                            if bool(stor12[uint256(stor9[address(msg.sender)])][mem[128]]) != 1:
                                revert with 0, 'sorry that names already taken'
                    else:
                        if not uint256(pIDxAddr_[address(msg.sender)]):
                            if pIDxName_[mem[128]]:
                                if bool(stor12[uint256(stor9[address(msg.sender)])][mem[128]]) != 1:
                                    revert with 0, 'sorry that names already taken'
                        else:
                            if arg4 >= myReward[uint256(stor9[address(msg.sender)])].field_1568:
                                if bool(stor12[uint256(stor9[address(msg.sender)])][mem[128]]) != 1:
                                    revert with 0, 'sorry that names already taken'
                    myReward[uint256(stor9[address(msg.sender)])].field_256 = mem[128]
                    myReward[uint256(stor9[address(msg.sender)])].field_1568 = arg4
                    pIDxName_[mem[128]] = uint256(pIDxAddr_[address(msg.sender)])
                    if not stor12[uint256(stor9[address(msg.sender)])][mem[128]]:
                        stor12[uint256(stor9[address(msg.sender)])][mem[128]] = 1
                        myReward[uint256(stor9[address(msg.sender)])].field_768++
                        plyrNameList_[uint256(stor9[address(msg.sender)])][stor11[uint256(stor9[address(msg.sender)])].field_768 + 1] = mem[128]
                    call stor0 with:
                       value msg.value / 2 wei
                         gas 2300 * is_zero(value) wei
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    call stor1 with:
                       value msg.value / 2 wei
                         gas 2300 * is_zero(value) wei
                    if arg3 != 1:
                        emit onNewName(1, 0, myReward[0].field_0, myReward[0].field_256, msg.value, block.timestamp, uint256(pIDxAddr_[address(msg.sender)]), msg.sender, mem[128]);
                    else:
                        idx = 1
                        while idx <= gID_:
                            mem[0] = idx
                            mem[32] = 4
                            mem[mem[64]] = 0x2341a1af00000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = uint256(pIDxAddr_[address(msg.sender)])
                            mem[mem[64] + 36] = msg.sender
                            mem[mem[64] + 68] = _3826
                            mem[mem[64] + 100] = 0
                            mem[mem[64] + 132] = arg4
                            require ext_code.size(games_[idx])
                            call games_[idx].receivePlayerInfo(uint256 arg1, address arg2, bytes32 arg3, uint256 arg4, uint8 arg5) with:
                                 gas gas_remaining wei
                                args uint256(pIDxAddr_[address(msg.sender)]), msg.sender, _3826, 0, arg4
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            idx = idx + 1
                            continue 
                        emit onNewName(1, 0, myReward[0].field_0, myReward[0].field_256, msg.value, block.timestamp, uint256(pIDxAddr_[address(msg.sender)]), msg.sender, _3826);
                else:
                    if uint256(pIDxAddr_[address(arg2)]) != myReward[uint256(stor9[address(msg.sender)])].field_512:
                        myReward[uint256(stor9[address(msg.sender)])].field_512 = uint256(pIDxAddr_[address(arg2)])
                    if uint256(pIDxAddr_[address(msg.sender)]) != pIDxName_[mem[128]]:
                        if pIDxName_[mem[128]]:
                            if bool(stor12[uint256(stor9[address(msg.sender)])][mem[128]]) != 1:
                                revert with 0, 'sorry that names already taken'
                    else:
                        if not uint256(pIDxAddr_[address(msg.sender)]):
                            if pIDxName_[mem[128]]:
                                if bool(stor12[uint256(stor9[address(msg.sender)])][mem[128]]) != 1:
                                    revert with 0, 'sorry that names already taken'
                        else:
                            if arg4 >= myReward[uint256(stor9[address(msg.sender)])].field_1568:
                                if bool(stor12[uint256(stor9[address(msg.sender)])][mem[128]]) != 1:
                                    revert with 0, 'sorry that names already taken'
                    myReward[uint256(stor9[address(msg.sender)])].field_256 = mem[128]
                    myReward[uint256(stor9[address(msg.sender)])].field_1568 = arg4
                    pIDxName_[mem[128]] = uint256(pIDxAddr_[address(msg.sender)])
                    if not stor12[uint256(stor9[address(msg.sender)])][mem[128]]:
                        stor12[uint256(stor9[address(msg.sender)])][mem[128]] = 1
                        myReward[uint256(stor9[address(msg.sender)])].field_768++
                        plyrNameList_[uint256(stor9[address(msg.sender)])][stor11[uint256(stor9[address(msg.sender)])].field_768 + 1] = mem[128]
                    call stor0 with:
                       value msg.value / 2 wei
                         gas 2300 * is_zero(value) wei
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    call stor1 with:
                       value msg.value / 2 wei
                         gas 2300 * is_zero(value) wei
                    if arg3 != 1:
                        emit onNewName(1, uint256(pIDxAddr_[address(arg2)]), myReward[uint256(stor9[address(arg2)])].field_0, myReward[uint256(stor9[address(arg2)])].field_256, msg.value, block.timestamp, uint256(pIDxAddr_[address(msg.sender)]), msg.sender, mem[128]);
                    else:
                        idx = 1
                        while idx <= gID_:
                            mem[0] = idx
                            mem[32] = 4
                            mem[mem[64]] = 0x2341a1af00000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = uint256(pIDxAddr_[address(msg.sender)])
                            mem[mem[64] + 36] = msg.sender
                            mem[mem[64] + 68] = _3826
                            mem[mem[64] + 100] = uint256(pIDxAddr_[address(arg2)])
                            mem[mem[64] + 132] = arg4
                            require ext_code.size(games_[idx])
                            call games_[idx].receivePlayerInfo(uint256 arg1, address arg2, bytes32 arg3, uint256 arg4, uint8 arg5) with:
                                 gas gas_remaining wei
                                args uint256(pIDxAddr_[address(msg.sender)]), msg.sender, _3826, uint256(pIDxAddr_[address(arg2)]), arg4
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            idx = idx + 1
                            continue 
                        emit onNewName(1, uint256(pIDxAddr_[address(arg2)]), myReward[uint256(stor9[address(arg2)])].field_0, myReward[uint256(stor9[address(arg2)])].field_256, msg.value, block.timestamp, uint256(pIDxAddr_[address(msg.sender)]), msg.sender, _3826);
    else:
        require 1 < arg1.length
        if 0x7800000000000000000000000000000000000000000000000000000000000000 == Mask(8, 248, mem[129]):
            revert with 0, 'string cannot start with 0x'
        require 1 < arg1.length
        if 0x5800000000000000000000000000000000000000000000000000000000000000 == Mask(8, 248, mem[129]):
            revert with 0, 'string cannot start with 0X'
        idx = 0
        s = 0
        while idx < arg1.length:
            require idx < arg1.length
            require idx < arg1.length
            require idx < arg1.length
            if Mask(8, 248, mem[idx + 128]) <= '@':
                if Mask(8, 248, mem[idx + 128]) != 0x2000000000000000000000000000000000000000000000000000000000000000:
                    require idx < arg1.length
                    if Mask(8, 248, mem[idx + 128]) <= '`':
                        if Mask(8, 248, mem[idx + 128]) <= '/':
                            revert with 0, 'string contains invalid characters'
                        require idx < arg1.length
                        if Mask(8, 248, mem[idx + 128]) >= ':':
                            revert with 0, 'string contains invalid characters'
                    else:
                        if Mask(8, 248, mem[idx + 128]) >= '{':
                            require idx < arg1.length
                            if Mask(8, 248, mem[idx + 128]) <= '/':
                                revert with 0, 'string contains invalid characters'
                            require idx < arg1.length
                            if Mask(8, 248, mem[idx + 128]) >= ':':
                                revert with 0, 'string contains invalid characters'
                if 0x2000000000000000000000000000000000000000000000000000000000000000 == Mask(8, 248, mem[idx + 128]):
                    require idx + 1 < arg1.length
                    if 0x2000000000000000000000000000000000000000000000000000000000000000 == Mask(8, 248, mem[idx + 129]):
                        revert with 0, 'string cannot contain consecutive spaces'
                if s:
                    idx = idx + 1
                    s = s
                    continue 
                require idx < arg1.length
                if Mask(8, 248, mem[idx + 128]) >= '0':
                    require idx < arg1.length
                    if Mask(8, 248, mem[idx + 128]) <= '9':
                        idx = idx + 1
                        s = s
                        continue 
            else:
                require idx < arg1.length
                if Mask(8, 248, mem[idx + 128]) < '[':
                    mem[idx + 128 len 8] = Mask(8, -(('mask_shl', 8, 0, 245, ('add', 32, ('mem', ('range', ('add', 128, ('var', 0)), 1)))), 0) + 256, 0) << (('mask_shl', 8, 0, 245, ('add', 32, ('mem', ('range', ('add', 128, ('var', 0)), 1)))), 0) - 256
                    if s:
                        idx = idx + 1
                        s = s
                        continue 
                else:
                    if Mask(8, 248, mem[idx + 128]) != 0x2000000000000000000000000000000000000000000000000000000000000000:
                        require idx < arg1.length
                        if Mask(8, 248, mem[idx + 128]) <= '`':
                            if Mask(8, 248, mem[idx + 128]) <= '/':
                                revert with 0, 'string contains invalid characters'
                            require idx < arg1.length
                            if Mask(8, 248, mem[idx + 128]) >= ':':
                                revert with 0, 'string contains invalid characters'
                        else:
                            if Mask(8, 248, mem[idx + 128]) >= '{':
                                require idx < arg1.length
                                if Mask(8, 248, mem[idx + 128]) <= '/':
                                    revert with 0, 'string contains invalid characters'
                                require idx < arg1.length
                                if Mask(8, 248, mem[idx + 128]) >= ':':
                                    revert with 0, 'string contains invalid characters'
                    if 0x2000000000000000000000000000000000000000000000000000000000000000 == Mask(8, 248, mem[idx + 128]):
                        require idx + 1 < arg1.length
                        if 0x2000000000000000000000000000000000000000000000000000000000000000 == Mask(8, 248, mem[idx + 129]):
                            revert with 0, 'string cannot contain consecutive spaces'
                    if s:
                        idx = idx + 1
                        s = s
                        continue 
                    require idx < arg1.length
                    if Mask(8, 248, mem[idx + 128]) >= '0':
                        require idx < arg1.length
                        if Mask(8, 248, mem[idx + 128]) <= '9':
                            idx = idx + 1
                            s = s
                            continue 
            idx = idx + 1
            s = 1
            continue 
        if bool(s) != 1:
            revert with 0, 'string cannot be only numbers'
        _3830 = mem[128]
        if uint256(pIDxAddr_[address(msg.sender)]):
            if not arg2:
                if uint256(pIDxAddr_[address(msg.sender)]) != pIDxName_[mem[128]]:
                    if pIDxName_[mem[128]]:
                        if bool(stor12[uint256(stor9[address(msg.sender)])][mem[128]]) != 1:
                            revert with 0, 'sorry that names already taken'
                else:
                    if not uint256(pIDxAddr_[address(msg.sender)]):
                        if pIDxName_[mem[128]]:
                            if bool(stor12[uint256(stor9[address(msg.sender)])][mem[128]]) != 1:
                                revert with 0, 'sorry that names already taken'
                    else:
                        if arg4 >= myReward[uint256(stor9[address(msg.sender)])].field_1568:
                            if bool(stor12[uint256(stor9[address(msg.sender)])][mem[128]]) != 1:
                                revert with 0, 'sorry that names already taken'
                myReward[uint256(stor9[address(msg.sender)])].field_256 = mem[128]
                myReward[uint256(stor9[address(msg.sender)])].field_1568 = arg4
                pIDxName_[mem[128]] = uint256(pIDxAddr_[address(msg.sender)])
                if not stor12[uint256(stor9[address(msg.sender)])][mem[128]]:
                    stor12[uint256(stor9[address(msg.sender)])][mem[128]] = 1
                    myReward[uint256(stor9[address(msg.sender)])].field_768++
                    plyrNameList_[uint256(stor9[address(msg.sender)])][stor11[uint256(stor9[address(msg.sender)])].field_768 + 1] = mem[128]
                call stor0 with:
                   value msg.value / 2 wei
                     gas 2300 * is_zero(value) wei
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                call stor1 with:
                   value msg.value / 2 wei
                     gas 2300 * is_zero(value) wei
                if arg3 != 1:
                    emit onNewName(0, 0, myReward[0].field_0, myReward[0].field_256, msg.value, block.timestamp, uint256(pIDxAddr_[address(msg.sender)]), msg.sender, mem[128]);
                else:
                    idx = 1
                    while idx <= gID_:
                        mem[0] = idx
                        mem[32] = 4
                        mem[mem[64]] = 0x2341a1af00000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = uint256(pIDxAddr_[address(msg.sender)])
                        mem[mem[64] + 36] = msg.sender
                        mem[mem[64] + 68] = _3830
                        mem[mem[64] + 100] = 0
                        mem[mem[64] + 132] = arg4
                        require ext_code.size(games_[idx])
                        call games_[idx].receivePlayerInfo(uint256 arg1, address arg2, bytes32 arg3, uint256 arg4, uint8 arg5) with:
                             gas gas_remaining wei
                            args uint256(pIDxAddr_[address(msg.sender)]), msg.sender, _3830, 0, arg4
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        idx = idx + 1
                        continue 
                    emit onNewName(0, 0, myReward[0].field_0, myReward[0].field_256, msg.value, block.timestamp, uint256(pIDxAddr_[address(msg.sender)]), msg.sender, _3830);
            else:
                if arg2 == msg.sender:
                    if uint256(pIDxAddr_[address(msg.sender)]) != pIDxName_[mem[128]]:
                        if pIDxName_[mem[128]]:
                            if bool(stor12[uint256(stor9[address(msg.sender)])][mem[128]]) != 1:
                                revert with 0, 'sorry that names already taken'
                    else:
                        if not uint256(pIDxAddr_[address(msg.sender)]):
                            if pIDxName_[mem[128]]:
                                if bool(stor12[uint256(stor9[address(msg.sender)])][mem[128]]) != 1:
                                    revert with 0, 'sorry that names already taken'
                        else:
                            if arg4 >= myReward[uint256(stor9[address(msg.sender)])].field_1568:
                                if bool(stor12[uint256(stor9[address(msg.sender)])][mem[128]]) != 1:
                                    revert with 0, 'sorry that names already taken'
                    myReward[uint256(stor9[address(msg.sender)])].field_256 = mem[128]
                    myReward[uint256(stor9[address(msg.sender)])].field_1568 = arg4
                    pIDxName_[mem[128]] = uint256(pIDxAddr_[address(msg.sender)])
                    if not stor12[uint256(stor9[address(msg.sender)])][mem[128]]:
                        stor12[uint256(stor9[address(msg.sender)])][mem[128]] = 1
                        myReward[uint256(stor9[address(msg.sender)])].field_768++
                        plyrNameList_[uint256(stor9[address(msg.sender)])][stor11[uint256(stor9[address(msg.sender)])].field_768 + 1] = mem[128]
                    call stor0 with:
                       value msg.value / 2 wei
                         gas 2300 * is_zero(value) wei
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    call stor1 with:
                       value msg.value / 2 wei
                         gas 2300 * is_zero(value) wei
                    if arg3 != 1:
                        emit onNewName(0, 0, myReward[0].field_0, myReward[0].field_256, msg.value, block.timestamp, uint256(pIDxAddr_[address(msg.sender)]), msg.sender, mem[128]);
                    else:
                        idx = 1
                        while idx <= gID_:
                            mem[0] = idx
                            mem[32] = 4
                            mem[mem[64]] = 0x2341a1af00000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = uint256(pIDxAddr_[address(msg.sender)])
                            mem[mem[64] + 36] = msg.sender
                            mem[mem[64] + 68] = _3830
                            mem[mem[64] + 100] = 0
                            mem[mem[64] + 132] = arg4
                            require ext_code.size(games_[idx])
                            call games_[idx].receivePlayerInfo(uint256 arg1, address arg2, bytes32 arg3, uint256 arg4, uint8 arg5) with:
                                 gas gas_remaining wei
                                args uint256(pIDxAddr_[address(msg.sender)]), msg.sender, _3830, 0, arg4
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            idx = idx + 1
                            continue 
                        emit onNewName(0, 0, myReward[0].field_0, myReward[0].field_256, msg.value, block.timestamp, uint256(pIDxAddr_[address(msg.sender)]), msg.sender, _3830);
                else:
                    if uint256(pIDxAddr_[address(arg2)]) != myReward[uint256(stor9[address(msg.sender)])].field_512:
                        myReward[uint256(stor9[address(msg.sender)])].field_512 = uint256(pIDxAddr_[address(arg2)])
                    if uint256(pIDxAddr_[address(msg.sender)]) != pIDxName_[mem[128]]:
                        if pIDxName_[mem[128]]:
                            if bool(stor12[uint256(stor9[address(msg.sender)])][mem[128]]) != 1:
                                revert with 0, 'sorry that names already taken'
                    else:
                        if not uint256(pIDxAddr_[address(msg.sender)]):
                            if pIDxName_[mem[128]]:
                                if bool(stor12[uint256(stor9[address(msg.sender)])][mem[128]]) != 1:
                                    revert with 0, 'sorry that names already taken'
                        else:
                            if arg4 >= myReward[uint256(stor9[address(msg.sender)])].field_1568:
                                if bool(stor12[uint256(stor9[address(msg.sender)])][mem[128]]) != 1:
                                    revert with 0, 'sorry that names already taken'
                    myReward[uint256(stor9[address(msg.sender)])].field_256 = mem[128]
                    myReward[uint256(stor9[address(msg.sender)])].field_1568 = arg4
                    pIDxName_[mem[128]] = uint256(pIDxAddr_[address(msg.sender)])
                    if not stor12[uint256(stor9[address(msg.sender)])][mem[128]]:
                        stor12[uint256(stor9[address(msg.sender)])][mem[128]] = 1
                        myReward[uint256(stor9[address(msg.sender)])].field_768++
                        plyrNameList_[uint256(stor9[address(msg.sender)])][stor11[uint256(stor9[address(msg.sender)])].field_768 + 1] = mem[128]
                    call stor0 with:
                       value msg.value / 2 wei
                         gas 2300 * is_zero(value) wei
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    call stor1 with:
                       value msg.value / 2 wei
                         gas 2300 * is_zero(value) wei
                    if arg3 != 1:
                        emit onNewName(0, uint256(pIDxAddr_[address(arg2)]), myReward[uint256(stor9[address(arg2)])].field_0, myReward[uint256(stor9[address(arg2)])].field_256, msg.value, block.timestamp, uint256(pIDxAddr_[address(msg.sender)]), msg.sender, mem[128]);
                    else:
                        idx = 1
                        while idx <= gID_:
                            mem[0] = idx
                            mem[32] = 4
                            mem[mem[64]] = 0x2341a1af00000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = uint256(pIDxAddr_[address(msg.sender)])
                            mem[mem[64] + 36] = msg.sender
                            mem[mem[64] + 68] = _3830
                            mem[mem[64] + 100] = uint256(pIDxAddr_[address(arg2)])
                            mem[mem[64] + 132] = arg4
                            require ext_code.size(games_[idx])
                            call games_[idx].receivePlayerInfo(uint256 arg1, address arg2, bytes32 arg3, uint256 arg4, uint8 arg5) with:
                                 gas gas_remaining wei
                                args uint256(pIDxAddr_[address(msg.sender)]), msg.sender, _3830, uint256(pIDxAddr_[address(arg2)]), arg4
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            idx = idx + 1
                            continue 
                        emit onNewName(0, uint256(pIDxAddr_[address(arg2)]), myReward[uint256(stor9[address(arg2)])].field_0, myReward[uint256(stor9[address(arg2)])].field_256, msg.value, block.timestamp, uint256(pIDxAddr_[address(msg.sender)]), msg.sender, _3830);
        else:
            pID_++
            uint256(pIDxAddr_[address(msg.sender)]) = pID_ + 1
            myReward[stor8 + 1].field_0 = msg.sender
            if not arg2:
                if uint256(pIDxAddr_[address(msg.sender)]) != pIDxName_[mem[128]]:
                    if pIDxName_[mem[128]]:
                        if bool(stor12[uint256(stor9[address(msg.sender)])][mem[128]]) != 1:
                            revert with 0, 'sorry that names already taken'
                else:
                    if not uint256(pIDxAddr_[address(msg.sender)]):
                        if pIDxName_[mem[128]]:
                            if bool(stor12[uint256(stor9[address(msg.sender)])][mem[128]]) != 1:
                                revert with 0, 'sorry that names already taken'
                    else:
                        if arg4 >= myReward[uint256(stor9[address(msg.sender)])].field_1568:
                            if bool(stor12[uint256(stor9[address(msg.sender)])][mem[128]]) != 1:
                                revert with 0, 'sorry that names already taken'
                myReward[uint256(stor9[address(msg.sender)])].field_256 = mem[128]
                myReward[uint256(stor9[address(msg.sender)])].field_1568 = arg4
                pIDxName_[mem[128]] = uint256(pIDxAddr_[address(msg.sender)])
                if not stor12[uint256(stor9[address(msg.sender)])][mem[128]]:
                    stor12[uint256(stor9[address(msg.sender)])][mem[128]] = 1
                    myReward[uint256(stor9[address(msg.sender)])].field_768++
                    plyrNameList_[uint256(stor9[address(msg.sender)])][stor11[uint256(stor9[address(msg.sender)])].field_768 + 1] = mem[128]
                call stor0 with:
                   value msg.value / 2 wei
                     gas 2300 * is_zero(value) wei
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                call stor1 with:
                   value msg.value / 2 wei
                     gas 2300 * is_zero(value) wei
                if arg3 != 1:
                    emit onNewName(1, 0, myReward[0].field_0, myReward[0].field_256, msg.value, block.timestamp, uint256(pIDxAddr_[address(msg.sender)]), msg.sender, mem[128]);
                else:
                    idx = 1
                    while idx <= gID_:
                        mem[0] = idx
                        mem[32] = 4
                        mem[mem[64]] = 0x2341a1af00000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = uint256(pIDxAddr_[address(msg.sender)])
                        mem[mem[64] + 36] = msg.sender
                        mem[mem[64] + 68] = _3830
                        mem[mem[64] + 100] = 0
                        mem[mem[64] + 132] = arg4
                        require ext_code.size(games_[idx])
                        call games_[idx].receivePlayerInfo(uint256 arg1, address arg2, bytes32 arg3, uint256 arg4, uint8 arg5) with:
                             gas gas_remaining wei
                            args uint256(pIDxAddr_[address(msg.sender)]), msg.sender, _3830, 0, arg4
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        idx = idx + 1
                        continue 
                    emit onNewName(1, 0, myReward[0].field_0, myReward[0].field_256, msg.value, block.timestamp, uint256(pIDxAddr_[address(msg.sender)]), msg.sender, _3830);
            else:
                if arg2 == msg.sender:
                    if uint256(pIDxAddr_[address(msg.sender)]) != pIDxName_[mem[128]]:
                        if pIDxName_[mem[128]]:
                            if bool(stor12[uint256(stor9[address(msg.sender)])][mem[128]]) != 1:
                                revert with 0, 'sorry that names already taken'
                    else:
                        if not uint256(pIDxAddr_[address(msg.sender)]):
                            if pIDxName_[mem[128]]:
                                if bool(stor12[uint256(stor9[address(msg.sender)])][mem[128]]) != 1:
                                    revert with 0, 'sorry that names already taken'
                        else:
                            if arg4 >= myReward[uint256(stor9[address(msg.sender)])].field_1568:
                                if bool(stor12[uint256(stor9[address(msg.sender)])][mem[128]]) != 1:
                                    revert with 0, 'sorry that names already taken'
                    myReward[uint256(stor9[address(msg.sender)])].field_256 = mem[128]
                    myReward[uint256(stor9[address(msg.sender)])].field_1568 = arg4
                    pIDxName_[mem[128]] = uint256(pIDxAddr_[address(msg.sender)])
                    if not stor12[uint256(stor9[address(msg.sender)])][mem[128]]:
                        stor12[uint256(stor9[address(msg.sender)])][mem[128]] = 1
                        myReward[uint256(stor9[address(msg.sender)])].field_768++
                        plyrNameList_[uint256(stor9[address(msg.sender)])][stor11[uint256(stor9[address(msg.sender)])].field_768 + 1] = mem[128]
                    call stor0 with:
                       value msg.value / 2 wei
                         gas 2300 * is_zero(value) wei
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    call stor1 with:
                       value msg.value / 2 wei
                         gas 2300 * is_zero(value) wei
                    if arg3 != 1:
                        emit onNewName(1, 0, myReward[0].field_0, myReward[0].field_256, msg.value, block.timestamp, uint256(pIDxAddr_[address(msg.sender)]), msg.sender, mem[128]);
                    else:
                        idx = 1
                        while idx <= gID_:
                            mem[0] = idx
                            mem[32] = 4
                            mem[mem[64]] = 0x2341a1af00000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = uint256(pIDxAddr_[address(msg.sender)])
                            mem[mem[64] + 36] = msg.sender
                            mem[mem[64] + 68] = _3830
                            mem[mem[64] + 100] = 0
                            mem[mem[64] + 132] = arg4
                            require ext_code.size(games_[idx])
                            call games_[idx].receivePlayerInfo(uint256 arg1, address arg2, bytes32 arg3, uint256 arg4, uint8 arg5) with:
                                 gas gas_remaining wei
                                args uint256(pIDxAddr_[address(msg.sender)]), msg.sender, _3830, 0, arg4
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            idx = idx + 1
                            continue 
                        emit onNewName(1, 0, myReward[0].field_0, myReward[0].field_256, msg.value, block.timestamp, uint256(pIDxAddr_[address(msg.sender)]), msg.sender, _3830);
                else:
                    if uint256(pIDxAddr_[address(arg2)]) != myReward[uint256(stor9[address(msg.sender)])].field_512:
                        myReward[uint256(stor9[address(msg.sender)])].field_512 = uint256(pIDxAddr_[address(arg2)])
                    if uint256(pIDxAddr_[address(msg.sender)]) != pIDxName_[mem[128]]:
                        if pIDxName_[mem[128]]:
                            if bool(stor12[uint256(stor9[address(msg.sender)])][mem[128]]) != 1:
                                revert with 0, 'sorry that names already taken'
                    else:
                        if not uint256(pIDxAddr_[address(msg.sender)]):
                            if pIDxName_[mem[128]]:
                                if bool(stor12[uint256(stor9[address(msg.sender)])][mem[128]]) != 1:
                                    revert with 0, 'sorry that names already taken'
                        else:
                            if arg4 >= myReward[uint256(stor9[address(msg.sender)])].field_1568:
                                if bool(stor12[uint256(stor9[address(msg.sender)])][mem[128]]) != 1:
                                    revert with 0, 'sorry that names already taken'
                    myReward[uint256(stor9[address(msg.sender)])].field_256 = mem[128]
                    myReward[uint256(stor9[address(msg.sender)])].field_1568 = arg4
                    pIDxName_[mem[128]] = uint256(pIDxAddr_[address(msg.sender)])
                    if not stor12[uint256(stor9[address(msg.sender)])][mem[128]]:
                        stor12[uint256(stor9[address(msg.sender)])][mem[128]] = 1
                        myReward[uint256(stor9[address(msg.sender)])].field_768++
                        plyrNameList_[uint256(stor9[address(msg.sender)])][stor11[uint256(stor9[address(msg.sender)])].field_768 + 1] = mem[128]
                    call stor0 with:
                       value msg.value / 2 wei
                         gas 2300 * is_zero(value) wei
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    call stor1 with:
                       value msg.value / 2 wei
                         gas 2300 * is_zero(value) wei
                    if arg3 != 1:
                        emit onNewName(1, uint256(pIDxAddr_[address(arg2)]), myReward[uint256(stor9[address(arg2)])].field_0, myReward[uint256(stor9[address(arg2)])].field_256, msg.value, block.timestamp, uint256(pIDxAddr_[address(msg.sender)]), msg.sender, mem[128]);
                    else:
                        idx = 1
                        while idx <= gID_:
                            mem[0] = idx
                            mem[32] = 4
                            mem[mem[64]] = 0x2341a1af00000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = uint256(pIDxAddr_[address(msg.sender)])
                            mem[mem[64] + 36] = msg.sender
                            mem[mem[64] + 68] = _3830
                            mem[mem[64] + 100] = uint256(pIDxAddr_[address(arg2)])
                            mem[mem[64] + 132] = arg4
                            require ext_code.size(games_[idx])
                            call games_[idx].receivePlayerInfo(uint256 arg1, address arg2, bytes32 arg3, uint256 arg4, uint8 arg5) with:
                                 gas gas_remaining wei
                                args uint256(pIDxAddr_[address(msg.sender)]), msg.sender, _3830, uint256(pIDxAddr_[address(arg2)]), arg4
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            idx = idx + 1
                            continue 
                        emit onNewName(1, uint256(pIDxAddr_[address(arg2)]), myReward[uint256(stor9[address(arg2)])].field_0, myReward[uint256(stor9[address(arg2)])].field_256, msg.value, block.timestamp, uint256(pIDxAddr_[address(msg.sender)]), msg.sender, _3830);
}

function registerNameXID(string arg1, uint256 arg2, bool arg3, uint8 arg4) payable {
    mem[64] = ceil32(arg1.length) + 128
    mem[96] = arg1.length
    mem[128 len arg1.length] = arg1[all]
    if ext_code.size(msg.sender):
        revert with 0, 'sorry humans only'
    if arg4 < 0:
        revert with 0, 'invalid level'
    if arg4 > 3:
        revert with 0, 'invalid level'
    mem[0] = arg4
    mem[32] = 14
    if msg.value < levelValue_[arg4 << 248]:
        revert with 0, 'sorry request price less than affiliate level'
    if msg.value < nameFee:
        revert with 0, 'umm.....  you have to pay the name fee'
    if arg1.length > 32:
        revert with 0, 'string must be between 1 and 32 characters'
    if arg1.length <= 0:
        revert with 0, 'string must be between 1 and 32 characters'
    require 0 < arg1.length
    if 0x2000000000000000000000000000000000000000000000000000000000000000 == Mask(8, 248, mem[128]):
        revert with 0, 'string cannot start or end with space'
    require arg1.length - 1 < arg1.length
    if 0x2000000000000000000000000000000000000000000000000000000000000000 == Mask(8, 248, mem[arg1.length + 127]):
        revert with 0, 'string cannot start or end with space'
    require 0 < arg1.length
    if Mask(8, 248, mem[128]) != 0x3000000000000000000000000000000000000000000000000000000000000000:
        idx = 0
        s = 0
        while idx < arg1.length:
            require idx < arg1.length
            require idx < arg1.length
            require idx < arg1.length
            if Mask(8, 248, mem[idx + 128]) <= '@':
                if Mask(8, 248, mem[idx + 128]) != 0x2000000000000000000000000000000000000000000000000000000000000000:
                    require idx < arg1.length
                    if Mask(8, 248, mem[idx + 128]) <= '`':
                        if Mask(8, 248, mem[idx + 128]) <= '/':
                            revert with 0, 'string contains invalid characters'
                        require idx < arg1.length
                        if Mask(8, 248, mem[idx + 128]) >= ':':
                            revert with 0, 'string contains invalid characters'
                    else:
                        if Mask(8, 248, mem[idx + 128]) >= '{':
                            require idx < arg1.length
                            if Mask(8, 248, mem[idx + 128]) <= '/':
                                revert with 0, 'string contains invalid characters'
                            require idx < arg1.length
                            if Mask(8, 248, mem[idx + 128]) >= ':':
                                revert with 0, 'string contains invalid characters'
                if 0x2000000000000000000000000000000000000000000000000000000000000000 == Mask(8, 248, mem[idx + 128]):
                    require idx + 1 < arg1.length
                    if 0x2000000000000000000000000000000000000000000000000000000000000000 == Mask(8, 248, mem[idx + 129]):
                        revert with 0, 'string cannot contain consecutive spaces'
                if s:
                    idx = idx + 1
                    s = s
                    continue 
                require idx < arg1.length
                if Mask(8, 248, mem[idx + 128]) >= '0':
                    require idx < arg1.length
                    if Mask(8, 248, mem[idx + 128]) <= '9':
                        idx = idx + 1
                        s = s
                        continue 
            else:
                require idx < arg1.length
                if Mask(8, 248, mem[idx + 128]) < '[':
                    mem[idx + 128 len 8] = Mask(8, -(('mask_shl', 8, 0, 245, ('add', 32, ('mem', ('range', ('add', 128, ('var', 0)), 1)))), 0) + 256, 0) << (('mask_shl', 8, 0, 245, ('add', 32, ('mem', ('range', ('add', 128, ('var', 0)), 1)))), 0) - 256
                    if s:
                        idx = idx + 1
                        s = s
                        continue 
                else:
                    if Mask(8, 248, mem[idx + 128]) != 0x2000000000000000000000000000000000000000000000000000000000000000:
                        require idx < arg1.length
                        if Mask(8, 248, mem[idx + 128]) <= '`':
                            if Mask(8, 248, mem[idx + 128]) <= '/':
                                revert with 0, 'string contains invalid characters'
                            require idx < arg1.length
                            if Mask(8, 248, mem[idx + 128]) >= ':':
                                revert with 0, 'string contains invalid characters'
                        else:
                            if Mask(8, 248, mem[idx + 128]) >= '{':
                                require idx < arg1.length
                                if Mask(8, 248, mem[idx + 128]) <= '/':
                                    revert with 0, 'string contains invalid characters'
                                require idx < arg1.length
                                if Mask(8, 248, mem[idx + 128]) >= ':':
                                    revert with 0, 'string contains invalid characters'
                    if 0x2000000000000000000000000000000000000000000000000000000000000000 == Mask(8, 248, mem[idx + 128]):
                        require idx + 1 < arg1.length
                        if 0x2000000000000000000000000000000000000000000000000000000000000000 == Mask(8, 248, mem[idx + 129]):
                            revert with 0, 'string cannot contain consecutive spaces'
                    if s:
                        idx = idx + 1
                        s = s
                        continue 
                    require idx < arg1.length
                    if Mask(8, 248, mem[idx + 128]) >= '0':
                        require idx < arg1.length
                        if Mask(8, 248, mem[idx + 128]) <= '9':
                            idx = idx + 1
                            s = s
                            continue 
            idx = idx + 1
            s = 1
            continue 
        if bool(s) != 1:
            revert with 0, 'string cannot be only numbers'
        _5534 = mem[128]
        if uint256(pIDxAddr_[address(msg.sender)]):
            if not arg2:
                if uint256(pIDxAddr_[address(msg.sender)]) != pIDxName_[mem[128]]:
                    if pIDxName_[mem[128]]:
                        if bool(stor12[uint256(stor9[address(msg.sender)])][mem[128]]) != 1:
                            revert with 0, 'sorry that names already taken'
                else:
                    if not uint256(pIDxAddr_[address(msg.sender)]):
                        if pIDxName_[mem[128]]:
                            if bool(stor12[uint256(stor9[address(msg.sender)])][mem[128]]) != 1:
                                revert with 0, 'sorry that names already taken'
                    else:
                        if arg4 >= myReward[uint256(stor9[address(msg.sender)])].field_1568:
                            if bool(stor12[uint256(stor9[address(msg.sender)])][mem[128]]) != 1:
                                revert with 0, 'sorry that names already taken'
                myReward[uint256(stor9[address(msg.sender)])].field_256 = mem[128]
                myReward[uint256(stor9[address(msg.sender)])].field_1568 = arg4
                pIDxName_[mem[128]] = uint256(pIDxAddr_[address(msg.sender)])
                if not stor12[uint256(stor9[address(msg.sender)])][mem[128]]:
                    stor12[uint256(stor9[address(msg.sender)])][mem[128]] = 1
                    myReward[uint256(stor9[address(msg.sender)])].field_768++
                    plyrNameList_[uint256(stor9[address(msg.sender)])][stor11[uint256(stor9[address(msg.sender)])].field_768 + 1] = mem[128]
                call stor0 with:
                   value msg.value / 2 wei
                     gas 2300 * is_zero(value) wei
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                call stor1 with:
                   value msg.value / 2 wei
                     gas 2300 * is_zero(value) wei
                if arg2 != uint256(pIDxAddr_[address(msg.sender)]):
                    if arg3 != 1:
                        emit onNewName(0, arg2, myReward[arg2].field_0, myReward[arg2].field_256, msg.value, block.timestamp, uint256(pIDxAddr_[address(msg.sender)]), msg.sender, mem[128]);
                    else:
                        idx = 1
                        while idx <= gID_:
                            mem[0] = idx
                            mem[32] = 4
                            mem[mem[64]] = 0x2341a1af00000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = uint256(pIDxAddr_[address(msg.sender)])
                            mem[mem[64] + 36] = msg.sender
                            mem[mem[64] + 68] = _5534
                            mem[mem[64] + 100] = arg2
                            mem[mem[64] + 132] = arg4
                            require ext_code.size(games_[idx])
                            call games_[idx].receivePlayerInfo(uint256 arg1, address arg2, bytes32 arg3, uint256 arg4, uint8 arg5) with:
                                 gas gas_remaining wei
                                args uint256(pIDxAddr_[address(msg.sender)]), msg.sender, _5534, arg2, arg4
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            idx = idx + 1
                            continue 
                        emit onNewName(0, arg2, myReward[arg2].field_0, myReward[arg2].field_256, msg.value, block.timestamp, uint256(pIDxAddr_[address(msg.sender)]), msg.sender, _5534);
                else:
                    if arg3 != 1:
                        emit onNewName(0, 0, myReward[0].field_0, myReward[0].field_256, msg.value, block.timestamp, uint256(pIDxAddr_[address(msg.sender)]), msg.sender, mem[128]);
                    else:
                        idx = 1
                        while idx <= gID_:
                            mem[0] = idx
                            mem[32] = 4
                            mem[mem[64]] = 0x2341a1af00000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = uint256(pIDxAddr_[address(msg.sender)])
                            mem[mem[64] + 36] = msg.sender
                            mem[mem[64] + 68] = _5534
                            mem[mem[64] + 100] = 0
                            mem[mem[64] + 132] = arg4
                            require ext_code.size(games_[idx])
                            call games_[idx].receivePlayerInfo(uint256 arg1, address arg2, bytes32 arg3, uint256 arg4, uint8 arg5) with:
                                 gas gas_remaining wei
                                args uint256(pIDxAddr_[address(msg.sender)]), msg.sender, _5534, 0, arg4
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            idx = idx + 1
                            continue 
                        emit onNewName(0, 0, myReward[0].field_0, myReward[0].field_256, msg.value, block.timestamp, uint256(pIDxAddr_[address(msg.sender)]), msg.sender, _5534);
            else:
                if arg2 == myReward[uint256(stor9[address(msg.sender)])].field_512:
                    if uint256(pIDxAddr_[address(msg.sender)]) != pIDxName_[mem[128]]:
                        if pIDxName_[mem[128]]:
                            if bool(stor12[uint256(stor9[address(msg.sender)])][mem[128]]) != 1:
                                revert with 0, 'sorry that names already taken'
                    else:
                        if not uint256(pIDxAddr_[address(msg.sender)]):
                            if pIDxName_[mem[128]]:
                                if bool(stor12[uint256(stor9[address(msg.sender)])][mem[128]]) != 1:
                                    revert with 0, 'sorry that names already taken'
                        else:
                            if arg4 >= myReward[uint256(stor9[address(msg.sender)])].field_1568:
                                if bool(stor12[uint256(stor9[address(msg.sender)])][mem[128]]) != 1:
                                    revert with 0, 'sorry that names already taken'
                    myReward[uint256(stor9[address(msg.sender)])].field_256 = mem[128]
                    myReward[uint256(stor9[address(msg.sender)])].field_1568 = arg4
                    pIDxName_[mem[128]] = uint256(pIDxAddr_[address(msg.sender)])
                    if not stor12[uint256(stor9[address(msg.sender)])][mem[128]]:
                        stor12[uint256(stor9[address(msg.sender)])][mem[128]] = 1
                        myReward[uint256(stor9[address(msg.sender)])].field_768++
                        plyrNameList_[uint256(stor9[address(msg.sender)])][stor11[uint256(stor9[address(msg.sender)])].field_768 + 1] = mem[128]
                    call stor0 with:
                       value msg.value / 2 wei
                         gas 2300 * is_zero(value) wei
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    call stor1 with:
                       value msg.value / 2 wei
                         gas 2300 * is_zero(value) wei
                    if arg2 != uint256(pIDxAddr_[address(msg.sender)]):
                        if arg3 != 1:
                            emit onNewName(0, arg2, myReward[arg2].field_0, myReward[arg2].field_256, msg.value, block.timestamp, uint256(pIDxAddr_[address(msg.sender)]), msg.sender, mem[128]);
                        else:
                            idx = 1
                            while idx <= gID_:
                                mem[0] = idx
                                mem[32] = 4
                                mem[mem[64]] = 0x2341a1af00000000000000000000000000000000000000000000000000000000
                                mem[mem[64] + 4] = uint256(pIDxAddr_[address(msg.sender)])
                                mem[mem[64] + 36] = msg.sender
                                mem[mem[64] + 68] = _5534
                                mem[mem[64] + 100] = arg2
                                mem[mem[64] + 132] = arg4
                                require ext_code.size(games_[idx])
                                call games_[idx].receivePlayerInfo(uint256 arg1, address arg2, bytes32 arg3, uint256 arg4, uint8 arg5) with:
                                     gas gas_remaining wei
                                    args uint256(pIDxAddr_[address(msg.sender)]), msg.sender, _5534, arg2, arg4
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                idx = idx + 1
                                continue 
                            emit onNewName(0, arg2, myReward[arg2].field_0, myReward[arg2].field_256, msg.value, block.timestamp, uint256(pIDxAddr_[address(msg.sender)]), msg.sender, _5534);
                    else:
                        if arg3 != 1:
                            emit onNewName(0, 0, myReward[0].field_0, myReward[0].field_256, msg.value, block.timestamp, uint256(pIDxAddr_[address(msg.sender)]), msg.sender, mem[128]);
                        else:
                            idx = 1
                            while idx <= gID_:
                                mem[0] = idx
                                mem[32] = 4
                                mem[mem[64]] = 0x2341a1af00000000000000000000000000000000000000000000000000000000
                                mem[mem[64] + 4] = uint256(pIDxAddr_[address(msg.sender)])
                                mem[mem[64] + 36] = msg.sender
                                mem[mem[64] + 68] = _5534
                                mem[mem[64] + 100] = 0
                                mem[mem[64] + 132] = arg4
                                require ext_code.size(games_[idx])
                                call games_[idx].receivePlayerInfo(uint256 arg1, address arg2, bytes32 arg3, uint256 arg4, uint8 arg5) with:
                                     gas gas_remaining wei
                                    args uint256(pIDxAddr_[address(msg.sender)]), msg.sender, _5534, 0, arg4
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                idx = idx + 1
                                continue 
                            emit onNewName(0, 0, myReward[0].field_0, myReward[0].field_256, msg.value, block.timestamp, uint256(pIDxAddr_[address(msg.sender)]), msg.sender, _5534);
                else:
                    if arg2 == uint256(pIDxAddr_[address(msg.sender)]):
                        if uint256(pIDxAddr_[address(msg.sender)]) != pIDxName_[mem[128]]:
                            if pIDxName_[mem[128]]:
                                if bool(stor12[uint256(stor9[address(msg.sender)])][mem[128]]) != 1:
                                    revert with 0, 'sorry that names already taken'
                        else:
                            if not uint256(pIDxAddr_[address(msg.sender)]):
                                if pIDxName_[mem[128]]:
                                    if bool(stor12[uint256(stor9[address(msg.sender)])][mem[128]]) != 1:
                                        revert with 0, 'sorry that names already taken'
                            else:
                                if arg4 >= myReward[uint256(stor9[address(msg.sender)])].field_1568:
                                    if bool(stor12[uint256(stor9[address(msg.sender)])][mem[128]]) != 1:
                                        revert with 0, 'sorry that names already taken'
                        myReward[uint256(stor9[address(msg.sender)])].field_256 = mem[128]
                        myReward[uint256(stor9[address(msg.sender)])].field_1568 = arg4
                        pIDxName_[mem[128]] = uint256(pIDxAddr_[address(msg.sender)])
                        if not stor12[uint256(stor9[address(msg.sender)])][mem[128]]:
                            stor12[uint256(stor9[address(msg.sender)])][mem[128]] = 1
                            myReward[uint256(stor9[address(msg.sender)])].field_768++
                            plyrNameList_[uint256(stor9[address(msg.sender)])][stor11[uint256(stor9[address(msg.sender)])].field_768 + 1] = mem[128]
                        call stor0 with:
                           value msg.value / 2 wei
                             gas 2300 * is_zero(value) wei
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        call stor1 with:
                           value msg.value / 2 wei
                             gas 2300 * is_zero(value) wei
                        if arg3 != 1:
                            emit onNewName(0, 0, myReward[0].field_0, myReward[0].field_256, msg.value, block.timestamp, uint256(pIDxAddr_[address(msg.sender)]), msg.sender, mem[128]);
                        else:
                            idx = 1
                            while idx <= gID_:
                                mem[0] = idx
                                mem[32] = 4
                                mem[mem[64]] = 0x2341a1af00000000000000000000000000000000000000000000000000000000
                                mem[mem[64] + 4] = uint256(pIDxAddr_[address(msg.sender)])
                                mem[mem[64] + 36] = msg.sender
                                mem[mem[64] + 68] = _5534
                                mem[mem[64] + 100] = 0
                                mem[mem[64] + 132] = arg4
                                require ext_code.size(games_[idx])
                                call games_[idx].receivePlayerInfo(uint256 arg1, address arg2, bytes32 arg3, uint256 arg4, uint8 arg5) with:
                                     gas gas_remaining wei
                                    args uint256(pIDxAddr_[address(msg.sender)]), msg.sender, _5534, 0, arg4
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                idx = idx + 1
                                continue 
                            emit onNewName(0, 0, myReward[0].field_0, myReward[0].field_256, msg.value, block.timestamp, uint256(pIDxAddr_[address(msg.sender)]), msg.sender, _5534);
                    else:
                        myReward[uint256(stor9[address(msg.sender)])].field_512 = arg2
                        if uint256(pIDxAddr_[address(msg.sender)]) != pIDxName_[mem[128]]:
                            if pIDxName_[mem[128]]:
                                if bool(stor12[uint256(stor9[address(msg.sender)])][mem[128]]) != 1:
                                    revert with 0, 'sorry that names already taken'
                        else:
                            if not uint256(pIDxAddr_[address(msg.sender)]):
                                if pIDxName_[mem[128]]:
                                    if bool(stor12[uint256(stor9[address(msg.sender)])][mem[128]]) != 1:
                                        revert with 0, 'sorry that names already taken'
                            else:
                                if arg4 >= myReward[uint256(stor9[address(msg.sender)])].field_1568:
                                    if bool(stor12[uint256(stor9[address(msg.sender)])][mem[128]]) != 1:
                                        revert with 0, 'sorry that names already taken'
                        myReward[uint256(stor9[address(msg.sender)])].field_256 = mem[128]
                        myReward[uint256(stor9[address(msg.sender)])].field_1568 = arg4
                        pIDxName_[mem[128]] = uint256(pIDxAddr_[address(msg.sender)])
                        if not stor12[uint256(stor9[address(msg.sender)])][mem[128]]:
                            stor12[uint256(stor9[address(msg.sender)])][mem[128]] = 1
                            myReward[uint256(stor9[address(msg.sender)])].field_768++
                            plyrNameList_[uint256(stor9[address(msg.sender)])][stor11[uint256(stor9[address(msg.sender)])].field_768 + 1] = mem[128]
                        call stor0 with:
                           value msg.value / 2 wei
                             gas 2300 * is_zero(value) wei
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        call stor1 with:
                           value msg.value / 2 wei
                             gas 2300 * is_zero(value) wei
                        if arg3 != 1:
                            emit onNewName(0, arg2, myReward[arg2].field_0, myReward[arg2].field_256, msg.value, block.timestamp, uint256(pIDxAddr_[address(msg.sender)]), msg.sender, mem[128]);
                        else:
                            idx = 1
                            while idx <= gID_:
                                mem[0] = idx
                                mem[32] = 4
                                mem[mem[64]] = 0x2341a1af00000000000000000000000000000000000000000000000000000000
                                mem[mem[64] + 4] = uint256(pIDxAddr_[address(msg.sender)])
                                mem[mem[64] + 36] = msg.sender
                                mem[mem[64] + 68] = _5534
                                mem[mem[64] + 100] = arg2
                                mem[mem[64] + 132] = arg4
                                require ext_code.size(games_[idx])
                                call games_[idx].receivePlayerInfo(uint256 arg1, address arg2, bytes32 arg3, uint256 arg4, uint8 arg5) with:
                                     gas gas_remaining wei
                                    args uint256(pIDxAddr_[address(msg.sender)]), msg.sender, _5534, arg2, arg4
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                idx = idx + 1
                                continue 
                            emit onNewName(0, arg2, myReward[arg2].field_0, myReward[arg2].field_256, msg.value, block.timestamp, uint256(pIDxAddr_[address(msg.sender)]), msg.sender, _5534);
        else:
            pID_++
            uint256(pIDxAddr_[address(msg.sender)]) = pID_ + 1
            myReward[stor8 + 1].field_0 = msg.sender
            if not arg2:
                if uint256(pIDxAddr_[address(msg.sender)]) != pIDxName_[mem[128]]:
                    if pIDxName_[mem[128]]:
                        if bool(stor12[uint256(stor9[address(msg.sender)])][mem[128]]) != 1:
                            revert with 0, 'sorry that names already taken'
                else:
                    if not uint256(pIDxAddr_[address(msg.sender)]):
                        if pIDxName_[mem[128]]:
                            if bool(stor12[uint256(stor9[address(msg.sender)])][mem[128]]) != 1:
                                revert with 0, 'sorry that names already taken'
                    else:
                        if arg4 >= myReward[uint256(stor9[address(msg.sender)])].field_1568:
                            if bool(stor12[uint256(stor9[address(msg.sender)])][mem[128]]) != 1:
                                revert with 0, 'sorry that names already taken'
                myReward[uint256(stor9[address(msg.sender)])].field_256 = mem[128]
                myReward[uint256(stor9[address(msg.sender)])].field_1568 = arg4
                pIDxName_[mem[128]] = uint256(pIDxAddr_[address(msg.sender)])
                if not stor12[uint256(stor9[address(msg.sender)])][mem[128]]:
                    stor12[uint256(stor9[address(msg.sender)])][mem[128]] = 1
                    myReward[uint256(stor9[address(msg.sender)])].field_768++
                    plyrNameList_[uint256(stor9[address(msg.sender)])][stor11[uint256(stor9[address(msg.sender)])].field_768 + 1] = mem[128]
                call stor0 with:
                   value msg.value / 2 wei
                     gas 2300 * is_zero(value) wei
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                call stor1 with:
                   value msg.value / 2 wei
                     gas 2300 * is_zero(value) wei
                if arg2 != uint256(pIDxAddr_[address(msg.sender)]):
                    if arg3 != 1:
                        emit onNewName(1, arg2, myReward[arg2].field_0, myReward[arg2].field_256, msg.value, block.timestamp, uint256(pIDxAddr_[address(msg.sender)]), msg.sender, mem[128]);
                    else:
                        idx = 1
                        while idx <= gID_:
                            mem[0] = idx
                            mem[32] = 4
                            mem[mem[64]] = 0x2341a1af00000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = uint256(pIDxAddr_[address(msg.sender)])
                            mem[mem[64] + 36] = msg.sender
                            mem[mem[64] + 68] = _5534
                            mem[mem[64] + 100] = arg2
                            mem[mem[64] + 132] = arg4
                            require ext_code.size(games_[idx])
                            call games_[idx].receivePlayerInfo(uint256 arg1, address arg2, bytes32 arg3, uint256 arg4, uint8 arg5) with:
                                 gas gas_remaining wei
                                args uint256(pIDxAddr_[address(msg.sender)]), msg.sender, _5534, arg2, arg4
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            idx = idx + 1
                            continue 
                        emit onNewName(1, arg2, myReward[arg2].field_0, myReward[arg2].field_256, msg.value, block.timestamp, uint256(pIDxAddr_[address(msg.sender)]), msg.sender, _5534);
                else:
                    if arg3 != 1:
                        emit onNewName(1, 0, myReward[0].field_0, myReward[0].field_256, msg.value, block.timestamp, uint256(pIDxAddr_[address(msg.sender)]), msg.sender, mem[128]);
                    else:
                        idx = 1
                        while idx <= gID_:
                            mem[0] = idx
                            mem[32] = 4
                            mem[mem[64]] = 0x2341a1af00000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = uint256(pIDxAddr_[address(msg.sender)])
                            mem[mem[64] + 36] = msg.sender
                            mem[mem[64] + 68] = _5534
                            mem[mem[64] + 100] = 0
                            mem[mem[64] + 132] = arg4
                            require ext_code.size(games_[idx])
                            call games_[idx].receivePlayerInfo(uint256 arg1, address arg2, bytes32 arg3, uint256 arg4, uint8 arg5) with:
                                 gas gas_remaining wei
                                args uint256(pIDxAddr_[address(msg.sender)]), msg.sender, _5534, 0, arg4
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            idx = idx + 1
                            continue 
                        emit onNewName(1, 0, myReward[0].field_0, myReward[0].field_256, msg.value, block.timestamp, uint256(pIDxAddr_[address(msg.sender)]), msg.sender, _5534);
            else:
                if arg2 == myReward[uint256(stor9[address(msg.sender)])].field_512:
                    if uint256(pIDxAddr_[address(msg.sender)]) != pIDxName_[mem[128]]:
                        if pIDxName_[mem[128]]:
                            if bool(stor12[uint256(stor9[address(msg.sender)])][mem[128]]) != 1:
                                revert with 0, 'sorry that names already taken'
                    else:
                        if not uint256(pIDxAddr_[address(msg.sender)]):
                            if pIDxName_[mem[128]]:
                                if bool(stor12[uint256(stor9[address(msg.sender)])][mem[128]]) != 1:
                                    revert with 0, 'sorry that names already taken'
                        else:
                            if arg4 >= myReward[uint256(stor9[address(msg.sender)])].field_1568:
                                if bool(stor12[uint256(stor9[address(msg.sender)])][mem[128]]) != 1:
                                    revert with 0, 'sorry that names already taken'
                    myReward[uint256(stor9[address(msg.sender)])].field_256 = mem[128]
                    myReward[uint256(stor9[address(msg.sender)])].field_1568 = arg4
                    pIDxName_[mem[128]] = uint256(pIDxAddr_[address(msg.sender)])
                    if not stor12[uint256(stor9[address(msg.sender)])][mem[128]]:
                        stor12[uint256(stor9[address(msg.sender)])][mem[128]] = 1
                        myReward[uint256(stor9[address(msg.sender)])].field_768++
                        plyrNameList_[uint256(stor9[address(msg.sender)])][stor11[uint256(stor9[address(msg.sender)])].field_768 + 1] = mem[128]
                    call stor0 with:
                       value msg.value / 2 wei
                         gas 2300 * is_zero(value) wei
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    call stor1 with:
                       value msg.value / 2 wei
                         gas 2300 * is_zero(value) wei
                    if arg2 != uint256(pIDxAddr_[address(msg.sender)]):
                        if arg3 != 1:
                            emit onNewName(1, arg2, myReward[arg2].field_0, myReward[arg2].field_256, msg.value, block.timestamp, uint256(pIDxAddr_[address(msg.sender)]), msg.sender, mem[128]);
                        else:
                            idx = 1
                            while idx <= gID_:
                                mem[0] = idx
                                mem[32] = 4
                                mem[mem[64]] = 0x2341a1af00000000000000000000000000000000000000000000000000000000
                                mem[mem[64] + 4] = uint256(pIDxAddr_[address(msg.sender)])
                                mem[mem[64] + 36] = msg.sender
                                mem[mem[64] + 68] = _5534
                                mem[mem[64] + 100] = arg2
                                mem[mem[64] + 132] = arg4
                                require ext_code.size(games_[idx])
                                call games_[idx].receivePlayerInfo(uint256 arg1, address arg2, bytes32 arg3, uint256 arg4, uint8 arg5) with:
                                     gas gas_remaining wei
                                    args uint256(pIDxAddr_[address(msg.sender)]), msg.sender, _5534, arg2, arg4
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                idx = idx + 1
                                continue 
                            emit onNewName(1, arg2, myReward[arg2].field_0, myReward[arg2].field_256, msg.value, block.timestamp, uint256(pIDxAddr_[address(msg.sender)]), msg.sender, _5534);
                    else:
                        if arg3 != 1:
                            emit onNewName(1, 0, myReward[0].field_0, myReward[0].field_256, msg.value, block.timestamp, uint256(pIDxAddr_[address(msg.sender)]), msg.sender, mem[128]);
                        else:
                            idx = 1
                            while idx <= gID_:
                                mem[0] = idx
                                mem[32] = 4
                                mem[mem[64]] = 0x2341a1af00000000000000000000000000000000000000000000000000000000
                                mem[mem[64] + 4] = uint256(pIDxAddr_[address(msg.sender)])
                                mem[mem[64] + 36] = msg.sender
                                mem[mem[64] + 68] = _5534
                                mem[mem[64] + 100] = 0
                                mem[mem[64] + 132] = arg4
                                require ext_code.size(games_[idx])
                                call games_[idx].receivePlayerInfo(uint256 arg1, address arg2, bytes32 arg3, uint256 arg4, uint8 arg5) with:
                                     gas gas_remaining wei
                                    args uint256(pIDxAddr_[address(msg.sender)]), msg.sender, _5534, 0, arg4
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                idx = idx + 1
                                continue 
                            emit onNewName(1, 0, myReward[0].field_0, myReward[0].field_256, msg.value, block.timestamp, uint256(pIDxAddr_[address(msg.sender)]), msg.sender, _5534);
                else:
                    if arg2 == uint256(pIDxAddr_[address(msg.sender)]):
                        if uint256(pIDxAddr_[address(msg.sender)]) != pIDxName_[mem[128]]:
                            if pIDxName_[mem[128]]:
                                if bool(stor12[uint256(stor9[address(msg.sender)])][mem[128]]) != 1:
                                    revert with 0, 'sorry that names already taken'
                        else:
                            if not uint256(pIDxAddr_[address(msg.sender)]):
                                if pIDxName_[mem[128]]:
                                    if bool(stor12[uint256(stor9[address(msg.sender)])][mem[128]]) != 1:
                                        revert with 0, 'sorry that names already taken'
                            else:
                                if arg4 >= myReward[uint256(stor9[address(msg.sender)])].field_1568:
                                    if bool(stor12[uint256(stor9[address(msg.sender)])][mem[128]]) != 1:
                                        revert with 0, 'sorry that names already taken'
                        myReward[uint256(stor9[address(msg.sender)])].field_256 = mem[128]
                        myReward[uint256(stor9[address(msg.sender)])].field_1568 = arg4
                        pIDxName_[mem[128]] = uint256(pIDxAddr_[address(msg.sender)])
                        if not stor12[uint256(stor9[address(msg.sender)])][mem[128]]:
                            stor12[uint256(stor9[address(msg.sender)])][mem[128]] = 1
                            myReward[uint256(stor9[address(msg.sender)])].field_768++
                            plyrNameList_[uint256(stor9[address(msg.sender)])][stor11[uint256(stor9[address(msg.sender)])].field_768 + 1] = mem[128]
                        call stor0 with:
                           value msg.value / 2 wei
                             gas 2300 * is_zero(value) wei
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        call stor1 with:
                           value msg.value / 2 wei
                             gas 2300 * is_zero(value) wei
                        if arg3 != 1:
                            emit onNewName(1, 0, myReward[0].field_0, myReward[0].field_256, msg.value, block.timestamp, uint256(pIDxAddr_[address(msg.sender)]), msg.sender, mem[128]);
                        else:
                            idx = 1
                            while idx <= gID_:
                                mem[0] = idx
                                mem[32] = 4
                                mem[mem[64]] = 0x2341a1af00000000000000000000000000000000000000000000000000000000
                                mem[mem[64] + 4] = uint256(pIDxAddr_[address(msg.sender)])
                                mem[mem[64] + 36] = msg.sender
                                mem[mem[64] + 68] = _5534
                                mem[mem[64] + 100] = 0
                                mem[mem[64] + 132] = arg4
                                require ext_code.size(games_[idx])
                                call games_[idx].receivePlayerInfo(uint256 arg1, address arg2, bytes32 arg3, uint256 arg4, uint8 arg5) with:
                                     gas gas_remaining wei
                                    args uint256(pIDxAddr_[address(msg.sender)]), msg.sender, _5534, 0, arg4
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                idx = idx + 1
                                continue 
                            emit onNewName(1, 0, myReward[0].field_0, myReward[0].field_256, msg.value, block.timestamp, uint256(pIDxAddr_[address(msg.sender)]), msg.sender, _5534);
                    else:
                        myReward[uint256(stor9[address(msg.sender)])].field_512 = arg2
                        if uint256(pIDxAddr_[address(msg.sender)]) != pIDxName_[mem[128]]:
                            if pIDxName_[mem[128]]:
                                if bool(stor12[uint256(stor9[address(msg.sender)])][mem[128]]) != 1:
                                    revert with 0, 'sorry that names already taken'
                        else:
                            if not uint256(pIDxAddr_[address(msg.sender)]):
                                if pIDxName_[mem[128]]:
                                    if bool(stor12[uint256(stor9[address(msg.sender)])][mem[128]]) != 1:
                                        revert with 0, 'sorry that names already taken'
                            else:
                                if arg4 >= myReward[uint256(stor9[address(msg.sender)])].field_1568:
                                    if bool(stor12[uint256(stor9[address(msg.sender)])][mem[128]]) != 1:
                                        revert with 0, 'sorry that names already taken'
                        myReward[uint256(stor9[address(msg.sender)])].field_256 = mem[128]
                        myReward[uint256(stor9[address(msg.sender)])].field_1568 = arg4
                        pIDxName_[mem[128]] = uint256(pIDxAddr_[address(msg.sender)])
                        if not stor12[uint256(stor9[address(msg.sender)])][mem[128]]:
                            stor12[uint256(stor9[address(msg.sender)])][mem[128]] = 1
                            myReward[uint256(stor9[address(msg.sender)])].field_768++
                            plyrNameList_[uint256(stor9[address(msg.sender)])][stor11[uint256(stor9[address(msg.sender)])].field_768 + 1] = mem[128]
                        call stor0 with:
                           value msg.value / 2 wei
                             gas 2300 * is_zero(value) wei
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        call stor1 with:
                           value msg.value / 2 wei
                             gas 2300 * is_zero(value) wei
                        if arg3 != 1:
                            emit onNewName(1, arg2, myReward[arg2].field_0, myReward[arg2].field_256, msg.value, block.timestamp, uint256(pIDxAddr_[address(msg.sender)]), msg.sender, mem[128]);
                        else:
                            idx = 1
                            while idx <= gID_:
                                mem[0] = idx
                                mem[32] = 4
                                mem[mem[64]] = 0x2341a1af00000000000000000000000000000000000000000000000000000000
                                mem[mem[64] + 4] = uint256(pIDxAddr_[address(msg.sender)])
                                mem[mem[64] + 36] = msg.sender
                                mem[mem[64] + 68] = _5534
                                mem[mem[64] + 100] = arg2
                                mem[mem[64] + 132] = arg4
                                require ext_code.size(games_[idx])
                                call games_[idx].receivePlayerInfo(uint256 arg1, address arg2, bytes32 arg3, uint256 arg4, uint8 arg5) with:
                                     gas gas_remaining wei
                                    args uint256(pIDxAddr_[address(msg.sender)]), msg.sender, _5534, arg2, arg4
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                idx = idx + 1
                                continue 
                            emit onNewName(1, arg2, myReward[arg2].field_0, myReward[arg2].field_256, msg.value, block.timestamp, uint256(pIDxAddr_[address(msg.sender)]), msg.sender, _5534);
    else:
        require 1 < arg1.length
        if 0x7800000000000000000000000000000000000000000000000000000000000000 == Mask(8, 248, mem[129]):
            revert with 0, 'string cannot start with 0x'
        require 1 < arg1.length
        if 0x5800000000000000000000000000000000000000000000000000000000000000 == Mask(8, 248, mem[129]):
            revert with 0, 'string cannot start with 0X'
        idx = 0
        s = 0
        while idx < arg1.length:
            require idx < arg1.length
            require idx < arg1.length
            require idx < arg1.length
            if Mask(8, 248, mem[idx + 128]) <= '@':
                if Mask(8, 248, mem[idx + 128]) != 0x2000000000000000000000000000000000000000000000000000000000000000:
                    require idx < arg1.length
                    if Mask(8, 248, mem[idx + 128]) <= '`':
                        if Mask(8, 248, mem[idx + 128]) <= '/':
                            revert with 0, 'string contains invalid characters'
                        require idx < arg1.length
                        if Mask(8, 248, mem[idx + 128]) >= ':':
                            revert with 0, 'string contains invalid characters'
                    else:
                        if Mask(8, 248, mem[idx + 128]) >= '{':
                            require idx < arg1.length
                            if Mask(8, 248, mem[idx + 128]) <= '/':
                                revert with 0, 'string contains invalid characters'
                            require idx < arg1.length
                            if Mask(8, 248, mem[idx + 128]) >= ':':
                                revert with 0, 'string contains invalid characters'
                if 0x2000000000000000000000000000000000000000000000000000000000000000 == Mask(8, 248, mem[idx + 128]):
                    require idx + 1 < arg1.length
                    if 0x2000000000000000000000000000000000000000000000000000000000000000 == Mask(8, 248, mem[idx + 129]):
                        revert with 0, 'string cannot contain consecutive spaces'
                if s:
                    idx = idx + 1
                    s = s
                    continue 
                require idx < arg1.length
                if Mask(8, 248, mem[idx + 128]) >= '0':
                    require idx < arg1.length
                    if Mask(8, 248, mem[idx + 128]) <= '9':
                        idx = idx + 1
                        s = s
                        continue 
            else:
                require idx < arg1.length
                if Mask(8, 248, mem[idx + 128]) < '[':
                    mem[idx + 128 len 8] = Mask(8, -(('mask_shl', 8, 0, 245, ('add', 32, ('mem', ('range', ('add', 128, ('var', 0)), 1)))), 0) + 256, 0) << (('mask_shl', 8, 0, 245, ('add', 32, ('mem', ('range', ('add', 128, ('var', 0)), 1)))), 0) - 256
                    if s:
                        idx = idx + 1
                        s = s
                        continue 
                else:
                    if Mask(8, 248, mem[idx + 128]) != 0x2000000000000000000000000000000000000000000000000000000000000000:
                        require idx < arg1.length
                        if Mask(8, 248, mem[idx + 128]) <= '`':
                            if Mask(8, 248, mem[idx + 128]) <= '/':
                                revert with 0, 'string contains invalid characters'
                            require idx < arg1.length
                            if Mask(8, 248, mem[idx + 128]) >= ':':
                                revert with 0, 'string contains invalid characters'
                        else:
                            if Mask(8, 248, mem[idx + 128]) >= '{':
                                require idx < arg1.length
                                if Mask(8, 248, mem[idx + 128]) <= '/':
                                    revert with 0, 'string contains invalid characters'
                                require idx < arg1.length
                                if Mask(8, 248, mem[idx + 128]) >= ':':
                                    revert with 0, 'string contains invalid characters'
                    if 0x2000000000000000000000000000000000000000000000000000000000000000 == Mask(8, 248, mem[idx + 128]):
                        require idx + 1 < arg1.length
                        if 0x2000000000000000000000000000000000000000000000000000000000000000 == Mask(8, 248, mem[idx + 129]):
                            revert with 0, 'string cannot contain consecutive spaces'
                    if s:
                        idx = idx + 1
                        s = s
                        continue 
                    require idx < arg1.length
                    if Mask(8, 248, mem[idx + 128]) >= '0':
                        require idx < arg1.length
                        if Mask(8, 248, mem[idx + 128]) <= '9':
                            idx = idx + 1
                            s = s
                            continue 
            idx = idx + 1
            s = 1
            continue 
        if bool(s) != 1:
            revert with 0, 'string cannot be only numbers'
        _5538 = mem[128]
        if uint256(pIDxAddr_[address(msg.sender)]):
            if not arg2:
                if uint256(pIDxAddr_[address(msg.sender)]) != pIDxName_[mem[128]]:
                    if pIDxName_[mem[128]]:
                        if bool(stor12[uint256(stor9[address(msg.sender)])][mem[128]]) != 1:
                            revert with 0, 'sorry that names already taken'
                else:
                    if not uint256(pIDxAddr_[address(msg.sender)]):
                        if pIDxName_[mem[128]]:
                            if bool(stor12[uint256(stor9[address(msg.sender)])][mem[128]]) != 1:
                                revert with 0, 'sorry that names already taken'
                    else:
                        if arg4 >= myReward[uint256(stor9[address(msg.sender)])].field_1568:
                            if bool(stor12[uint256(stor9[address(msg.sender)])][mem[128]]) != 1:
                                revert with 0, 'sorry that names already taken'
                myReward[uint256(stor9[address(msg.sender)])].field_256 = mem[128]
                myReward[uint256(stor9[address(msg.sender)])].field_1568 = arg4
                pIDxName_[mem[128]] = uint256(pIDxAddr_[address(msg.sender)])
                if not stor12[uint256(stor9[address(msg.sender)])][mem[128]]:
                    stor12[uint256(stor9[address(msg.sender)])][mem[128]] = 1
                    myReward[uint256(stor9[address(msg.sender)])].field_768++
                    plyrNameList_[uint256(stor9[address(msg.sender)])][stor11[uint256(stor9[address(msg.sender)])].field_768 + 1] = mem[128]
                call stor0 with:
                   value msg.value / 2 wei
                     gas 2300 * is_zero(value) wei
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                call stor1 with:
                   value msg.value / 2 wei
                     gas 2300 * is_zero(value) wei
                if arg2 != uint256(pIDxAddr_[address(msg.sender)]):
                    if arg3 != 1:
                        emit onNewName(0, arg2, myReward[arg2].field_0, myReward[arg2].field_256, msg.value, block.timestamp, uint256(pIDxAddr_[address(msg.sender)]), msg.sender, mem[128]);
                    else:
                        idx = 1
                        while idx <= gID_:
                            mem[0] = idx
                            mem[32] = 4
                            mem[mem[64]] = 0x2341a1af00000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = uint256(pIDxAddr_[address(msg.sender)])
                            mem[mem[64] + 36] = msg.sender
                            mem[mem[64] + 68] = _5538
                            mem[mem[64] + 100] = arg2
                            mem[mem[64] + 132] = arg4
                            require ext_code.size(games_[idx])
                            call games_[idx].receivePlayerInfo(uint256 arg1, address arg2, bytes32 arg3, uint256 arg4, uint8 arg5) with:
                                 gas gas_remaining wei
                                args uint256(pIDxAddr_[address(msg.sender)]), msg.sender, _5538, arg2, arg4
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            idx = idx + 1
                            continue 
                        emit onNewName(0, arg2, myReward[arg2].field_0, myReward[arg2].field_256, msg.value, block.timestamp, uint256(pIDxAddr_[address(msg.sender)]), msg.sender, _5538);
                else:
                    if arg3 != 1:
                        emit onNewName(0, 0, myReward[0].field_0, myReward[0].field_256, msg.value, block.timestamp, uint256(pIDxAddr_[address(msg.sender)]), msg.sender, mem[128]);
                    else:
                        idx = 1
                        while idx <= gID_:
                            mem[0] = idx
                            mem[32] = 4
                            mem[mem[64]] = 0x2341a1af00000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = uint256(pIDxAddr_[address(msg.sender)])
                            mem[mem[64] + 36] = msg.sender
                            mem[mem[64] + 68] = _5538
                            mem[mem[64] + 100] = 0
                            mem[mem[64] + 132] = arg4
                            require ext_code.size(games_[idx])
                            call games_[idx].receivePlayerInfo(uint256 arg1, address arg2, bytes32 arg3, uint256 arg4, uint8 arg5) with:
                                 gas gas_remaining wei
                                args uint256(pIDxAddr_[address(msg.sender)]), msg.sender, _5538, 0, arg4
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            idx = idx + 1
                            continue 
                        emit onNewName(0, 0, myReward[0].field_0, myReward[0].field_256, msg.value, block.timestamp, uint256(pIDxAddr_[address(msg.sender)]), msg.sender, _5538);
            else:
                if arg2 == myReward[uint256(stor9[address(msg.sender)])].field_512:
                    if uint256(pIDxAddr_[address(msg.sender)]) != pIDxName_[mem[128]]:
                        if pIDxName_[mem[128]]:
                            if bool(stor12[uint256(stor9[address(msg.sender)])][mem[128]]) != 1:
                                revert with 0, 'sorry that names already taken'
                    else:
                        if not uint256(pIDxAddr_[address(msg.sender)]):
                            if pIDxName_[mem[128]]:
                                if bool(stor12[uint256(stor9[address(msg.sender)])][mem[128]]) != 1:
                                    revert with 0, 'sorry that names already taken'
                        else:
                            if arg4 >= myReward[uint256(stor9[address(msg.sender)])].field_1568:
                                if bool(stor12[uint256(stor9[address(msg.sender)])][mem[128]]) != 1:
                                    revert with 0, 'sorry that names already taken'
                    myReward[uint256(stor9[address(msg.sender)])].field_256 = mem[128]
                    myReward[uint256(stor9[address(msg.sender)])].field_1568 = arg4
                    pIDxName_[mem[128]] = uint256(pIDxAddr_[address(msg.sender)])
                    if not stor12[uint256(stor9[address(msg.sender)])][mem[128]]:
                        stor12[uint256(stor9[address(msg.sender)])][mem[128]] = 1
                        myReward[uint256(stor9[address(msg.sender)])].field_768++
                        plyrNameList_[uint256(stor9[address(msg.sender)])][stor11[uint256(stor9[address(msg.sender)])].field_768 + 1] = mem[128]
                    call stor0 with:
                       value msg.value / 2 wei
                         gas 2300 * is_zero(value) wei
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    call stor1 with:
                       value msg.value / 2 wei
                         gas 2300 * is_zero(value) wei
                    if arg2 != uint256(pIDxAddr_[address(msg.sender)]):
                        if arg3 != 1:
                            emit onNewName(0, arg2, myReward[arg2].field_0, myReward[arg2].field_256, msg.value, block.timestamp, uint256(pIDxAddr_[address(msg.sender)]), msg.sender, mem[128]);
                        else:
                            idx = 1
                            while idx <= gID_:
                                mem[0] = idx
                                mem[32] = 4
                                mem[mem[64]] = 0x2341a1af00000000000000000000000000000000000000000000000000000000
                                mem[mem[64] + 4] = uint256(pIDxAddr_[address(msg.sender)])
                                mem[mem[64] + 36] = msg.sender
                                mem[mem[64] + 68] = _5538
                                mem[mem[64] + 100] = arg2
                                mem[mem[64] + 132] = arg4
                                require ext_code.size(games_[idx])
                                call games_[idx].receivePlayerInfo(uint256 arg1, address arg2, bytes32 arg3, uint256 arg4, uint8 arg5) with:
                                     gas gas_remaining wei
                                    args uint256(pIDxAddr_[address(msg.sender)]), msg.sender, _5538, arg2, arg4
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                idx = idx + 1
                                continue 
                            emit onNewName(0, arg2, myReward[arg2].field_0, myReward[arg2].field_256, msg.value, block.timestamp, uint256(pIDxAddr_[address(msg.sender)]), msg.sender, _5538);
                    else:
                        if arg3 != 1:
                            emit onNewName(0, 0, myReward[0].field_0, myReward[0].field_256, msg.value, block.timestamp, uint256(pIDxAddr_[address(msg.sender)]), msg.sender, mem[128]);
                        else:
                            idx = 1
                            while idx <= gID_:
                                mem[0] = idx
                                mem[32] = 4
                                mem[mem[64]] = 0x2341a1af00000000000000000000000000000000000000000000000000000000
                                mem[mem[64] + 4] = uint256(pIDxAddr_[address(msg.sender)])
                                mem[mem[64] + 36] = msg.sender
                                mem[mem[64] + 68] = _5538
                                mem[mem[64] + 100] = 0
                                mem[mem[64] + 132] = arg4
                                require ext_code.size(games_[idx])
                                call games_[idx].receivePlayerInfo(uint256 arg1, address arg2, bytes32 arg3, uint256 arg4, uint8 arg5) with:
                                     gas gas_remaining wei
                                    args uint256(pIDxAddr_[address(msg.sender)]), msg.sender, _5538, 0, arg4
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                idx = idx + 1
                                continue 
                            emit onNewName(0, 0, myReward[0].field_0, myReward[0].field_256, msg.value, block.timestamp, uint256(pIDxAddr_[address(msg.sender)]), msg.sender, _5538);
                else:
                    if arg2 == uint256(pIDxAddr_[address(msg.sender)]):
                        if uint256(pIDxAddr_[address(msg.sender)]) != pIDxName_[mem[128]]:
                            if pIDxName_[mem[128]]:
                                if bool(stor12[uint256(stor9[address(msg.sender)])][mem[128]]) != 1:
                                    revert with 0, 'sorry that names already taken'
                        else:
                            if not uint256(pIDxAddr_[address(msg.sender)]):
                                if pIDxName_[mem[128]]:
                                    if bool(stor12[uint256(stor9[address(msg.sender)])][mem[128]]) != 1:
                                        revert with 0, 'sorry that names already taken'
                            else:
                                if arg4 >= myReward[uint256(stor9[address(msg.sender)])].field_1568:
                                    if bool(stor12[uint256(stor9[address(msg.sender)])][mem[128]]) != 1:
                                        revert with 0, 'sorry that names already taken'
                        myReward[uint256(stor9[address(msg.sender)])].field_256 = mem[128]
                        myReward[uint256(stor9[address(msg.sender)])].field_1568 = arg4
                        pIDxName_[mem[128]] = uint256(pIDxAddr_[address(msg.sender)])
                        if not stor12[uint256(stor9[address(msg.sender)])][mem[128]]:
                            stor12[uint256(stor9[address(msg.sender)])][mem[128]] = 1
                            myReward[uint256(stor9[address(msg.sender)])].field_768++
                            plyrNameList_[uint256(stor9[address(msg.sender)])][stor11[uint256(stor9[address(msg.sender)])].field_768 + 1] = mem[128]
                        call stor0 with:
                           value msg.value / 2 wei
                             gas 2300 * is_zero(value) wei
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        call stor1 with:
                           value msg.value / 2 wei
                             gas 2300 * is_zero(value) wei
                        if arg3 != 1:
                            emit onNewName(0, 0, myReward[0].field_0, myReward[0].field_256, msg.value, block.timestamp, uint256(pIDxAddr_[address(msg.sender)]), msg.sender, mem[128]);
                        else:
                            idx = 1
                            while idx <= gID_:
                                mem[0] = idx
                                mem[32] = 4
                                mem[mem[64]] = 0x2341a1af00000000000000000000000000000000000000000000000000000000
                                mem[mem[64] + 4] = uint256(pIDxAddr_[address(msg.sender)])
                                mem[mem[64] + 36] = msg.sender
                                mem[mem[64] + 68] = _5538
                                mem[mem[64] + 100] = 0
                                mem[mem[64] + 132] = arg4
                                require ext_code.size(games_[idx])
                                call games_[idx].receivePlayerInfo(uint256 arg1, address arg2, bytes32 arg3, uint256 arg4, uint8 arg5) with:
                                     gas gas_remaining wei
                                    args uint256(pIDxAddr_[address(msg.sender)]), msg.sender, _5538, 0, arg4
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                idx = idx + 1
                                continue 
                            emit onNewName(0, 0, myReward[0].field_0, myReward[0].field_256, msg.value, block.timestamp, uint256(pIDxAddr_[address(msg.sender)]), msg.sender, _5538);
                    else:
                        myReward[uint256(stor9[address(msg.sender)])].field_512 = arg2
                        if uint256(pIDxAddr_[address(msg.sender)]) != pIDxName_[mem[128]]:
                            if pIDxName_[mem[128]]:
                                if bool(stor12[uint256(stor9[address(msg.sender)])][mem[128]]) != 1:
                                    revert with 0, 'sorry that names already taken'
                        else:
                            if not uint256(pIDxAddr_[address(msg.sender)]):
                                if pIDxName_[mem[128]]:
                                    if bool(stor12[uint256(stor9[address(msg.sender)])][mem[128]]) != 1:
                                        revert with 0, 'sorry that names already taken'
                            else:
                                if arg4 >= myReward[uint256(stor9[address(msg.sender)])].field_1568:
                                    if bool(stor12[uint256(stor9[address(msg.sender)])][mem[128]]) != 1:
                                        revert with 0, 'sorry that names already taken'
                        myReward[uint256(stor9[address(msg.sender)])].field_256 = mem[128]
                        myReward[uint256(stor9[address(msg.sender)])].field_1568 = arg4
                        pIDxName_[mem[128]] = uint256(pIDxAddr_[address(msg.sender)])
                        if not stor12[uint256(stor9[address(msg.sender)])][mem[128]]:
                            stor12[uint256(stor9[address(msg.sender)])][mem[128]] = 1
                            myReward[uint256(stor9[address(msg.sender)])].field_768++
                            plyrNameList_[uint256(stor9[address(msg.sender)])][stor11[uint256(stor9[address(msg.sender)])].field_768 + 1] = mem[128]
                        call stor0 with:
                           value msg.value / 2 wei
                             gas 2300 * is_zero(value) wei
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        call stor1 with:
                           value msg.value / 2 wei
                             gas 2300 * is_zero(value) wei
                        if arg3 != 1:
                            emit onNewName(0, arg2, myReward[arg2].field_0, myReward[arg2].field_256, msg.value, block.timestamp, uint256(pIDxAddr_[address(msg.sender)]), msg.sender, mem[128]);
                        else:
                            idx = 1
                            while idx <= gID_:
                                mem[0] = idx
                                mem[32] = 4
                                mem[mem[64]] = 0x2341a1af00000000000000000000000000000000000000000000000000000000
                                mem[mem[64] + 4] = uint256(pIDxAddr_[address(msg.sender)])
                                mem[mem[64] + 36] = msg.sender
                                mem[mem[64] + 68] = _5538
                                mem[mem[64] + 100] = arg2
                                mem[mem[64] + 132] = arg4
                                require ext_code.size(games_[idx])
                                call games_[idx].receivePlayerInfo(uint256 arg1, address arg2, bytes32 arg3, uint256 arg4, uint8 arg5) with:
                                     gas gas_remaining wei
                                    args uint256(pIDxAddr_[address(msg.sender)]), msg.sender, _5538, arg2, arg4
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                idx = idx + 1
                                continue 
                            emit onNewName(0, arg2, myReward[arg2].field_0, myReward[arg2].field_256, msg.value, block.timestamp, uint256(pIDxAddr_[address(msg.sender)]), msg.sender, _5538);
        else:
            pID_++
            uint256(pIDxAddr_[address(msg.sender)]) = pID_ + 1
            myReward[stor8 + 1].field_0 = msg.sender
            if not arg2:
                if uint256(pIDxAddr_[address(msg.sender)]) != pIDxName_[mem[128]]:
                    if pIDxName_[mem[128]]:
                        if bool(stor12[uint256(stor9[address(msg.sender)])][mem[128]]) != 1:
                            revert with 0, 'sorry that names already taken'
                else:
                    if not uint256(pIDxAddr_[address(msg.sender)]):
                        if pIDxName_[mem[128]]:
                            if bool(stor12[uint256(stor9[address(msg.sender)])][mem[128]]) != 1:
                                revert with 0, 'sorry that names already taken'
                    else:
                        if arg4 >= myReward[uint256(stor9[address(msg.sender)])].field_1568:
                            if bool(stor12[uint256(stor9[address(msg.sender)])][mem[128]]) != 1:
                                revert with 0, 'sorry that names already taken'
                myReward[uint256(stor9[address(msg.sender)])].field_256 = mem[128]
                myReward[uint256(stor9[address(msg.sender)])].field_1568 = arg4
                pIDxName_[mem[128]] = uint256(pIDxAddr_[address(msg.sender)])
                if not stor12[uint256(stor9[address(msg.sender)])][mem[128]]:
                    stor12[uint256(stor9[address(msg.sender)])][mem[128]] = 1
                    myReward[uint256(stor9[address(msg.sender)])].field_768++
                    plyrNameList_[uint256(stor9[address(msg.sender)])][stor11[uint256(stor9[address(msg.sender)])].field_768 + 1] = mem[128]
                call stor0 with:
                   value msg.value / 2 wei
                     gas 2300 * is_zero(value) wei
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                call stor1 with:
                   value msg.value / 2 wei
                     gas 2300 * is_zero(value) wei
                if arg2 != uint256(pIDxAddr_[address(msg.sender)]):
                    if arg3 != 1:
                        emit onNewName(1, arg2, myReward[arg2].field_0, myReward[arg2].field_256, msg.value, block.timestamp, uint256(pIDxAddr_[address(msg.sender)]), msg.sender, mem[128]);
                    else:
                        idx = 1
                        while idx <= gID_:
                            mem[0] = idx
                            mem[32] = 4
                            mem[mem[64]] = 0x2341a1af00000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = uint256(pIDxAddr_[address(msg.sender)])
                            mem[mem[64] + 36] = msg.sender
                            mem[mem[64] + 68] = _5538
                            mem[mem[64] + 100] = arg2
                            mem[mem[64] + 132] = arg4
                            require ext_code.size(games_[idx])
                            call games_[idx].receivePlayerInfo(uint256 arg1, address arg2, bytes32 arg3, uint256 arg4, uint8 arg5) with:
                                 gas gas_remaining wei
                                args uint256(pIDxAddr_[address(msg.sender)]), msg.sender, _5538, arg2, arg4
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            idx = idx + 1
                            continue 
                        emit onNewName(1, arg2, myReward[arg2].field_0, myReward[arg2].field_256, msg.value, block.timestamp, uint256(pIDxAddr_[address(msg.sender)]), msg.sender, _5538);
                else:
                    if arg3 != 1:
                        emit onNewName(1, 0, myReward[0].field_0, myReward[0].field_256, msg.value, block.timestamp, uint256(pIDxAddr_[address(msg.sender)]), msg.sender, mem[128]);
                    else:
                        idx = 1
                        while idx <= gID_:
                            mem[0] = idx
                            mem[32] = 4
                            mem[mem[64]] = 0x2341a1af00000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = uint256(pIDxAddr_[address(msg.sender)])
                            mem[mem[64] + 36] = msg.sender
                            mem[mem[64] + 68] = _5538
                            mem[mem[64] + 100] = 0
                            mem[mem[64] + 132] = arg4
                            require ext_code.size(games_[idx])
                            call games_[idx].receivePlayerInfo(uint256 arg1, address arg2, bytes32 arg3, uint256 arg4, uint8 arg5) with:
                                 gas gas_remaining wei
                                args uint256(pIDxAddr_[address(msg.sender)]), msg.sender, _5538, 0, arg4
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            idx = idx + 1
                            continue 
                        emit onNewName(1, 0, myReward[0].field_0, myReward[0].field_256, msg.value, block.timestamp, uint256(pIDxAddr_[address(msg.sender)]), msg.sender, _5538);
            else:
                if arg2 == myReward[uint256(stor9[address(msg.sender)])].field_512:
                    if uint256(pIDxAddr_[address(msg.sender)]) != pIDxName_[mem[128]]:
                        if pIDxName_[mem[128]]:
                            if bool(stor12[uint256(stor9[address(msg.sender)])][mem[128]]) != 1:
                                revert with 0, 'sorry that names already taken'
                    else:
                        if not uint256(pIDxAddr_[address(msg.sender)]):
                            if pIDxName_[mem[128]]:
                                if bool(stor12[uint256(stor9[address(msg.sender)])][mem[128]]) != 1:
                                    revert with 0, 'sorry that names already taken'
                        else:
                            if arg4 >= myReward[uint256(stor9[address(msg.sender)])].field_1568:
                                if bool(stor12[uint256(stor9[address(msg.sender)])][mem[128]]) != 1:
                                    revert with 0, 'sorry that names already taken'
                    myReward[uint256(stor9[address(msg.sender)])].field_256 = mem[128]
                    myReward[uint256(stor9[address(msg.sender)])].field_1568 = arg4
                    pIDxName_[mem[128]] = uint256(pIDxAddr_[address(msg.sender)])
                    if not stor12[uint256(stor9[address(msg.sender)])][mem[128]]:
                        stor12[uint256(stor9[address(msg.sender)])][mem[128]] = 1
                        myReward[uint256(stor9[address(msg.sender)])].field_768++
                        plyrNameList_[uint256(stor9[address(msg.sender)])][stor11[uint256(stor9[address(msg.sender)])].field_768 + 1] = mem[128]
                    call stor0 with:
                       value msg.value / 2 wei
                         gas 2300 * is_zero(value) wei
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    call stor1 with:
                       value msg.value / 2 wei
                         gas 2300 * is_zero(value) wei
                    if arg2 != uint256(pIDxAddr_[address(msg.sender)]):
                        if arg3 != 1:
                            emit onNewName(1, arg2, myReward[arg2].field_0, myReward[arg2].field_256, msg.value, block.timestamp, uint256(pIDxAddr_[address(msg.sender)]), msg.sender, mem[128]);
                        else:
                            idx = 1
                            while idx <= gID_:
                                mem[0] = idx
                                mem[32] = 4
                                mem[mem[64]] = 0x2341a1af00000000000000000000000000000000000000000000000000000000
                                mem[mem[64] + 4] = uint256(pIDxAddr_[address(msg.sender)])
                                mem[mem[64] + 36] = msg.sender
                                mem[mem[64] + 68] = _5538
                                mem[mem[64] + 100] = arg2
                                mem[mem[64] + 132] = arg4
                                require ext_code.size(games_[idx])
                                call games_[idx].receivePlayerInfo(uint256 arg1, address arg2, bytes32 arg3, uint256 arg4, uint8 arg5) with:
                                     gas gas_remaining wei
                                    args uint256(pIDxAddr_[address(msg.sender)]), msg.sender, _5538, arg2, arg4
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                idx = idx + 1
                                continue 
                            emit onNewName(1, arg2, myReward[arg2].field_0, myReward[arg2].field_256, msg.value, block.timestamp, uint256(pIDxAddr_[address(msg.sender)]), msg.sender, _5538);
                    else:
                        if arg3 != 1:
                            emit onNewName(1, 0, myReward[0].field_0, myReward[0].field_256, msg.value, block.timestamp, uint256(pIDxAddr_[address(msg.sender)]), msg.sender, mem[128]);
                        else:
                            idx = 1
                            while idx <= gID_:
                                mem[0] = idx
                                mem[32] = 4
                                mem[mem[64]] = 0x2341a1af00000000000000000000000000000000000000000000000000000000
                                mem[mem[64] + 4] = uint256(pIDxAddr_[address(msg.sender)])
                                mem[mem[64] + 36] = msg.sender
                                mem[mem[64] + 68] = _5538
                                mem[mem[64] + 100] = 0
                                mem[mem[64] + 132] = arg4
                                require ext_code.size(games_[idx])
                                call games_[idx].receivePlayerInfo(uint256 arg1, address arg2, bytes32 arg3, uint256 arg4, uint8 arg5) with:
                                     gas gas_remaining wei
                                    args uint256(pIDxAddr_[address(msg.sender)]), msg.sender, _5538, 0, arg4
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                idx = idx + 1
                                continue 
                            emit onNewName(1, 0, myReward[0].field_0, myReward[0].field_256, msg.value, block.timestamp, uint256(pIDxAddr_[address(msg.sender)]), msg.sender, _5538);
                else:
                    if arg2 == uint256(pIDxAddr_[address(msg.sender)]):
                        if uint256(pIDxAddr_[address(msg.sender)]) != pIDxName_[mem[128]]:
                            if pIDxName_[mem[128]]:
                                if bool(stor12[uint256(stor9[address(msg.sender)])][mem[128]]) != 1:
                                    revert with 0, 'sorry that names already taken'
                        else:
                            if not uint256(pIDxAddr_[address(msg.sender)]):
                                if pIDxName_[mem[128]]:
                                    if bool(stor12[uint256(stor9[address(msg.sender)])][mem[128]]) != 1:
                                        revert with 0, 'sorry that names already taken'
                            else:
                                if arg4 >= myReward[uint256(stor9[address(msg.sender)])].field_1568:
                                    if bool(stor12[uint256(stor9[address(msg.sender)])][mem[128]]) != 1:
                                        revert with 0, 'sorry that names already taken'
                        myReward[uint256(stor9[address(msg.sender)])].field_256 = mem[128]
                        myReward[uint256(stor9[address(msg.sender)])].field_1568 = arg4
                        pIDxName_[mem[128]] = uint256(pIDxAddr_[address(msg.sender)])
                        if not stor12[uint256(stor9[address(msg.sender)])][mem[128]]:
                            stor12[uint256(stor9[address(msg.sender)])][mem[128]] = 1
                            myReward[uint256(stor9[address(msg.sender)])].field_768++
                            plyrNameList_[uint256(stor9[address(msg.sender)])][stor11[uint256(stor9[address(msg.sender)])].field_768 + 1] = mem[128]
                        call stor0 with:
                           value msg.value / 2 wei
                             gas 2300 * is_zero(value) wei
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        call stor1 with:
                           value msg.value / 2 wei
                             gas 2300 * is_zero(value) wei
                        if arg3 != 1:
                            emit onNewName(1, 0, myReward[0].field_0, myReward[0].field_256, msg.value, block.timestamp, uint256(pIDxAddr_[address(msg.sender)]), msg.sender, mem[128]);
                        else:
                            idx = 1
                            while idx <= gID_:
                                mem[0] = idx
                                mem[32] = 4
                                mem[mem[64]] = 0x2341a1af00000000000000000000000000000000000000000000000000000000
                                mem[mem[64] + 4] = uint256(pIDxAddr_[address(msg.sender)])
                                mem[mem[64] + 36] = msg.sender
                                mem[mem[64] + 68] = _5538
                                mem[mem[64] + 100] = 0
                                mem[mem[64] + 132] = arg4
                                require ext_code.size(games_[idx])
                                call games_[idx].receivePlayerInfo(uint256 arg1, address arg2, bytes32 arg3, uint256 arg4, uint8 arg5) with:
                                     gas gas_remaining wei
                                    args uint256(pIDxAddr_[address(msg.sender)]), msg.sender, _5538, 0, arg4
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                idx = idx + 1
                                continue 
                            emit onNewName(1, 0, myReward[0].field_0, myReward[0].field_256, msg.value, block.timestamp, uint256(pIDxAddr_[address(msg.sender)]), msg.sender, _5538);
                    else:
                        myReward[uint256(stor9[address(msg.sender)])].field_512 = arg2
                        if uint256(pIDxAddr_[address(msg.sender)]) != pIDxName_[mem[128]]:
                            if pIDxName_[mem[128]]:
                                if bool(stor12[uint256(stor9[address(msg.sender)])][mem[128]]) != 1:
                                    revert with 0, 'sorry that names already taken'
                        else:
                            if not uint256(pIDxAddr_[address(msg.sender)]):
                                if pIDxName_[mem[128]]:
                                    if bool(stor12[uint256(stor9[address(msg.sender)])][mem[128]]) != 1:
                                        revert with 0, 'sorry that names already taken'
                            else:
                                if arg4 >= myReward[uint256(stor9[address(msg.sender)])].field_1568:
                                    if bool(stor12[uint256(stor9[address(msg.sender)])][mem[128]]) != 1:
                                        revert with 0, 'sorry that names already taken'
                        myReward[uint256(stor9[address(msg.sender)])].field_256 = mem[128]
                        myReward[uint256(stor9[address(msg.sender)])].field_1568 = arg4
                        pIDxName_[mem[128]] = uint256(pIDxAddr_[address(msg.sender)])
                        if not stor12[uint256(stor9[address(msg.sender)])][mem[128]]:
                            stor12[uint256(stor9[address(msg.sender)])][mem[128]] = 1
                            myReward[uint256(stor9[address(msg.sender)])].field_768++
                            plyrNameList_[uint256(stor9[address(msg.sender)])][stor11[uint256(stor9[address(msg.sender)])].field_768 + 1] = mem[128]
                        call stor0 with:
                           value msg.value / 2 wei
                             gas 2300 * is_zero(value) wei
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        call stor1 with:
                           value msg.value / 2 wei
                             gas 2300 * is_zero(value) wei
                        if arg3 != 1:
                            emit onNewName(1, arg2, myReward[arg2].field_0, myReward[arg2].field_256, msg.value, block.timestamp, uint256(pIDxAddr_[address(msg.sender)]), msg.sender, mem[128]);
                        else:
                            idx = 1
                            while idx <= gID_:
                                mem[0] = idx
                                mem[32] = 4
                                mem[mem[64]] = 0x2341a1af00000000000000000000000000000000000000000000000000000000
                                mem[mem[64] + 4] = uint256(pIDxAddr_[address(msg.sender)])
                                mem[mem[64] + 36] = msg.sender
                                mem[mem[64] + 68] = _5538
                                mem[mem[64] + 100] = arg2
                                mem[mem[64] + 132] = arg4
                                require ext_code.size(games_[idx])
                                call games_[idx].receivePlayerInfo(uint256 arg1, address arg2, bytes32 arg3, uint256 arg4, uint8 arg5) with:
                                     gas gas_remaining wei
                                    args uint256(pIDxAddr_[address(msg.sender)]), msg.sender, _5538, arg2, arg4
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                idx = idx + 1
                                continue 
                            emit onNewName(1, arg2, myReward[arg2].field_0, myReward[arg2].field_256, msg.value, block.timestamp, uint256(pIDxAddr_[address(msg.sender)]), msg.sender, _5538);
}



}

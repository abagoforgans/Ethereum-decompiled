contract main {




// =====================  Runtime code  =====================


#
#  - buy(uint256 arg1, address arg2)
#
address owner;
array of address ownerOf;
array of uint256 stor2;
array of address stor73;
mapping of struct scoreOf;
mapping of address addressOf;
uint256 numberOfCellsBought;
uint256 stor78;
uint256 currentPotSize;
uint256 stor80;
uint256 stor81;
address currentWinnerAddress;
uint256 stor83;
address trophyAddress;

function numberOfCellsBought() {
    return numberOfCellsBought
}

function scoreOf(address arg1) {
    return scoreOf[address(arg1)].field_0
}

function getCurrentWinner() {
    return currentWinnerAddress
}

function ownerOf(uint256 arg1) {
    require arg1 < 36
    return ownerOf[arg1]
}

function trophyAddress() {
    return trophyAddress
}

function owner() {
    return owner
}

function addressOf(bytes32 arg1) {
    return address(addressOf[arg1])
}

function getCurrentPotSize() {
    return currentPotSize
}

function nameOf(address arg1) {
    return scoreOf[address(arg1)].field_2048
}

function _fallback() payable {
    revert
}

function getNumberOfBlocksRemainingToWin() {
    require stor83 <= block.number
    return (-block.number + stor83 + 10000)
}

function priceOf(uint256 arg1) {
    require arg1 < 36
    if 0 == stor2[arg1]:
        return 2 * 10^15
    require arg1 < 36
    return stor2[arg1]
}

function isGameFinished() {
    if not currentWinnerAddress:
        return bool(currentWinnerAddress)
    require stor83 <= block.number
    return (-block.number + stor83 + 10000 < 0)
}

function setName(bytes32 arg1) {
    if not address(addressOf[arg1]):
        scoreOf[msg.sender].field_2048 = arg1
        uint256(addressOf[arg1]) = msg.sender or Mask(96, 160, uint256(addressOf[arg1]))
}

function withdrawDevelopersCut() {
    require msg.sender == owner
    stor78 = 0
    call owner with:
       value stor78 wei
         gas 2300 * is_zero(value) wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function nextPriceOf(uint256 arg1) {
    require arg1 < 36
    if 0 == stor2[arg1]:
        return 204 * 10^13
    require arg1 < 36
    if not stor2[arg1]:
        return 0
    require 102 * stor2[arg1] / stor2[arg1] == 102
    return (102 * stor2[arg1] / 100)
}

function withdrawPot(string arg1) {
    require ext_code.size(msg.sender) <= 0
    require owner != msg.sender
    require msg.sender == currentWinnerAddress
    require currentWinnerAddress
    require stor83 <= block.number
    require -block.number + stor83 + 10000 < 0
    currentPotSize = 0
    call msg.sender with:
       value currentPotSize wei
         gas 2300 * is_zero(value) wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require ext_code.size(trophyAddress)
    call trophyAddress.award(address arg1, string arg2) with:
         gas gas_remaining wei
        args msg.sender, Array(len=arg1.length, data=arg1[all])
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function getCells() {
    mem[128 len 1152] = code.data[6840 len 1152]
    mem[1280] = 36
    mem[1312 len 1152] = code.data[6840 len 1152]
    mem[2464] = 36
    mem[2496 len 1152] = code.data[6840 len 1152]
    mem[3648] = 36
    mem[3680 len 1152] = code.data[6840 len 1152]
    idx = 0
    while idx < 36:
        require idx < 36
        if 0 == stor2[idx]:
            mem[(32 * idx) + 128] = 2 * 10^15
        else:
            require idx < 36
            mem[(32 * idx) + 128] = stor2[idx]
        require idx < 36
        require idx < mem[1280]
        mem[(32 * idx) + 1312] = ownerOf[idx]
        require idx < 36
        mem[0] = ownerOf[idx]
        mem[32] = 74
        require idx < mem[2464]
        mem[(32 * idx) + 2496] = scoreOf[stor1[idx]].field_2048
        require idx < 36
        if 0 == stor2[idx]:
            require idx < mem[3648]
            mem[(32 * idx) + 3680] = 204 * 10^13
        else:
            require idx < 36
            if not stor2[idx]:
                require idx < mem[3648]
                mem[(32 * idx) + 3680] = 0
            else:
                require 102 * stor2[idx] / stor2[idx] == 102
                require idx < mem[3648]
                mem[(32 * idx) + 3680] = 102 * stor2[idx] / 100
        idx = idx + 1
        continue 
    mem[4832] = 128
    mem[4960] = 36
    mem[4992] = mem[128]
    mem[4864] = 1312
    mem[6144] = mem[3648]
    mem[6176 len floor32(mem[3648])] = mem[3680 len floor32(mem[3648])]
    mem[4896] = (32 * mem[3648]) + 1344
    mem[(32 * mem[3648]) + 6176] = mem[1280]
    mem[(32 * mem[3648]) + 6208 len floor32(mem[1280])] = mem[1312 len floor32(mem[1280])]
    mem[4928] = (32 * mem[1280]) + (32 * mem[3648]) + 1376
    mem[(32 * mem[1280]) + (32 * mem[3648]) + 6208] = mem[2464]
    mem[(32 * mem[1280]) + (32 * mem[3648]) + 6240 len floor32(mem[2464])] = mem[2496 len floor32(mem[2464])]
    return 128, 
           1312,
           (32 * mem[3648]) + 1344,
           (32 * mem[1280]) + (32 * mem[3648]) + 1376,
           36,
           mem[128],
           mem[5024 len 1120],
           mem[3648],
           mem[6176 len (32 * mem[2464]) + (32 * mem[1280]) + (32 * mem[3648]) + 64]
}

function earningsOfPlayer() {
    require scoreOf[address(msg.sender)].field_1280 <= stor80
    if not stor80 - scoreOf[address(msg.sender)].field_1280:
        if scoreOf[address(msg.sender)].field_1536 <= stor81:
            if not stor81 - scoreOf[address(msg.sender)].field_1536:
                if scoreOf[msg.sender].field_1024 >= scoreOf[msg.sender].field_1024:
                    return scoreOf[msg.sender].field_1024
            else:
                if (stor81 * scoreOf[address(msg.sender)].field_0) - (scoreOf[address(msg.sender)].field_1536 * scoreOf[address(msg.sender)].field_0) / stor81 - scoreOf[address(msg.sender)].field_1536 == scoreOf[address(msg.sender)].field_0:
                    if (stor81 * scoreOf[address(msg.sender)].field_0) - (scoreOf[address(msg.sender)].field_1536 * scoreOf[address(msg.sender)].field_0) + scoreOf[msg.sender].field_1024 >= scoreOf[msg.sender].field_1024:
                        return ((stor81 * scoreOf[address(msg.sender)].field_0) - (scoreOf[address(msg.sender)].field_1536 * scoreOf[address(msg.sender)].field_0) + scoreOf[msg.sender].field_1024)
    else:
        if (stor80 * scoreOf[address(msg.sender)].field_768) - (scoreOf[address(msg.sender)].field_1280 * scoreOf[address(msg.sender)].field_768) / stor80 - scoreOf[address(msg.sender)].field_1280 == scoreOf[address(msg.sender)].field_768:
            if scoreOf[address(msg.sender)].field_1536 <= stor81:
                if not stor81 - scoreOf[address(msg.sender)].field_1536:
                    if scoreOf[msg.sender].field_1024 >= scoreOf[msg.sender].field_1024:
                        if (stor80 * scoreOf[address(msg.sender)].field_768) - (scoreOf[address(msg.sender)].field_1280 * scoreOf[address(msg.sender)].field_768) + scoreOf[msg.sender].field_1024 >= scoreOf[msg.sender].field_1024:
                            return ((stor80 * scoreOf[address(msg.sender)].field_768) - (scoreOf[address(msg.sender)].field_1280 * scoreOf[address(msg.sender)].field_768) + scoreOf[msg.sender].field_1024)
                else:
                    if (stor81 * scoreOf[address(msg.sender)].field_0) - (scoreOf[address(msg.sender)].field_1536 * scoreOf[address(msg.sender)].field_0) / stor81 - scoreOf[address(msg.sender)].field_1536 == scoreOf[address(msg.sender)].field_0:
                        if (stor81 * scoreOf[address(msg.sender)].field_0) - (scoreOf[address(msg.sender)].field_1536 * scoreOf[address(msg.sender)].field_0) + scoreOf[msg.sender].field_1024 >= scoreOf[msg.sender].field_1024:
                            if (stor80 * scoreOf[address(msg.sender)].field_768) - (scoreOf[address(msg.sender)].field_1280 * scoreOf[address(msg.sender)].field_768) >= 0:
                                return ((stor80 * scoreOf[address(msg.sender)].field_768) - (scoreOf[address(msg.sender)].field_1280 * scoreOf[address(msg.sender)].field_768) + (stor81 * scoreOf[address(msg.sender)].field_0) - (scoreOf[address(msg.sender)].field_1536 * scoreOf[address(msg.sender)].field_0) + scoreOf[msg.sender].field_1024)
    revert
}

function getPlayer() {
    require scoreOf[address(msg.sender)].field_1280 <= stor80
    if not stor80 - scoreOf[address(msg.sender)].field_1280:
        if scoreOf[address(msg.sender)].field_1536 <= stor81:
            if not stor81 - scoreOf[address(msg.sender)].field_1536:
                if scoreOf[msg.sender].field_1024 >= scoreOf[msg.sender].field_1024:
                    return scoreOf[msg.sender].field_2048, 
                           scoreOf[msg.sender].field_0,
                           scoreOf[msg.sender].field_1024,
                           scoreOf[msg.sender].field_768
            else:
                if (stor81 * scoreOf[address(msg.sender)].field_0) - (scoreOf[address(msg.sender)].field_1536 * scoreOf[address(msg.sender)].field_0) / stor81 - scoreOf[address(msg.sender)].field_1536 == scoreOf[address(msg.sender)].field_0:
                    if (stor81 * scoreOf[address(msg.sender)].field_0) - (scoreOf[address(msg.sender)].field_1536 * scoreOf[address(msg.sender)].field_0) + scoreOf[msg.sender].field_1024 >= scoreOf[msg.sender].field_1024:
                        return scoreOf[msg.sender].field_2048, 
                               scoreOf[msg.sender].field_0,
                               (stor81 * scoreOf[address(msg.sender)].field_0) - (scoreOf[address(msg.sender)].field_1536 * scoreOf[address(msg.sender)].field_0) + scoreOf[msg.sender].field_1024,
                               scoreOf[msg.sender].field_768
    else:
        if (stor80 * scoreOf[address(msg.sender)].field_768) - (scoreOf[address(msg.sender)].field_1280 * scoreOf[address(msg.sender)].field_768) / stor80 - scoreOf[address(msg.sender)].field_1280 == scoreOf[address(msg.sender)].field_768:
            if scoreOf[address(msg.sender)].field_1536 <= stor81:
                if not stor81 - scoreOf[address(msg.sender)].field_1536:
                    if scoreOf[msg.sender].field_1024 >= scoreOf[msg.sender].field_1024:
                        if (stor80 * scoreOf[address(msg.sender)].field_768) - (scoreOf[address(msg.sender)].field_1280 * scoreOf[address(msg.sender)].field_768) + scoreOf[msg.sender].field_1024 >= scoreOf[msg.sender].field_1024:
                            return scoreOf[msg.sender].field_2048, 
                                   scoreOf[msg.sender].field_0,
                                   (stor80 * scoreOf[address(msg.sender)].field_768) - (scoreOf[address(msg.sender)].field_1280 * scoreOf[address(msg.sender)].field_768) + scoreOf[msg.sender].field_1024,
                                   scoreOf[msg.sender].field_768
                else:
                    if (stor81 * scoreOf[address(msg.sender)].field_0) - (scoreOf[address(msg.sender)].field_1536 * scoreOf[address(msg.sender)].field_0) / stor81 - scoreOf[address(msg.sender)].field_1536 == scoreOf[address(msg.sender)].field_0:
                        if (stor81 * scoreOf[address(msg.sender)].field_0) - (scoreOf[address(msg.sender)].field_1536 * scoreOf[address(msg.sender)].field_0) + scoreOf[msg.sender].field_1024 >= scoreOf[msg.sender].field_1024:
                            if (stor80 * scoreOf[address(msg.sender)].field_768) - (scoreOf[address(msg.sender)].field_1280 * scoreOf[address(msg.sender)].field_768) >= 0:
                                return scoreOf[msg.sender].field_2048, 
                                       scoreOf[msg.sender].field_0,
                                       (stor80 * scoreOf[address(msg.sender)].field_768) - (scoreOf[address(msg.sender)].field_1280 * scoreOf[address(msg.sender)].field_768) + (stor81 * scoreOf[address(msg.sender)].field_0) - (scoreOf[address(msg.sender)].field_1536 * scoreOf[address(msg.sender)].field_0) + scoreOf[msg.sender].field_1024,
                                       scoreOf[msg.sender].field_768
    revert
}

function withdrawEarnings() {
    require scoreOf[address(msg.sender)].field_1536 <= stor81
    if not stor81 - scoreOf[address(msg.sender)].field_1536:
        require scoreOf[address(msg.sender)].field_1024 >= scoreOf[address(msg.sender)].field_1024
    else:
        require (stor81 * scoreOf[address(msg.sender)].field_0) - (scoreOf[address(msg.sender)].field_1536 * scoreOf[address(msg.sender)].field_0) / stor81 - scoreOf[address(msg.sender)].field_1536 == scoreOf[address(msg.sender)].field_0
        require (stor81 * scoreOf[address(msg.sender)].field_0) - (scoreOf[address(msg.sender)].field_1536 * scoreOf[address(msg.sender)].field_0) + scoreOf[address(msg.sender)].field_1024 >= scoreOf[address(msg.sender)].field_1024
        scoreOf[address(msg.sender)].field_1024 = (stor81 * scoreOf[address(msg.sender)].field_0) - (scoreOf[address(msg.sender)].field_1536 * scoreOf[address(msg.sender)].field_0) + scoreOf[address(msg.sender)].field_1024
    scoreOf[address(msg.sender)].field_1536 = stor81
    require scoreOf[address(msg.sender)].field_1280 <= stor80
    if not stor80 - scoreOf[address(msg.sender)].field_1280:
        require scoreOf[address(msg.sender)].field_1024 >= scoreOf[address(msg.sender)].field_1024
    else:
        require (stor80 * scoreOf[address(msg.sender)].field_768) - (scoreOf[address(msg.sender)].field_1280 * scoreOf[address(msg.sender)].field_768) / stor80 - scoreOf[address(msg.sender)].field_1280 == scoreOf[address(msg.sender)].field_768
        require (stor80 * scoreOf[address(msg.sender)].field_768) - (scoreOf[address(msg.sender)].field_1280 * scoreOf[address(msg.sender)].field_768) + scoreOf[address(msg.sender)].field_1024 >= scoreOf[address(msg.sender)].field_1024
        scoreOf[address(msg.sender)].field_1024 = (stor80 * scoreOf[address(msg.sender)].field_768) - (scoreOf[address(msg.sender)].field_1280 * scoreOf[address(msg.sender)].field_768) + scoreOf[address(msg.sender)].field_1024
    scoreOf[address(msg.sender)].field_1280 = stor80
    require scoreOf[address(msg.sender)].field_1280 <= stor80
    if not stor80 - scoreOf[address(msg.sender)].field_1280:
        require scoreOf[address(msg.sender)].field_1536 <= stor81
        if not stor81 - scoreOf[address(msg.sender)].field_1536:
            require scoreOf[msg.sender].field_1024 >= scoreOf[msg.sender].field_1024
            scoreOf[msg.sender].field_1024 = 0
            call msg.sender with:
               value scoreOf[msg.sender].field_1024 wei
                 gas 2300 * is_zero(value) wei
        else:
            require (stor81 * scoreOf[address(msg.sender)].field_0) - (scoreOf[address(msg.sender)].field_1536 * scoreOf[address(msg.sender)].field_0) / stor81 - scoreOf[address(msg.sender)].field_1536 == scoreOf[address(msg.sender)].field_0
            require (stor81 * scoreOf[address(msg.sender)].field_0) - (scoreOf[address(msg.sender)].field_1536 * scoreOf[address(msg.sender)].field_0) + scoreOf[msg.sender].field_1024 >= scoreOf[msg.sender].field_1024
            scoreOf[msg.sender].field_1024 = 0
            call msg.sender with:
               value (stor81 * scoreOf[address(msg.sender)].field_0) - (scoreOf[address(msg.sender)].field_1536 * scoreOf[address(msg.sender)].field_0) + scoreOf[msg.sender].field_1024 wei
                 gas 2300 * is_zero(value) wei
    else:
        require (stor80 * scoreOf[address(msg.sender)].field_768) - (scoreOf[address(msg.sender)].field_1280 * scoreOf[address(msg.sender)].field_768) / stor80 - scoreOf[address(msg.sender)].field_1280 == scoreOf[address(msg.sender)].field_768
        require scoreOf[address(msg.sender)].field_1536 <= stor81
        if not stor81 - scoreOf[address(msg.sender)].field_1536:
            require scoreOf[msg.sender].field_1024 >= scoreOf[msg.sender].field_1024
            require (stor80 * scoreOf[address(msg.sender)].field_768) - (scoreOf[address(msg.sender)].field_1280 * scoreOf[address(msg.sender)].field_768) + scoreOf[msg.sender].field_1024 >= scoreOf[msg.sender].field_1024
            scoreOf[msg.sender].field_1024 = 0
            call msg.sender with:
               value (stor80 * scoreOf[address(msg.sender)].field_768) - (scoreOf[address(msg.sender)].field_1280 * scoreOf[address(msg.sender)].field_768) + scoreOf[msg.sender].field_1024 wei
                 gas 2300 * is_zero(value) wei
        else:
            require (stor81 * scoreOf[address(msg.sender)].field_0) - (scoreOf[address(msg.sender)].field_1536 * scoreOf[address(msg.sender)].field_0) / stor81 - scoreOf[address(msg.sender)].field_1536 == scoreOf[address(msg.sender)].field_0
            require (stor81 * scoreOf[address(msg.sender)].field_0) - (scoreOf[address(msg.sender)].field_1536 * scoreOf[address(msg.sender)].field_0) + scoreOf[msg.sender].field_1024 >= scoreOf[msg.sender].field_1024
            require (stor80 * scoreOf[address(msg.sender)].field_768) - (scoreOf[address(msg.sender)].field_1280 * scoreOf[address(msg.sender)].field_768) >= 0
            scoreOf[msg.sender].field_1024 = 0
            call msg.sender with:
               value (stor80 * scoreOf[address(msg.sender)].field_768) - (scoreOf[address(msg.sender)].field_1280 * scoreOf[address(msg.sender)].field_768) + (stor81 * scoreOf[address(msg.sender)].field_0) - (scoreOf[address(msg.sender)].field_1536 * scoreOf[address(msg.sender)].field_0) + scoreOf[msg.sender].field_1024 wei
                 gas 2300 * is_zero(value) wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function getPlayers() {
    mem[96] = 0
    mem[128] = 0
    mem[160] = 0
    mem[192] = 0
    mem[224] = 0
    mem[256] = 0
    mem[288] = 0
    mem[320] = 0
    mem[352] = 0
    mem[384] = stor73.length
    if not stor73.length:
        mem[(32 * stor73.length) + 416] = stor73.length
        mem[(64 * stor73.length) + 448] = stor73.length
        mem[(98 * stor73.length) + 480] = stor73.length
        mem[64] = (131 * stor73.length) + 512
        s = 96
        idx = 0
        while idx < stor73.length:
            mem[0] = stor73[idx]
            mem[32] = 74
            _62 = mem[64]
            mem[64] = mem[64] + 288
            mem[_62] = scoreOf[stor73[idx]].field_0
            mem[_62 + 32] = scoreOf[stor73[idx]].field_256
            mem[_62 + 64] = scoreOf[stor73[idx]].field_512
            mem[_62 + 96] = scoreOf[stor73[idx]].field_768
            mem[_62 + 128] = scoreOf[stor73[idx]].field_1024
            mem[_62 + 160] = scoreOf[stor73[idx]].field_1280
            mem[_62 + 192] = scoreOf[stor73[idx]].field_1536
            mem[_62 + 224] = scoreOf[stor73[idx]].field_1792
            mem[_62 + 256] = scoreOf[stor73[idx]].field_2048
            require idx < mem[384]
            mem[(32 * idx) + 416] = scoreOf[stor73[idx]].field_0
            require idx < stor73.length
            mem[0] = 73
            require idx < mem[(32 * stor73.length) + 416]
            mem[(32 * stor73.length) + (32 * idx) + 448] = stor73[idx]
            require idx < mem[(64 * stor73.length) + 448]
            mem[(64 * stor73.length) + (32 * idx) + 480] = scoreOf[stor73[idx]].field_256
            require idx < mem[(98 * stor73.length) + 480]
            mem[(98 * stor73.length) + (32 * idx) + 512] = scoreOf[stor73[idx]].field_2048
            s = _62
            idx = idx + 1
            continue 
        _57 = mem[64]
        mem[mem[64]] = 128
        mem[mem[64] + 128] = mem[384]
        _59 = mem[384]
        mem[mem[64] + 160 len floor32(mem[384])] = mem[416 len floor32(mem[384])]
        mem[mem[64] + 32] = (32 * _59) + 160
        mem[(32 * _59) + mem[64] + 160] = mem[(64 * stor73.length) + 448]
        _106 = mem[(64 * stor73.length) + 448]
        mem[(32 * _59) + mem[64] + 192 len floor32(mem[(64 * stor73.length) + 448])] = mem[(64 * stor73.length) + 480 len floor32(mem[(64 * stor73.length) + 448])]
        mem[mem[64] + 64] = (32 * _106) + (32 * _59) + 192
        mem[(32 * _106) + (32 * _59) + _57 + 192] = mem[(32 * stor73.length) + 416]
        _128 = mem[(32 * stor73.length) + 416]
        mem[(32 * _106) + (32 * _59) + _57 + 224 len floor32(mem[(32 * stor73.length) + 416])] = mem[(32 * stor73.length) + 448 len floor32(mem[(32 * stor73.length) + 416])]
        mem[_57 + 96] = (32 * _128) + (32 * _106) + (32 * _59) + 224
        mem[(32 * _128) + (32 * _106) + (32 * _59) + _57 + 224] = mem[(98 * stor73.length) + 480]
        _144 = mem[(98 * stor73.length) + 480]
        mem[(32 * _128) + (32 * _106) + (32 * _59) + _57 + 256 len floor32(mem[(98 * stor73.length) + 480])] = mem[(98 * stor73.length) + 512 len floor32(mem[(98 * stor73.length) + 480])]
        return memory
          from mem[64]
           len (32 * _144) + (32 * _128) + (32 * _106) + (32 * _59) + _57 + -mem[64] + 256
    mem[416 len 32 * stor73.length] = code.data[6840 len 32 * stor73.length]
    mem[(32 * stor73.length) + 416] = stor73.length
    mem[(32 * stor73.length) + 448 len 32 * stor73.length] = code.data[6840 len 32 * stor73.length]
    mem[(64 * stor73.length) + 448] = stor73.length
    mem[(64 * stor73.length) + 480 len 32 * stor73.length] = code.data[6840 len 32 * stor73.length]
    mem[(98 * stor73.length) + 480] = stor73.length
    mem[64] = (131 * stor73.length) + 512
    mem[(98 * stor73.length) + 512 len 32 * stor73.length] = code.data[6840 len 32 * stor73.length]
    s = 96
    idx = 0
    while idx < stor73.length:
        mem[0] = stor73[idx]
        mem[32] = 74
        _69 = mem[64]
        mem[64] = mem[64] + 288
        mem[_69] = scoreOf[stor73[idx]].field_0
        mem[_69 + 32] = scoreOf[stor73[idx]].field_256
        mem[_69 + 64] = scoreOf[stor73[idx]].field_512
        mem[_69 + 96] = scoreOf[stor73[idx]].field_768
        mem[_69 + 128] = scoreOf[stor73[idx]].field_1024
        mem[_69 + 160] = scoreOf[stor73[idx]].field_1280
        mem[_69 + 192] = scoreOf[stor73[idx]].field_1536
        mem[_69 + 224] = scoreOf[stor73[idx]].field_1792
        mem[_69 + 256] = scoreOf[stor73[idx]].field_2048
        require idx < mem[384]
        mem[(32 * idx) + 416] = scoreOf[stor73[idx]].field_0
        require idx < stor73.length
        mem[0] = 73
        require idx < mem[(32 * stor73.length) + 416]
        mem[(32 * stor73.length) + (32 * idx) + 448] = stor73[idx]
        require idx < mem[(64 * stor73.length) + 448]
        mem[(64 * stor73.length) + (32 * idx) + 480] = scoreOf[stor73[idx]].field_256
        require idx < mem[(98 * stor73.length) + 480]
        mem[(98 * stor73.length) + (32 * idx) + 512] = scoreOf[stor73[idx]].field_2048
        s = _69
        idx = idx + 1
        continue 
    mem[mem[64]] = 128
    mem[mem[64] + 128] = mem[384]
    _66 = mem[384]
    mem[mem[64] + 160 len floor32(mem[384])] = mem[416 len floor32(mem[384])]
    mem[mem[64] + 32] = (32 * _66) + 160
    mem[(32 * _66) + mem[64] + 160] = mem[(64 * stor73.length) + 448]
    _109 = mem[(64 * stor73.length) + 448]
    mem[(32 * _66) + mem[64] + 192 len floor32(mem[(64 * stor73.length) + 448])] = mem[(64 * stor73.length) + 480 len floor32(mem[(64 * stor73.length) + 448])]
    mem[mem[64] + 64] = (32 * _109) + (32 * _66) + 192
    mem[(32 * _109) + (32 * _66) + mem[64] + 192] = mem[(32 * stor73.length) + 416]
    _131 = mem[(32 * stor73.length) + 416]
    mem[(32 * _109) + (32 * _66) + mem[64] + 224 len floor32(mem[(32 * stor73.length) + 416])] = mem[(32 * stor73.length) + 448 len floor32(mem[(32 * stor73.length) + 416])]
    mem[mem[64] + 96] = (32 * _131) + (32 * _109) + (32 * _66) + 224
    mem[(32 * _131) + (32 * _109) + (32 * _66) + mem[64] + 224] = mem[(98 * stor73.length) + 480]
    _147 = mem[(98 * stor73.length) + 480]
    mem[(32 * _131) + (32 * _109) + (32 * _66) + mem[64] + 256 len floor32(mem[(98 * stor73.length) + 480])] = mem[(98 * stor73.length) + 512 len floor32(mem[(98 * stor73.length) + 480])]
    return 128, 
           (32 * _66) + 160,
           (32 * _109) + (32 * _66) + 192,
           (32 * _131) + (32 * _109) + (32 * _66) + 224,
           mem[mem[64] + 128 len (32 * _147) + (32 * _131) + (32 * _109) + (32 * _66) + 128]
}



}

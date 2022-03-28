contract main {


// =======================  Init code  ======================


address stor0;
array of uint256 stor1;
uint256 stor4;
uint256 stor5;
uint8 stor6;
uint256 stor7;
address stor9;
address stor10;
address stor11;
uint256 stor12;
mapping of uint8 stor17;

function _fallback() payable {
    stor4 = 5 * 10^16
    stor5 = 5 * 10^17
    stor6 = 0
    stor7 = 10
    stor9 = 0x296ae1d2d9a8701e113ecdf6ce986a4a7d0a6dc5
    stor10 = 0xbc4343b11b7cfdd6dd635f61039b8a66af6e73bb
    stor12 = 720 * 24 * 3600
    require not msg.value
    stor11 = code.data[7947 len 20]
    stor0 = code.data[7979 len 20]
    stor1.length++
    if not stor1.length <= stor1.length + 1:
        mem[0] = 1
        idx = (11 * stor1.length) + 11
        while sha3(1) + (11 * stor1.length) > idx + sha3(mem[0]):
            address(stor[idx + sha3(mem[0])]) = 0
            uint256(stor[idx + sha3(mem[0]) + 1]) = 0
            uint256(stor[idx + sha3(mem[0]) + 2]) = 0
            uint256(stor[idx + sha3(mem[0]) + 3]) = 0
            uint256(stor[idx + sha3(mem[0]) + 4]) = 0
            s = sha3(idx + sha3(mem[0]) + 4)
            while sha3(idx + sha3(mem[0]) + 4) + (uint256(stor[idx + sha3(mem[0]) + 4]) + 31 / 32) > s:
                uint256(stor[s]) = 0
                s = s + 1
                continue 
            address(stor[idx + sha3(mem[0]) + 5]) = 0
            uint256(stor[idx + sha3(mem[0]) + 6]) = 0
            uint256(stor[idx + sha3(mem[0]) + 7]) = 0
            if sha3(idx + sha3(mem[0]) + 7) + (uint256(stor[idx + sha3(mem[0]) + 7]) + 31 / 32) > sha3(idx + sha3(mem[0]) + 7):
                uint256(stor[sha3(idx + sha3(mem[0]) + 7)]) = 0
                s = sha3(idx + sha3(mem[0]) + 7) + 1
                while sha3(idx + sha3(mem[0]) + 7) + (uint256(stor[idx + sha3(mem[0]) + 7]) + 31 / 32) > s:
                    uint256(stor[s]) = 0
                    s = s + 1
                    continue 
            uint256(stor[idx + sha3(mem[0]) + 8]) = 0
            mem[0] = idx + sha3(mem[0]) + 8
            if sha3(idx + sha3(mem[0]) + 8) + (uint256(stor[idx + sha3(mem[0]) + 8]) + 31 / 32) > sha3(idx + sha3(mem[0]) + 8):
                uint256(stor[sha3(idx + sha3(mem[0]) + 8)]) = 0
                s = sha3(idx + sha3(mem[0]) + 8) + 1
                while sha3(idx + sha3(mem[0]) + 8) + (uint256(stor[idx + sha3(mem[0]) + 8]) + 31 / 32) > s:
                    uint256(stor[s]) = 0
                    s = s + 1
                    continue 
            uint256(stor[idx + sha3(mem[0]) + 9]) = 0
            stor[idx + sha3(mem[0]) + 10] % 16777216 = 0
            idx = idx + 11
            continue 
    require 0 < stor1.length
    require ext_code.size(0xf08bcfe0e509a293b73f8a41473435845c35eaa5)
    delegate 0xf08bcfe0e509a293b73f8a41473435845c35eaa5.0x772b36aa with:
         gas gas_remaining - 50 wei
        args sha3(1), 0
    require delegate.return_code
    require 0 < stor1.length
    stor1 = this.address
    stor17[stor9] = 1
    stor17[stor10] = 1
    stor17[stor11] = 1
    return code.data[909 len 7026]
}



// =====================  Runtime code  =====================


address stor0;
address DEVAddress;
address ADMIN_CONTRACTAddress;
uint256 BANKROLL_LOCK_PERIOD;
uint256 bankrollLockedUntil;
uint256 profitsLockedUntil;
uint256 initialBankroll;
uint256 currentBankroll;
mapping of uint8 stor17;
mapping of uint256 currentGame;
uint256 minBet;
uint256 maxBet;
uint8 stor6;
uint256 maxBlockActions;
mapping of uint256 stor8;
address DXAddress;

function BANKROLL_LOCK_PERIOD() {
    return BANKROLL_LOCK_PERIOD
}

function ADMIN_CONTRACT() {
    return ADMIN_CONTRACTAddress
}

function maxBet() {
    return maxBet
}

function isOwner(address arg1) {
    return bool(stor17[arg1])
}

function bankrollLockedUntil() {
    return bankrollLockedUntil
}

function currentGame(address arg1) {
    return currentGame[arg1]
}

function profitsLockedUntil() {
    return profitsLockedUntil
}

function minBet() {
    return minBet
}

function currentBankroll() {
    return currentBankroll
}

function maxBlockActions() {
    return maxBlockActions
}

function DEV() {
    return DEVAddress
}

function DX() {
    return DXAddress
}

function allowsNewGames() {
    return bool(stor6)
}

function initialBankroll() {
    return initialBankroll
}

function removeBankroll() {
    require DXAddress == msg.sender
    if initialBankroll <= currentBankroll - 5 * 10^18:
        if stor17[address(msg.sender)]:
            stor6 = 0
            if currentBankroll <= initialBankroll:
                selfdestruct(DXAddress)
            call DEVAddress with:
               value currentBankroll - initialBankroll wei
                 gas 2300 * is_zero(value) wei
            if ext_call.success:
                selfdestruct(DXAddress)
    else:
        if bankrollLockedUntil <= block.timestamp:
            if stor17[address(msg.sender)]:
                stor6 = 0
                if currentBankroll <= initialBankroll:
                    selfdestruct(DXAddress)
                call DEVAddress with:
                   value currentBankroll - initialBankroll wei
                     gas 2300 * is_zero(value) wei
                if ext_call.success:
                    selfdestruct(DXAddress)
    revert 
}

function migrateBlockjack() {
    require ADMIN_CONTRACTAddress == msg.sender
    require stor17[address(msg.sender)]
    stor6 = 0
    if currentBankroll <= initialBankroll:
        selfdestruct(DXAddress)
    call ADMIN_CONTRACTAddress with:
       value currentBankroll - initialBankroll wei
         gas gas_remaining - 34050 wei
    require ext_call.success
    selfdestruct(DXAddress)
}

function stopBlockjack() {
    require stor17[address(msg.sender)]
    stor6 = 0
}

function startBlockjack() {
    require ADMIN_CONTRACTAddress == msg.sender
    stor6 = 1
}

function removeOwner(address arg1) {
    require ADMIN_CONTRACTAddress == msg.sender
    stor17[address(arg1)] = 0
}

function registerOwner(address arg1) {
    require ADMIN_CONTRACTAddress == msg.sender
    stor17[address(arg1)] = 1
}

function remainingBankroll() {
    if currentBankroll > initialBankroll:
        return initialBankroll
    return currentBankroll
}

function changeDX(address arg1) {
    require DXAddress == msg.sender
    stor17[stor9] = 0
    DXAddress = arg1
    stor17[arg1] = 1
}

function addBankroll() payable {
    require DXAddress == msg.sender
    initialBankroll += msg.value
    currentBankroll += msg.value
}

function changeDev(address arg1) {
    require DEVAddress == msg.sender
    stor17[stor10] = 0
    DEVAddress = arg1
    stor17[arg1] = 1
}

function changeAdminContract(address arg1) {
    require ADMIN_CONTRACTAddress == msg.sender
    stor17[stor11] = 0
    ADMIN_CONTRACTAddress = arg1
    stor17[arg1] = 1
}

function setSettings(uint256 arg1, uint256 arg2, uint256 arg3) {
    require ADMIN_CONTRACTAddress == msg.sender
    minBet = arg1
    maxBet = arg2
    maxBlockActions = arg3
}

function shareProfits() {
    require stor17[address(msg.sender)]
    require profitsLockedUntil <= block.timestamp
    require currentBankroll > initialBankroll
    call ADMIN_CONTRACTAddress with:
       value currentBankroll - initialBankroll wei
         gas gas_remaining - 34050 wei
    require ext_call.success
    currentBankroll = initialBankroll
    bankrollLockedUntil = BANKROLL_LOCK_PERIOD + block.timestamp
    profitsLockedUntil = (2 * BANKROLL_LOCK_PERIOD) + block.timestamp
}

function hit(uint256 arg1) {
    require arg1 < stor1.length
    require address(stor1[arg1].field_0) == msg.sender
    stor8[block.number]++
    require stor8[block.number] + 1 <= maxBlockActions
    require arg1 < stor1.length
    require ext_code.size(0xf08bcfe0e509a293b73f8a41473435845c35eaa5)
    delegate 0xf08bcfe0e509a293b73f8a41473435845c35eaa5.0x51760769 with:
         gas gas_remaining - 50 wei
        args ((11 * arg1) + sha3(1))
    require delegate.return_code
    require delegate.return_data[0]
    require ext_code.size(0xf08bcfe0e509a293b73f8a41473435845c35eaa5)
    delegate 0xf08bcfe0e509a293b73f8a41473435845c35eaa5.0xb14efa81 with:
         gas gas_remaining - 50 wei
        args (11 * arg1) + sha3(1), 2
    require delegate.return_code
    require ext_code.size(stor0)
    call stor0.0xc4373c05 with:
         gas gas_remaining - 50 wei
        args uint256(stor1[arg1].field_768), address(stor1[arg1].field_0), uint256(stor1[arg1].field_2304)
    require ext_call.success
}

function stand(uint256 arg1) {
    require arg1 < stor1.length
    require address(stor1[arg1].field_0) == msg.sender
    stor8[block.number]++
    require stor8[block.number] + 1 <= maxBlockActions
    require arg1 < stor1.length
    require ext_code.size(0xf08bcfe0e509a293b73f8a41473435845c35eaa5)
    delegate 0xf08bcfe0e509a293b73f8a41473435845c35eaa5.0x51760769 with:
         gas gas_remaining - 50 wei
        args ((11 * arg1) + sha3(1))
    require delegate.return_code
    require delegate.return_data[0]
    require ext_code.size(0xf08bcfe0e509a293b73f8a41473435845c35eaa5)
    delegate 0xf08bcfe0e509a293b73f8a41473435845c35eaa5.0xb14efa81 with:
         gas gas_remaining - 50 wei
        args (11 * arg1) + sha3(1), 3
    require delegate.return_code
    require ext_code.size(stor0)
    call stor0.0xc4373c05 with:
         gas gas_remaining - 50 wei
        args uint256(stor1[arg1].field_768), address(stor1[arg1].field_0), uint256(stor1[arg1].field_2304)
    require ext_call.success
}

function doubleDown(uint256 arg1) payable {
    require arg1 < stor1.length
    require address(stor1[arg1].field_0) == msg.sender
    stor8[block.number]++
    require stor8[block.number] + 1 <= maxBlockActions
    require arg1 < stor1.length
    require msg.value == uint256(stor1[arg1].field_256)
    require ext_code.size(0xf08bcfe0e509a293b73f8a41473435845c35eaa5)
    delegate 0xf08bcfe0e509a293b73f8a41473435845c35eaa5.0x51760769 with:
         gas gas_remaining - 50 wei
        args ((11 * arg1) + sha3(1))
    require delegate.return_code
    require delegate.return_data[0]
    if not uint256(stor1[arg1].field_2048):
        require ext_code.size(0xf08bcfe0e509a293b73f8a41473435845c35eaa5)
        delegate 0xf08bcfe0e509a293b73f8a41473435845c35eaa5.0xc9ae5594 with:
             gas gas_remaining - 50 wei
            args 32, uint256(stor1[arg1].field_2048)
    else:
        mem[164] = uint8(stor[sha3((11 * arg1) + ('name', 'stor1', 1) + 8)].field_0)
        idx = 164
        s = 0
        while (32 * uint256(stor1[arg1].field_2048)) + 164 > idx + 32:
            mem[idx + 32] = storsha3((11 * arg1) + ('name', 'stor1', 1) + 8)[-(0.03125 / s + 1) + s + (-1 * 0.03125 / s + 1 * s) + 1]
            idx = idx + 32
            s = -(s + 1 / 32) + s + (-1 * s + 1 / 32 * s) + 1
            continue 
        require ext_code.size(0xf08bcfe0e509a293b73f8a41473435845c35eaa5)
        delegate 0xf08bcfe0e509a293b73f8a41473435845c35eaa5.0xc9ae5594 with:
             gas gas_remaining - 50 wei
            args Array(len=uint256(stor1[arg1].field_2048), data=mem[164 len 32 * uint256(stor1[arg1].field_2048)])
    require delegate.return_code
    require delegate.return_data[31 len 1] >= 9
    require delegate.return_data[31 len 1] <= 11
    require uint256(stor1[arg1].field_256) <= maxBet
    uint256(stor1[arg1].field_256) += msg.value
    require ext_code.size(0xf08bcfe0e509a293b73f8a41473435845c35eaa5)
    delegate 0xf08bcfe0e509a293b73f8a41473435845c35eaa5.0xb14efa81 with:
         gas gas_remaining - 50 wei
        args (11 * arg1) + sha3(1), 2
    require delegate.return_code
    require ext_code.size(stor0)
    call stor0.0xc4373c05 with:
         gas gas_remaining - 50 wei
        args uint256(stor1[arg1].field_768), address(stor1[arg1].field_0), uint256(stor1[arg1].field_2304)
    require ext_call.success
}

function gameTick(uint256 arg1) {
    stor8[block.number]++
    require stor8[block.number] + 1 <= maxBlockActions
    require arg1 < stor1.length
    require not uint8(stor1[arg1].field_2576)
    require ext_code.size(0xf08bcfe0e509a293b73f8a41473435845c35eaa5)
    delegate 0xf08bcfe0e509a293b73f8a41473435845c35eaa5.0x51760769 with:
         gas gas_remaining - 50 wei
        args ((11 * arg1) + sha3(1))
    require delegate.return_code
    require delegate.return_data[0]
    if uint8(stor1[arg1].field_2576):
        require arg1 < stor1.length
        currentBankroll = uint256(stor1[arg1].field_256) + currentBankroll - uint256(stor1[arg1].field_512)
        require uint8(stor1[arg1].field_2568) <= 4
        if not uint256(stor1[arg1].field_2048):
            require ext_code.size(0xf08bcfe0e509a293b73f8a41473435845c35eaa5)
            delegate 0xf08bcfe0e509a293b73f8a41473435845c35eaa5.0xc9ae5594 with:
                 gas gas_remaining - 50 wei
                args 32, uint256(stor1[arg1].field_2048)
        else:
            mem[164] = uint8(stor[sha3((11 * arg1) + ('name', 'stor1', 1) + 8)].field_0)
            idx = 164
            s = 0
            while (32 * uint256(stor1[arg1].field_2048)) + 164 > idx + 32:
                mem[idx + 32] = storsha3((11 * arg1) + ('name', 'stor1', 1) + 8)[-(0.03125 / s + 1) + s + (-1 * 0.03125 / s + 1 * s) + 1]
                idx = idx + 32
                s = -(s + 1 / 32) + s + (-1 * s + 1 / 32 * s) + 1
                continue 
            require ext_code.size(0xf08bcfe0e509a293b73f8a41473435845c35eaa5)
            delegate 0xf08bcfe0e509a293b73f8a41473435845c35eaa5.0xc9ae5594 with:
                 gas gas_remaining - 50 wei
                args Array(len=uint256(stor1[arg1].field_2048), data=mem[164 len 32 * uint256(stor1[arg1].field_2048)])
        require delegate.return_code
        if not uint256(stor1[arg1].field_1792):
            require ext_code.size(0xf08bcfe0e509a293b73f8a41473435845c35eaa5)
            delegate 0xf08bcfe0e509a293b73f8a41473435845c35eaa5.0xc9ae5594 with:
                 gas gas_remaining - 50 wei
                args 32, uint256(stor1[arg1].field_1792)
            require delegate.return_code
            require ext_code.size(stor0)
            call stor0.0xc0cd1ec1 with:
                 gas gas_remaining - 50 wei
                args 0, 0, uint32(stor1[arg1].field_0), uint8(stor1[arg1].field_2560), uint256(stor1[arg1].field_512), uint8(delegate.return_data[0]), delegate.return_data[0] << 248
        else:
            mem[164] = uint8(stor[sha3((11 * arg1) + ('name', 'stor1', 1) + 7)].field_0)
            idx = 164
            s = 0
            while (32 * uint256(stor1[arg1].field_1792)) + 164 > idx + 32:
                mem[idx + 32] = storsha3((11 * arg1) + ('name', 'stor1', 1) + 7)[-(0.03125 / s + 1) + s + (-1 * 0.03125 / s + 1 * s) + 1]
                idx = idx + 32
                s = -(s + 1 / 32) + s + (-1 * s + 1 / 32 * s) + 1
                continue 
            require ext_code.size(0xf08bcfe0e509a293b73f8a41473435845c35eaa5)
            delegate 0xf08bcfe0e509a293b73f8a41473435845c35eaa5.0xc9ae5594 with:
                 gas gas_remaining - 50 wei
                args Array(len=uint256(stor1[arg1].field_1792), data=mem[164 len 32 * uint256(stor1[arg1].field_1792)])
            require delegate.return_code
            require ext_code.size(stor0)
            call stor0.0xc0cd1ec1 with:
                 gas gas_remaining - 50 wei
                args 0, uint32(stor1[arg1].field_768), address(stor1[arg1].field_0), uint8(stor1[arg1].field_2560), uint256(stor1[arg1].field_512), delegate.return_data[0] << 248, uint8(delegate.return_data[0])
        require ext_call.success
}

function startGame() payable {
    stor8[block.number]++
    require stor8[block.number] + 1 <= maxBlockActions
    require stor6
    require msg.value >= minBet
    require msg.value <= maxBet
    if stor1.length > currentGame[address(msg.sender)]:
        require currentGame[address(msg.sender)] < stor1.length
        if address(stor1[stor2[address(msg.sender)]].field_0) == msg.sender:
            if not uint8(stor1[stor2[address(msg.sender)]].field_2576):
                require ext_code.size(0xf08bcfe0e509a293b73f8a41473435845c35eaa5)
                delegate 0xf08bcfe0e509a293b73f8a41473435845c35eaa5.0x51760769 with:
                     gas gas_remaining - 50 wei
                    args ((11 * currentGame[address(msg.sender)]) + sha3(1))
                require delegate.return_code
                require delegate.return_data[0]
                require uint8(stor1[stor2[address(msg.sender)]].field_2576)
                require currentGame[address(msg.sender)] < stor1.length
                currentBankroll = uint256(stor1[stor2[address(msg.sender)]].field_256) + currentBankroll - uint256(stor1[stor2[address(msg.sender)]].field_512)
                require uint8(stor1[stor2[address(msg.sender)]].field_2568) <= 4
                if not uint256(stor1[stor2[address(msg.sender)]].field_2048):
                    require ext_code.size(0xf08bcfe0e509a293b73f8a41473435845c35eaa5)
                    delegate 0xf08bcfe0e509a293b73f8a41473435845c35eaa5.0xc9ae5594 with:
                         gas gas_remaining - 50 wei
                        args 32, uint256(stor1[stor2[address(msg.sender)]].field_2048)
                else:
                    mem[164] = uint8(stor[sha3((11 * stor2[address(msg.sender)]) + ('name', 'stor1', 1) + 8)].field_0)
                    idx = 164
                    s = 0
                    while (32 * uint256(stor1[stor2[address(msg.sender)]].field_2048)) + 164 > idx + 32:
                        mem[idx + 32] = storsha3((11 * stor[('map', ('mask_shl', 160, 0, 96, 'msg.sender'), ('name', 'stor2', 2))]) + ('name', 'stor1', 1) + 8)[-(0.03125 / s + 1) + s + (-1 * 0.03125 / s + 1 * s) + 1]
                        idx = idx + 32
                        s = -(s + 1 / 32) + s + (-1 * s + 1 / 32 * s) + 1
                        continue 
                    require ext_code.size(0xf08bcfe0e509a293b73f8a41473435845c35eaa5)
                    delegate 0xf08bcfe0e509a293b73f8a41473435845c35eaa5.0xc9ae5594 with:
                         gas gas_remaining - 50 wei
                        args Array(len=uint256(stor1[stor2[address(msg.sender)]].field_2048), data=mem[164 len 32 * uint256(stor1[stor2[address(msg.sender)]].field_2048)])
                require delegate.return_code
                if not uint256(stor1[stor2[address(msg.sender)]].field_1792):
                    require ext_code.size(0xf08bcfe0e509a293b73f8a41473435845c35eaa5)
                    delegate 0xf08bcfe0e509a293b73f8a41473435845c35eaa5.0xc9ae5594 with:
                         gas gas_remaining - 50 wei
                        args 32, uint256(stor1[stor2[address(msg.sender)]].field_1792)
                    require delegate.return_code
                    require ext_code.size(stor0)
                    call stor0.0xc0cd1ec1 with:
                         gas gas_remaining - 50 wei
                        args 0, 0, uint32(stor1[stor2[address(msg.sender)]].field_0), uint8(stor1[stor2[address(msg.sender)]].field_2560), uint256(stor1[stor2[address(msg.sender)]].field_512), uint8(delegate.return_data[0]), delegate.return_data[0] << 248
                else:
                    mem[164] = uint8(stor[sha3((11 * stor2[address(msg.sender)]) + ('name', 'stor1', 1) + 7)].field_0)
                    idx = 164
                    s = 0
                    while (32 * uint256(stor1[stor2[address(msg.sender)]].field_1792)) + 164 > idx + 32:
                        mem[idx + 32] = storsha3((11 * stor[('map', ('mask_shl', 160, 0, 96, 'msg.sender'), ('name', 'stor2', 2))]) + ('name', 'stor1', 1) + 7)[-(0.03125 / s + 1) + s + (-1 * 0.03125 / s + 1 * s) + 1]
                        idx = idx + 32
                        s = -(s + 1 / 32) + s + (-1 * s + 1 / 32 * s) + 1
                        continue 
                    require ext_code.size(0xf08bcfe0e509a293b73f8a41473435845c35eaa5)
                    delegate 0xf08bcfe0e509a293b73f8a41473435845c35eaa5.0xc9ae5594 with:
                         gas gas_remaining - 50 wei
                        args Array(len=uint256(stor1[stor2[address(msg.sender)]].field_1792), data=mem[164 len 32 * uint256(stor1[stor2[address(msg.sender)]].field_1792)])
                    require delegate.return_code
                    require ext_code.size(stor0)
                    call stor0.0xc0cd1ec1 with:
                         gas gas_remaining - 50 wei
                        args 0, uint32(stor1[stor2[address(msg.sender)]].field_768), address(stor1[stor2[address(msg.sender)]].field_0), uint8(stor1[stor2[address(msg.sender)]].field_2560), uint256(stor1[stor2[address(msg.sender)]].field_512), delegate.return_data[0] << 248, uint8(delegate.return_data[0])
                require ext_call.success
    stor1.length++
    if not stor1.length <= stor1.length + 1:
        mem[0] = 1
        idx = (11 * stor1.length) + 11
        while sha3(1) + (11 * stor1.length) > idx + sha3(mem[0]):
            address(stor[idx + sha3(mem[0])]) = 0
            uint256(stor[idx + sha3(mem[0]) + 1]) = 0
            uint256(stor[idx + sha3(mem[0]) + 2]) = 0
            uint256(stor[idx + sha3(mem[0]) + 3]) = 0
            uint256(stor[idx + sha3(mem[0]) + 4]) = 0
            s = sha3(idx + sha3(mem[0]) + 4)
            while sha3(idx + sha3(mem[0]) + 4) + (uint256(stor[idx + sha3(mem[0]) + 4]) + 31 / 32) > s:
                uint256(stor[s]) = 0
                s = s + 1
                continue 
            address(stor[idx + sha3(mem[0]) + 5]) = 0
            uint256(stor[idx + sha3(mem[0]) + 6]) = 0
            uint256(stor[idx + sha3(mem[0]) + 7]) = 0
            if sha3(idx + sha3(mem[0]) + 7) + (uint256(stor[idx + sha3(mem[0]) + 7]) + 31 / 32) > sha3(idx + sha3(mem[0]) + 7):
                uint256(stor[sha3(idx + sha3(mem[0]) + 7)]) = 0
                s = sha3(idx + sha3(mem[0]) + 7) + 1
                while sha3(idx + sha3(mem[0]) + 7) + (uint256(stor[idx + sha3(mem[0]) + 7]) + 31 / 32) > s:
                    uint256(stor[s]) = 0
                    s = s + 1
                    continue 
            uint256(stor[idx + sha3(mem[0]) + 8]) = 0
            mem[0] = idx + sha3(mem[0]) + 8
            if sha3(idx + sha3(mem[0]) + 8) + (uint256(stor[idx + sha3(mem[0]) + 8]) + 31 / 32) > sha3(idx + sha3(mem[0]) + 8):
                uint256(stor[sha3(idx + sha3(mem[0]) + 8)]) = 0
                s = sha3(idx + sha3(mem[0]) + 8) + 1
                while sha3(idx + sha3(mem[0]) + 8) + (uint256(stor[idx + sha3(mem[0]) + 8]) + 31 / 32) > s:
                    uint256(stor[s]) = 0
                    s = s + 1
                    continue 
            uint256(stor[idx + sha3(mem[0]) + 9]) = 0
            stor[idx + sha3(mem[0]) + 10] % 16777216 = 0
            idx = idx + 11
            continue 
    require stor1.length < stor1.length
    require ext_code.size(0xf08bcfe0e509a293b73f8a41473435845c35eaa5)
    delegate 0xf08bcfe0e509a293b73f8a41473435845c35eaa5.0x772b36aa with:
         gas gas_remaining - 50 wei
        args (11 * stor1.length) + sha3(1), stor1.length
    require delegate.return_code
    currentGame[address(msg.sender)] = stor1.length
    require stor1.length < stor1.length
    require ext_code.size(stor0)
    call stor0.0xc4373c05 with:
         gas gas_remaining - 50 wei
        args uint256(stor1[stor1.length].field_768), address(stor1[stor1.length].field_0), uint256(stor1[stor1.length].field_2304)
    require ext_call.success
}

function _fallback() payable {
    stor8[block.number]++
    require stor8[block.number] + 1 <= maxBlockActions
    require stor6
    require msg.value >= minBet
    require msg.value <= maxBet
    if stor1.length > currentGame[address(msg.sender)]:
        require currentGame[address(msg.sender)] < stor1.length
        if address(stor1[stor2[address(msg.sender)]].field_0) == msg.sender:
            if not uint8(stor1[stor2[address(msg.sender)]].field_2576):
                require ext_code.size(0xf08bcfe0e509a293b73f8a41473435845c35eaa5)
                delegate 0xf08bcfe0e509a293b73f8a41473435845c35eaa5.0x51760769 with:
                     gas gas_remaining - 50 wei
                    args ((11 * currentGame[address(msg.sender)]) + sha3(1))
                require delegate.return_code
                require delegate.return_data[0]
                require uint8(stor1[stor2[address(msg.sender)]].field_2576)
                require currentGame[address(msg.sender)] < stor1.length
                currentBankroll = uint256(stor1[stor2[address(msg.sender)]].field_256) + currentBankroll - uint256(stor1[stor2[address(msg.sender)]].field_512)
                require uint8(stor1[stor2[address(msg.sender)]].field_2568) <= 4
                if not uint256(stor1[stor2[address(msg.sender)]].field_2048):
                    require ext_code.size(0xf08bcfe0e509a293b73f8a41473435845c35eaa5)
                    delegate 0xf08bcfe0e509a293b73f8a41473435845c35eaa5.0xc9ae5594 with:
                         gas gas_remaining - 50 wei
                        args 32, uint256(stor1[stor2[address(msg.sender)]].field_2048)
                else:
                    mem[164] = uint8(stor[sha3((11 * stor2[address(msg.sender)]) + ('name', 'stor1', 1) + 8)].field_0)
                    idx = 164
                    s = 0
                    while (32 * uint256(stor1[stor2[address(msg.sender)]].field_2048)) + 164 > idx + 32:
                        mem[idx + 32] = storsha3((11 * stor[('map', ('mask_shl', 160, 0, 96, 'msg.sender'), ('name', 'stor2', 2))]) + ('name', 'stor1', 1) + 8)[-(0.03125 / s + 1) + s + (-1 * 0.03125 / s + 1 * s) + 1]
                        idx = idx + 32
                        s = -(s + 1 / 32) + s + (-1 * s + 1 / 32 * s) + 1
                        continue 
                    require ext_code.size(0xf08bcfe0e509a293b73f8a41473435845c35eaa5)
                    delegate 0xf08bcfe0e509a293b73f8a41473435845c35eaa5.0xc9ae5594 with:
                         gas gas_remaining - 50 wei
                        args Array(len=uint256(stor1[stor2[address(msg.sender)]].field_2048), data=mem[164 len 32 * uint256(stor1[stor2[address(msg.sender)]].field_2048)])
                require delegate.return_code
                if not uint256(stor1[stor2[address(msg.sender)]].field_1792):
                    require ext_code.size(0xf08bcfe0e509a293b73f8a41473435845c35eaa5)
                    delegate 0xf08bcfe0e509a293b73f8a41473435845c35eaa5.0xc9ae5594 with:
                         gas gas_remaining - 50 wei
                        args 32, uint256(stor1[stor2[address(msg.sender)]].field_1792)
                    require delegate.return_code
                    require ext_code.size(stor0)
                    call stor0.0xc0cd1ec1 with:
                         gas gas_remaining - 50 wei
                        args 0, 0, uint32(stor1[stor2[address(msg.sender)]].field_0), uint8(stor1[stor2[address(msg.sender)]].field_2560), uint256(stor1[stor2[address(msg.sender)]].field_512), uint8(delegate.return_data[0]), delegate.return_data[0] << 248
                else:
                    mem[164] = uint8(stor[sha3((11 * stor2[address(msg.sender)]) + ('name', 'stor1', 1) + 7)].field_0)
                    idx = 164
                    s = 0
                    while (32 * uint256(stor1[stor2[address(msg.sender)]].field_1792)) + 164 > idx + 32:
                        mem[idx + 32] = storsha3((11 * stor[('map', ('mask_shl', 160, 0, 96, 'msg.sender'), ('name', 'stor2', 2))]) + ('name', 'stor1', 1) + 7)[-(0.03125 / s + 1) + s + (-1 * 0.03125 / s + 1 * s) + 1]
                        idx = idx + 32
                        s = -(s + 1 / 32) + s + (-1 * s + 1 / 32 * s) + 1
                        continue 
                    require ext_code.size(0xf08bcfe0e509a293b73f8a41473435845c35eaa5)
                    delegate 0xf08bcfe0e509a293b73f8a41473435845c35eaa5.0xc9ae5594 with:
                         gas gas_remaining - 50 wei
                        args Array(len=uint256(stor1[stor2[address(msg.sender)]].field_1792), data=mem[164 len 32 * uint256(stor1[stor2[address(msg.sender)]].field_1792)])
                    require delegate.return_code
                    require ext_code.size(stor0)
                    call stor0.0xc0cd1ec1 with:
                         gas gas_remaining - 50 wei
                        args 0, uint32(stor1[stor2[address(msg.sender)]].field_768), address(stor1[stor2[address(msg.sender)]].field_0), uint8(stor1[stor2[address(msg.sender)]].field_2560), uint256(stor1[stor2[address(msg.sender)]].field_512), delegate.return_data[0] << 248, uint8(delegate.return_data[0])
                require ext_call.success
    stor1.length++
    if not stor1.length <= stor1.length + 1:
        mem[0] = 1
        idx = (11 * stor1.length) + 11
        while sha3(1) + (11 * stor1.length) > idx + sha3(mem[0]):
            address(stor[idx + sha3(mem[0])]) = 0
            uint256(stor[idx + sha3(mem[0]) + 1]) = 0
            uint256(stor[idx + sha3(mem[0]) + 2]) = 0
            uint256(stor[idx + sha3(mem[0]) + 3]) = 0
            uint256(stor[idx + sha3(mem[0]) + 4]) = 0
            s = sha3(idx + sha3(mem[0]) + 4)
            while sha3(idx + sha3(mem[0]) + 4) + (uint256(stor[idx + sha3(mem[0]) + 4]) + 31 / 32) > s:
                uint256(stor[s]) = 0
                s = s + 1
                continue 
            address(stor[idx + sha3(mem[0]) + 5]) = 0
            uint256(stor[idx + sha3(mem[0]) + 6]) = 0
            uint256(stor[idx + sha3(mem[0]) + 7]) = 0
            if sha3(idx + sha3(mem[0]) + 7) + (uint256(stor[idx + sha3(mem[0]) + 7]) + 31 / 32) > sha3(idx + sha3(mem[0]) + 7):
                uint256(stor[sha3(idx + sha3(mem[0]) + 7)]) = 0
                s = sha3(idx + sha3(mem[0]) + 7) + 1
                while sha3(idx + sha3(mem[0]) + 7) + (uint256(stor[idx + sha3(mem[0]) + 7]) + 31 / 32) > s:
                    uint256(stor[s]) = 0
                    s = s + 1
                    continue 
            uint256(stor[idx + sha3(mem[0]) + 8]) = 0
            mem[0] = idx + sha3(mem[0]) + 8
            if sha3(idx + sha3(mem[0]) + 8) + (uint256(stor[idx + sha3(mem[0]) + 8]) + 31 / 32) > sha3(idx + sha3(mem[0]) + 8):
                uint256(stor[sha3(idx + sha3(mem[0]) + 8)]) = 0
                s = sha3(idx + sha3(mem[0]) + 8) + 1
                while sha3(idx + sha3(mem[0]) + 8) + (uint256(stor[idx + sha3(mem[0]) + 8]) + 31 / 32) > s:
                    uint256(stor[s]) = 0
                    s = s + 1
                    continue 
            uint256(stor[idx + sha3(mem[0]) + 9]) = 0
            stor[idx + sha3(mem[0]) + 10] % 16777216 = 0
            idx = idx + 11
            continue 
    require stor1.length < stor1.length
    require ext_code.size(0xf08bcfe0e509a293b73f8a41473435845c35eaa5)
    delegate 0xf08bcfe0e509a293b73f8a41473435845c35eaa5.0x772b36aa with:
         gas gas_remaining - 50 wei
        args (11 * stor1.length) + sha3(1), stor1.length
    require delegate.return_code
    currentGame[address(msg.sender)] = stor1.length
    require stor1.length < stor1.length
    require ext_code.size(stor0)
    call stor0.0xc4373c05 with:
         gas gas_remaining - 50 wei
        args uint256(stor1[stor1.length].field_768), address(stor1[stor1.length].field_0), uint256(stor1[stor1.length].field_2304)
    require ext_call.success
}

function gameState(uint256 arg1) {
    require arg1 < stor1.length
    if not uint256(stor1[arg1].field_1792):
        require ext_code.size(0xf08bcfe0e509a293b73f8a41473435845c35eaa5)
        delegate 0xf08bcfe0e509a293b73f8a41473435845c35eaa5.0xc9ae5594 with:
             gas gas_remaining - 50 wei
            args 32, uint256(stor1[arg1].field_1792)
    else:
        mem[228] = uint8(stor[sha3((11 * arg1) + ('name', 'stor1', 1) + 7)].field_0)
        idx = 228
        s = 0
        while (32 * uint256(stor1[arg1].field_1792)) + 228 > idx + 32:
            mem[idx + 32] = storsha3((11 * arg1) + ('name', 'stor1', 1) + 7)[-(0.03125 / s + 1) + s + (-1 * 0.03125 / s + 1 * s) + 1]
            idx = idx + 32
            s = -(s + 1 / 32) + s + (-1 * s + 1 / 32 * s) + 1
            continue 
        require ext_code.size(0xf08bcfe0e509a293b73f8a41473435845c35eaa5)
        delegate 0xf08bcfe0e509a293b73f8a41473435845c35eaa5.0xc9ae5594 with:
             gas gas_remaining - 50 wei
            args Array(len=uint256(stor1[arg1].field_1792), data=mem[228 len 32 * uint256(stor1[arg1].field_1792)])
    require delegate.return_code
    mem[164] = 32
    mem[196] = uint256(stor1[arg1].field_2048)
    if not uint256(stor1[arg1].field_2048):
        require ext_code.size(0xf08bcfe0e509a293b73f8a41473435845c35eaa5)
        delegate 0xf08bcfe0e509a293b73f8a41473435845c35eaa5.0xc9ae5594 with:
             gas gas_remaining - 50 wei
            args 32, uint256(stor1[arg1].field_2048)
    else:
        mem[228] = uint8(stor[sha3((11 * arg1) + ('name', 'stor1', 1) + 8)].field_0)
        idx = 228
        s = 0
        while (32 * uint256(stor1[arg1].field_2048)) + 228 > idx + 32:
            mem[idx + 32] = storsha3((11 * arg1) + ('name', 'stor1', 1) + 8)[-(0.03125 / s + 1) + s + (-1 * 0.03125 / s + 1 * s) + 1]
            idx = idx + 32
            s = -(s + 1 / 32) + s + (-1 * s + 1 / 32 * s) + 1
            continue 
        require ext_code.size(0xf08bcfe0e509a293b73f8a41473435845c35eaa5)
        delegate 0xf08bcfe0e509a293b73f8a41473435845c35eaa5.0xc9ae5594 with:
             gas gas_remaining - 50 wei
            args Array(len=uint256(stor1[arg1].field_2048), data=mem[228 len 32 * uint256(stor1[arg1].field_2048)])
    require delegate.return_code
    require uint8(stor1[arg1].field_2560) <= 4
    require uint8(stor1[arg1].field_2568) <= 4
    if not uint256(stor1[arg1].field_1792):
        mem[(32 * uint256(stor1[arg1].field_1792)) + 192] = uint256(stor1[arg1].field_2048)
        if not uint256(stor1[arg1].field_2048):
            mem[(32 * uint256(stor1[arg1].field_1792)) + (32 * uint256(stor1[arg1].field_2048)) + 288] = uint8(delegate.return_data[0])
            mem[(32 * uint256(stor1[arg1].field_1792)) + (32 * uint256(stor1[arg1].field_2048)) + 320] = uint8(delegate.return_data[0])
            mem[(32 * uint256(stor1[arg1].field_1792)) + (32 * uint256(stor1[arg1].field_2048)) + 352] = uint256(stor1[arg1].field_256)
            mem[(32 * uint256(stor1[arg1].field_1792)) + (32 * uint256(stor1[arg1].field_2048)) + 384] = uint256(stor1[arg1].field_512)
            mem[(32 * uint256(stor1[arg1].field_1792)) + (32 * uint256(stor1[arg1].field_2048)) + 416] = uint8(stor1[arg1].field_2560)
            mem[(32 * uint256(stor1[arg1].field_1792)) + (32 * uint256(stor1[arg1].field_2048)) + 448] = uint8(stor1[arg1].field_2568)
            mem[(32 * uint256(stor1[arg1].field_1792)) + (32 * uint256(stor1[arg1].field_2048)) + 480] = bool(uint8(stor1[arg1].field_2576))
            mem[(32 * uint256(stor1[arg1].field_1792)) + (32 * uint256(stor1[arg1].field_2048)) + 512] = uint256(stor1[arg1].field_2304)
            mem[(32 * uint256(stor1[arg1].field_1792)) + (32 * uint256(stor1[arg1].field_2048)) + 224] = 320
            mem[(32 * uint256(stor1[arg1].field_1792)) + (32 * uint256(stor1[arg1].field_2048)) + 544] = uint256(stor1[arg1].field_1792)
            if not Mask(251, 0, stor1[arg1].field_1792):
                mem[(32 * uint256(stor1[arg1].field_1792)) + (32 * uint256(stor1[arg1].field_2048)) + 256] = (32 * uint256(stor1[arg1].field_1792)) + 352
                mem[(64 * uint256(stor1[arg1].field_1792)) + (32 * uint256(stor1[arg1].field_2048)) + 576] = uint256(stor1[arg1].field_2048)
                if Mask(251, 0, stor1[arg1].field_2048):
                    mem[(64 * uint256(stor1[arg1].field_1792)) + (32 * uint256(stor1[arg1].field_2048)) + 608] = mem[(32 * uint256(stor1[arg1].field_1792)) + 224]
                    mem[(64 * uint256(stor1[arg1].field_1792)) + (32 * uint256(stor1[arg1].field_2048)) + 640 len floor32((32 * uint256(stor1[arg1].field_2048)) - 1)] = mem[(32 * uint256(stor1[arg1].field_1792)) + 256 len floor32((32 * uint256(stor1[arg1].field_2048)) - 1)]
                return Array(len=uint256(stor1[arg1].field_1792), data=mem[(32 * uint256(stor1[arg1].field_1792)) + (32 * uint256(stor1[arg1].field_2048)) + 576 len (32 * uint256(stor1[arg1].field_1792)) + (32 * uint256(stor1[arg1].field_2048)) + 32]), 
                       (32 * uint256(stor1[arg1].field_1792)) + 352,
                       delegate.return_data[0] << 248,
                       delegate.return_data[0] << 248,
                       uint256(stor1[arg1].field_256),
                       uint256(stor1[arg1].field_512),
                       uint8(stor1[arg1].field_2560),
                       uint8(stor1[arg1].field_2560),
                       bool(uint8(stor1[arg1].field_2576)),
                       uint256(stor1[arg1].field_2304)
            mem[(32 * uint256(stor1[arg1].field_1792)) + (32 * uint256(stor1[arg1].field_2048)) + 576] = 0, Mask(224, 0, stor1[arg1].field_2080)
            mem[(32 * uint256(stor1[arg1].field_1792)) + (32 * uint256(stor1[arg1].field_2048)) + 608 len floor32((32 * uint256(stor1[arg1].field_1792)) - 1)] = mem[224 len floor32((32 * uint256(stor1[arg1].field_1792)) - 1)]
        else:
            mem[(32 * uint256(stor1[arg1].field_1792)) + 224] = uint8(stor[sha3((11 * arg1) + ('name', 'stor1', 1) + 8)].field_0)
            idx = (32 * uint256(stor1[arg1].field_1792)) + 224
            s = 0
            while (32 * uint256(stor1[arg1].field_1792)) + (32 * uint256(stor1[arg1].field_2048)) + 192 > idx:
                mem[idx + 32] = storsha3((11 * arg1) + ('name', 'stor1', 1) + 8)[-(0.03125 / s + 1) + s + (-1 * 0.03125 / s + 1 * s) + 1]
                idx = idx + 32
                s = -(s + 1 / 32) + s + (-1 * s + 1 / 32 * s) + 1
                continue 
            mem[(32 * uint256(stor1[arg1].field_1792)) + (32 * uint256(stor1[arg1].field_2048)) + 288] = uint8(delegate.return_data[0])
            mem[(32 * uint256(stor1[arg1].field_1792)) + (32 * uint256(stor1[arg1].field_2048)) + 320] = uint8(delegate.return_data[0])
            mem[(32 * uint256(stor1[arg1].field_1792)) + (32 * uint256(stor1[arg1].field_2048)) + 352] = uint256(stor1[arg1].field_256)
            mem[(32 * uint256(stor1[arg1].field_1792)) + (32 * uint256(stor1[arg1].field_2048)) + 384] = uint256(stor1[arg1].field_512)
            mem[(32 * uint256(stor1[arg1].field_1792)) + (32 * uint256(stor1[arg1].field_2048)) + 416] = uint8(stor1[arg1].field_2560)
            mem[(32 * uint256(stor1[arg1].field_1792)) + (32 * uint256(stor1[arg1].field_2048)) + 448] = uint8(stor1[arg1].field_2568)
            mem[(32 * uint256(stor1[arg1].field_1792)) + (32 * uint256(stor1[arg1].field_2048)) + 480] = bool(uint8(stor1[arg1].field_2576))
            mem[(32 * uint256(stor1[arg1].field_1792)) + (32 * uint256(stor1[arg1].field_2048)) + 512] = uint256(stor1[arg1].field_2304)
            mem[(32 * uint256(stor1[arg1].field_1792)) + (32 * uint256(stor1[arg1].field_2048)) + 224] = 320
            mem[(32 * uint256(stor1[arg1].field_1792)) + (32 * uint256(stor1[arg1].field_2048)) + 544] = uint256(stor1[arg1].field_1792)
            if not Mask(251, 0, stor1[arg1].field_1792):
                mem[(32 * uint256(stor1[arg1].field_1792)) + (32 * uint256(stor1[arg1].field_2048)) + 256] = (32 * uint256(stor1[arg1].field_1792)) + 352
                mem[(64 * uint256(stor1[arg1].field_1792)) + (32 * uint256(stor1[arg1].field_2048)) + 576] = uint256(stor1[arg1].field_2048)
                if Mask(251, 0, stor1[arg1].field_2048):
                    mem[(64 * uint256(stor1[arg1].field_1792)) + (32 * uint256(stor1[arg1].field_2048)) + 608] = mem[(32 * uint256(stor1[arg1].field_1792)) + 224]
                    mem[(64 * uint256(stor1[arg1].field_1792)) + (32 * uint256(stor1[arg1].field_2048)) + 640 len floor32((32 * uint256(stor1[arg1].field_2048)) - 1)] = mem[(32 * uint256(stor1[arg1].field_1792)) + 256 len floor32((32 * uint256(stor1[arg1].field_2048)) - 1)]
                return Array(len=uint256(stor1[arg1].field_1792), data=mem[(32 * uint256(stor1[arg1].field_1792)) + (32 * uint256(stor1[arg1].field_2048)) + 576 len (32 * uint256(stor1[arg1].field_1792)) + (32 * uint256(stor1[arg1].field_2048)) + 32]), 
                       (32 * uint256(stor1[arg1].field_1792)) + 352,
                       delegate.return_data[0] << 248,
                       delegate.return_data[0] << 248,
                       uint256(stor1[arg1].field_256),
                       uint256(stor1[arg1].field_512),
                       uint8(stor1[arg1].field_2560),
                       uint8(stor1[arg1].field_2560),
                       bool(uint8(stor1[arg1].field_2576)),
                       uint256(stor1[arg1].field_2304)
            mem[(32 * uint256(stor1[arg1].field_1792)) + (32 * uint256(stor1[arg1].field_2048)) + 576] = 0, Mask(224, 0, stor1[arg1].field_2080)
            mem[(32 * uint256(stor1[arg1].field_1792)) + (32 * uint256(stor1[arg1].field_2048)) + 608 len floor32((32 * uint256(stor1[arg1].field_1792)) - 1)] = uint32(stor1[arg1].field_2048), mem[228 len (32 * uint256(stor1[arg1].field_1792)) + (32 * uint256(stor1[arg1].field_2048)) + 60], delegate.return_data[0] << 248, delegate.return_data[0] << 248, uint256(stor1[arg1].field_256), uint256(stor1[arg1].field_512), uint8(stor1[arg1].field_2560), uint8(stor1[arg1].field_2560), bool(uint8(stor1[arg1].field_2576)), uint256(stor1[arg1].field_2304), uint256(stor1[arg1].field_1792), 0, Mask(224, 0, stor1[arg1].field_2080), mem[(32 * uint256(stor1[arg1].field_1792)) + (32 * uint256(stor1[arg1].field_2048)) + 608 len floor32((32 * uint256(stor1[arg1].field_1792)) - 1) + -(32 * uint256(stor1[arg1].field_1792)) + -(32 * uint256(stor1[arg1].field_2048)) - 384]
        mem[(32 * uint256(stor1[arg1].field_1792)) + (32 * uint256(stor1[arg1].field_2048)) + 256] = (32 * uint256(stor1[arg1].field_1792)) + 352
        mem[(64 * uint256(stor1[arg1].field_1792)) + (32 * uint256(stor1[arg1].field_2048)) + 576] = uint256(stor1[arg1].field_2048)
        if Mask(251, 0, stor1[arg1].field_2048):
            mem[(64 * uint256(stor1[arg1].field_1792)) + (32 * uint256(stor1[arg1].field_2048)) + 608] = mem[(32 * uint256(stor1[arg1].field_1792)) + 224]
            mem[(64 * uint256(stor1[arg1].field_1792)) + (32 * uint256(stor1[arg1].field_2048)) + 640 len floor32((32 * uint256(stor1[arg1].field_2048)) - 1)] = mem[(32 * uint256(stor1[arg1].field_1792)) + 256 len floor32((32 * uint256(stor1[arg1].field_2048)) - 1)]
        return 320, 
               (32 * uint256(stor1[arg1].field_1792)) + 352,
               delegate.return_data[0] << 248,
               delegate.return_data[0] << 248,
               uint256(stor1[arg1].field_256),
               uint256(stor1[arg1].field_512),
               uint8(stor1[arg1].field_2560),
               uint8(stor1[arg1].field_2560),
               bool(uint8(stor1[arg1].field_2576)),
               uint256(stor1[arg1].field_2304),
               uint256(stor1[arg1].field_1792),
               0,
               Mask(224, 0, stor1[arg1].field_2080),
               mem[(32 * uint256(stor1[arg1].field_1792)) + (32 * uint256(stor1[arg1].field_2048)) + 608 len (32 * uint256(stor1[arg1].field_1792)) + (32 * uint256(stor1[arg1].field_2048))]
    mem[192] = uint8(stor[sha3((11 * arg1) + ('name', 'stor1', 1) + 7)].field_0)
    idx = 192
    s = 0
    while (32 * uint256(stor1[arg1].field_1792)) + 160 > idx:
        mem[idx + 32] = storsha3((11 * arg1) + ('name', 'stor1', 1) + 7)[-(0.03125 / s + 1) + s + (-1 * 0.03125 / s + 1 * s) + 1]
        idx = idx + 32
        s = -(s + 1 / 32) + s + (-1 * s + 1 / 32 * s) + 1
        continue 
    mem[(32 * uint256(stor1[arg1].field_1792)) + 192] = uint256(stor1[arg1].field_2048)
    if uint256(stor1[arg1].field_2048):
        mem[(32 * uint256(stor1[arg1].field_1792)) + 224] = uint8(stor[sha3((11 * arg1) + ('name', 'stor1', 1) + 8)].field_0)
        idx = (32 * uint256(stor1[arg1].field_1792)) + 224
        s = 0
        while (32 * uint256(stor1[arg1].field_1792)) + (32 * uint256(stor1[arg1].field_2048)) + 192 > idx:
            mem[idx + 32] = storsha3((11 * arg1) + ('name', 'stor1', 1) + 8)[-(0.03125 / s + 1) + s + (-1 * 0.03125 / s + 1 * s) + 1]
            idx = idx + 32
            s = -(s + 1 / 32) + s + (-1 * s + 1 / 32 * s) + 1
            continue 
    mem[(32 * uint256(stor1[arg1].field_1792)) + (32 * uint256(stor1[arg1].field_2048)) + 288] = uint8(delegate.return_data[0])
    mem[(32 * uint256(stor1[arg1].field_1792)) + (32 * uint256(stor1[arg1].field_2048)) + 320] = uint8(delegate.return_data[0])
    mem[(32 * uint256(stor1[arg1].field_1792)) + (32 * uint256(stor1[arg1].field_2048)) + 352] = uint256(stor1[arg1].field_256)
    mem[(32 * uint256(stor1[arg1].field_1792)) + (32 * uint256(stor1[arg1].field_2048)) + 384] = uint256(stor1[arg1].field_512)
    mem[(32 * uint256(stor1[arg1].field_1792)) + (32 * uint256(stor1[arg1].field_2048)) + 416] = uint8(stor1[arg1].field_2560)
    mem[(32 * uint256(stor1[arg1].field_1792)) + (32 * uint256(stor1[arg1].field_2048)) + 448] = uint8(stor1[arg1].field_2568)
    mem[(32 * uint256(stor1[arg1].field_1792)) + (32 * uint256(stor1[arg1].field_2048)) + 480] = bool(uint8(stor1[arg1].field_2576))
    mem[(32 * uint256(stor1[arg1].field_1792)) + (32 * uint256(stor1[arg1].field_2048)) + 512] = uint256(stor1[arg1].field_2304)
    mem[(32 * uint256(stor1[arg1].field_1792)) + (32 * uint256(stor1[arg1].field_2048)) + 224] = 320
    mem[(32 * uint256(stor1[arg1].field_1792)) + (32 * uint256(stor1[arg1].field_2048)) + 544] = uint256(stor1[arg1].field_1792)
    if not Mask(251, 0, stor1[arg1].field_1792):
        mem[(32 * uint256(stor1[arg1].field_1792)) + (32 * uint256(stor1[arg1].field_2048)) + 256] = (32 * uint256(stor1[arg1].field_1792)) + 352
        mem[(64 * uint256(stor1[arg1].field_1792)) + (32 * uint256(stor1[arg1].field_2048)) + 576] = uint256(stor1[arg1].field_2048)
        if Mask(251, 0, stor1[arg1].field_2048):
            mem[(64 * uint256(stor1[arg1].field_1792)) + (32 * uint256(stor1[arg1].field_2048)) + 608] = mem[(32 * uint256(stor1[arg1].field_1792)) + 224]
            mem[(64 * uint256(stor1[arg1].field_1792)) + (32 * uint256(stor1[arg1].field_2048)) + 640 len floor32((32 * uint256(stor1[arg1].field_2048)) - 1)] = mem[(32 * uint256(stor1[arg1].field_1792)) + 256 len floor32((32 * uint256(stor1[arg1].field_2048)) - 1)]
        return Array(len=uint256(stor1[arg1].field_1792), data=mem[(32 * uint256(stor1[arg1].field_1792)) + (32 * uint256(stor1[arg1].field_2048)) + 576 len (32 * uint256(stor1[arg1].field_1792)) + (32 * uint256(stor1[arg1].field_2048)) + 32]), 
               (32 * uint256(stor1[arg1].field_1792)) + 352,
               delegate.return_data[0] << 248,
               delegate.return_data[0] << 248,
               uint256(stor1[arg1].field_256),
               uint256(stor1[arg1].field_512),
               uint8(stor1[arg1].field_2560),
               uint8(stor1[arg1].field_2560),
               bool(uint8(stor1[arg1].field_2576)),
               uint256(stor1[arg1].field_2304)
    mem[(32 * uint256(stor1[arg1].field_1792)) + (32 * uint256(stor1[arg1].field_2048)) + 576] = mem[192]
    mem[(32 * uint256(stor1[arg1].field_1792)) + (32 * uint256(stor1[arg1].field_2048)) + 608 len floor32((32 * uint256(stor1[arg1].field_1792)) - 1)] = mem[224 len (32 * uint256(stor1[arg1].field_1792)) + (32 * uint256(stor1[arg1].field_2048)) + 64], delegate.return_data[0] << 248, delegate.return_data[0] << 248, uint256(stor1[arg1].field_256), uint256(stor1[arg1].field_512), uint8(stor1[arg1].field_2560), uint8(stor1[arg1].field_2560), bool(uint8(stor1[arg1].field_2576)), uint256(stor1[arg1].field_2304), uint256(stor1[arg1].field_1792), mem[192], mem[(32 * uint256(stor1[arg1].field_1792)) + (32 * uint256(stor1[arg1].field_2048)) + 608 len floor32((32 * uint256(stor1[arg1].field_1792)) - 1) + -(32 * uint256(stor1[arg1].field_1792)) + -(32 * uint256(stor1[arg1].field_2048)) - 384]
    mem[(32 * uint256(stor1[arg1].field_1792)) + (32 * uint256(stor1[arg1].field_2048)) + 256] = (32 * uint256(stor1[arg1].field_1792)) + 352
    mem[(64 * uint256(stor1[arg1].field_1792)) + (32 * uint256(stor1[arg1].field_2048)) + 576] = uint256(stor1[arg1].field_2048)
    if Mask(251, 0, stor1[arg1].field_2048):
        mem[(64 * uint256(stor1[arg1].field_1792)) + (32 * uint256(stor1[arg1].field_2048)) + 608] = mem[(32 * uint256(stor1[arg1].field_1792)) + 224]
        mem[(64 * uint256(stor1[arg1].field_1792)) + (32 * uint256(stor1[arg1].field_2048)) + 640 len floor32((32 * uint256(stor1[arg1].field_2048)) - 1)] = mem[(32 * uint256(stor1[arg1].field_1792)) + 256 len floor32((32 * uint256(stor1[arg1].field_2048)) - 1)]
    return Array(len=uint256(stor1[arg1].field_1792), data=mem[192], mem[(32 * uint256(stor1[arg1].field_1792)) + (32 * uint256(stor1[arg1].field_2048)) + 608 len (32 * uint256(stor1[arg1].field_1792)) + (32 * uint256(stor1[arg1].field_2048))]), 
           (32 * uint256(stor1[arg1].field_1792)) + 352,
           delegate.return_data[0] << 248,
           delegate.return_data[0] << 248,
           uint256(stor1[arg1].field_256),
           uint256(stor1[arg1].field_512),
           uint8(stor1[arg1].field_2560),
           uint8(stor1[arg1].field_2560),
           bool(uint8(stor1[arg1].field_2576)),
           uint256(stor1[arg1].field_2304)
}



}

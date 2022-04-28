contract main {


// =======================  Init code  ======================


address stor0;
address stor1;
uint128 stor2; offset 160
address stor2;
uint256 stor3;
uint256 stor4;
uint8 stor5; offset 128
uint8 stor5; offset 192
uint64 stor5; offset 136
uint64 stor5; offset 200
uint64 stor5;
uint64 stor5; offset 64
uint16 stor6;
uint16 stor6; offset 16
uint64 stor6; offset 32

function _fallback() payable {
    Mask(96, 0, stor2.field_160) = 0
    stor3 = 4 * 10^15
    stor4 = 2 * 10^16
    uint64(stor5.field_0) = 0
    uint64(stor5.field_64) = 0
    uint8(stor5.field_128) = 100
    stor5.field_136 % 72057594037927936 = 0
    uint8(stor5.field_192) = 50
    stor5.field_200 % 72057594037927936 = 0
    uint16(stor6.field_0) = 900
    uint16(stor6.field_16) = 0
    uint64(stor6.field_32) = 0
    require not msg.value
    Mask(96, 0, stor2.field_160) = 1
    stor0 = msg.sender
    address(stor2.field_0) = msg.sender
    stor1 = msg.sender
    return code.data[545 len 18191]
}



// =====================  Runtime code  =====================


address ceoAddress;
address cfoAddress;
uint8 stor2; offset 160
uint128 stor2; offset 160
address cooAddress;
uint256 stor3;
uint256 stor4;
uint64 stor5;
uint64 stor5; offset 64
uint64 stor5; offset 128
uint64 stor5; offset 192
uint32 CONFIRM_LIMIT;
uint64 stor6;
uint64 next_id; offset 32
mapping of address contract;
mapping of struct pendingList;
address newContractAddress;

function cfoAddress() {
    return cfoAddress
}

function ceoAddress() {
    return ceoAddress
}

function paused() {
    return bool(uint8(stor2.field_160))
}

function getContract(address arg1, address arg2) {
    return contract[Mask(128, 128, sha3(arg1) xor sha3(arg2))]
}

function newContractAddress() {
    return newContractAddress
}

function sig_to_add(bytes16 arg1) {
    return contract[Mask(128, 128, arg1)]
}

function CONFIRM_LIMIT() {
    return CONFIRM_LIMIT
}

function cooAddress() {
    return cooAddress
}

function next_id() {
    return next_id
}

function pendingList(address arg1) {
    return bool(pendingList[arg1].field_0), 
           pendingList[arg1].field_0,
           pendingList[arg1].field_256,
           pendingList[arg1].field_512,
           pendingList[arg1].field_768
}

function receiveFee() payable {
  stop
}

function setConfirm(uint256 arg1) {
    require msg.sender == ceoAddress
    CONFIRM_LIMIT = uint32(arg1)
}

function setCEO(address arg1) {
    require msg.sender == ceoAddress
    require arg1
    ceoAddress = arg1
}

function setCOO(address arg1) {
    require msg.sender == ceoAddress
    require arg1
    cooAddress = arg1
}

function setCFO(address arg1) {
    require msg.sender == ceoAddress
    require arg1
    cfoAddress = arg1
}

function setNewAddress(address arg1) {
    require msg.sender == ceoAddress
    require uint8(stor2.field_160)
    newContractAddress = arg1
    emit ContractUpgrade(arg1);
}

function getFreeTime() {
    if cooAddress != msg.sender:
        if ceoAddress != msg.sender:
            require msg.sender == cfoAddress
    return uint64(stor5.field_0), uint64(stor5.field_64)
}

function getFee() {
    if cooAddress != msg.sender:
        if ceoAddress != msg.sender:
            require msg.sender == cfoAddress
    return uint64(stor5.field_0), uint64(stor5.field_0), stor3, stor4
}

function pause() {
    if cooAddress != msg.sender:
        if ceoAddress != msg.sender:
            require msg.sender == cfoAddress
    require not uint8(stor2.field_160)
    Mask(96, 0, stor2.field_160) = 1
}

function _fallback() payable {
    if cooAddress != msg.sender:
        if ceoAddress != msg.sender:
            require msg.sender == cfoAddress
    require msg.value > 0
    emit DepositBank(msg.sender, msg.value);
}

function unpause() {
    require msg.sender == ceoAddress
    require uint8(stor2.field_160)
    require not newContractAddress
    require msg.sender == ceoAddress
    require uint8(stor2.field_160)
    Mask(96, 0, stor2.field_160) = 0
}

function setFreeTime(uint256 arg1, uint256 arg2) {
    require msg.sender == cooAddress
    require arg2 >= arg1
    require arg1 > uint64(block.timestamp)
    uint64(stor5.field_0) = uint64(arg1)
    uint64(stor5.field_64) = uint64(arg2)
}

function withdrawBalance() {
    require msg.sender == cfoAddress
    if eth.balance(this.address) > 0:
        call cfoAddress with:
           value eth.balance(this.address) wei
             gas 2300 * is_zero(value) wei
        require ext_call.success
}

function setFee(uint256 arg1, uint256 arg2, uint256 arg3, uint256 arg4) {
    require msg.sender == ceoAddress
    require arg1 >= 100
    require arg2 >= 50
    uint64(stor5.field_128) = uint64(arg1)
    uint64(stor5.field_192) = uint64(arg2)
    stor3 = arg3
    stor4 = arg4
}

function changeBank(address arg1, address arg2) {
    require uint8(stor2.field_160)
    require msg.sender == ceoAddress
    require arg2
    require ext_code.size(arg1)
    call arg1.changeBankAccount(address rg1) with:
         gas gas_remaining - 710 wei
        args arg2
    require ext_call.success
}

function sendDiary(address arg1, bytes arg2) {
    require not uint8(stor2.field_160)
    require ext_code.size(arg1)
    call arg1.Diary(address rg1, bytes rg2) with:
         gas gas_remaining - 710 wei
        args msg.sender, Array(len=arg2.length, data=arg2[all])
    require ext_call.success
    emit DiaryLog(block.timestamp, Array(len=arg2.length, data=arg2[all]));
}

function sendMileStone(address arg1, uint256 arg2, uint256 arg3) payable {
    require not uint8(stor2.field_160)
    require msg.value >= stor3
    require uint8(arg3) > 2
    require uint8(arg3) <= 18
    require ext_code.size(arg1)
    call arg1.mileStone(address rg1, uint64 rg2, uint8 rg3) with:
         gas gas_remaining - 710 wei
        args msg.sender, arg2 << 192, uint8(arg3)
    require ext_call.success
    emit StoneLog(arg2, uint8(arg3));
}

function bankConfirm(address arg1, uint256 arg2) {
    require not uint8(stor2.field_160)
    require arg2 == arg2
    require pendingList[address(arg1)].field_0
    require block.timestamp < pendingList[address(arg1)].field_768
    require pendingList[address(arg1)].field_8 != msg.sender
    require pendingList[address(arg1)].field_256 == arg2
    require ext_code.size(arg1)
    call arg1.withdrawConfirm(uint256 rg1, address rg2) with:
         gas gas_remaining - 710 wei
        args arg2, msg.sender
    require ext_call.success
    pendingList[address(arg1)].field_0 = 0
    pendingList[address(arg1)].field_8 = 0
    pendingList[address(arg1)].field_256 = 0
    pendingList[address(arg1)].field_512 = 0
    pendingList[address(arg1)].field_768 = 0
    emit WithdrawConfirm(arg2, block.timestamp);
}

function sendBreakup(address arg1) {
    require not uint8(stor2.field_160)
    if uint64(block.timestamp) < uint64(stor5.field_0):
        require uint64(stor5.field_192)
        require ext_code.size(arg1)
        call arg1.breakup(address rg1, uint256 rg2) with:
             gas gas_remaining - 710 wei
            args msg.sender, eth.balance(arg1) / uint64(stor5.field_192)
    else:
        if uint64(block.timestamp) <= uint64(stor5.field_64):
            require ext_code.size(arg1)
            call arg1.breakup(address rg1, uint256 rg2) with:
                 gas gas_remaining - 710 wei
                args msg.sender, 0
        else:
            require uint64(stor5.field_192)
            require ext_code.size(arg1)
            call arg1.breakup(address rg1, uint256 rg2) with:
                 gas gas_remaining - 710 wei
                args msg.sender, eth.balance(arg1) / uint64(stor5.field_192)
    require ext_call.success
    emit Breakup(block.timestamp);
}

function bankWithdraw(address arg1, uint256 arg2) {
    require not uint8(stor2.field_160)
    if pendingList[address(arg1)].field_0:
        require block.timestamp > pendingList[address(arg1)].field_768
    require arg2 == arg2
    if uint64(block.timestamp) < uint64(stor5.field_0):
        require uint64(stor5.field_128)
        require ext_code.size(arg1)
        call arg1.withdraw(uint256 rg1, address rg2, uint256 rg3) with:
             gas gas_remaining - 710 wei
            args arg2, msg.sender, arg2 / uint64(stor5.field_128)
        require ext_call.success
        pendingList[address(arg1)].field_0 = 1
        pendingList[address(arg1)].field_8 = msg.sender
        pendingList[address(arg1)].field_256 = arg2
        pendingList[address(arg1)].field_512 = arg2 / uint64(stor5.field_128)
    else:
        if uint64(block.timestamp) <= uint64(stor5.field_64):
            require ext_code.size(arg1)
            call arg1.withdraw(uint256 rg1, address rg2, uint256 rg3) with:
                 gas gas_remaining - 710 wei
                args arg2, msg.sender, 0
            require ext_call.success
            pendingList[address(arg1)].field_0 = 1
            pendingList[address(arg1)].field_8 = msg.sender
            pendingList[address(arg1)].field_256 = arg2
            pendingList[address(arg1)].field_512 = 0
        else:
            require uint64(stor5.field_128)
            require ext_code.size(arg1)
            call arg1.withdraw(uint256 rg1, address rg2, uint256 rg3) with:
                 gas gas_remaining - 710 wei
                args arg2, msg.sender, arg2 / uint64(stor5.field_128)
            require ext_call.success
            pendingList[address(arg1)].field_0 = 1
            pendingList[address(arg1)].field_8 = msg.sender
            pendingList[address(arg1)].field_256 = arg2
            pendingList[address(arg1)].field_512 = arg2 / uint64(stor5.field_128)
    pendingList[address(arg1)].field_768 = uint64(block.timestamp + CONFIRM_LIMIT)
    emit Withdraw(arg2, uint64(block.timestamp + CONFIRM_LIMIT));
}

function createAccount(bytes32 arg1, bytes32 arg2, address arg3, address arg4) payable {
    require not uint8(stor2.field_160)
    require msg.sender == arg3
    require arg3 != arg4
    require arg3
    require arg4
    if uint64(block.timestamp) < uint64(stor5.field_0):
        require msg.value >= stor4
        if uint64(block.timestamp) < uint64(stor5.field_0):
            require msg.value >= stor4
        else:
            if uint64(block.timestamp) > uint64(stor5.field_64):
                require msg.value >= stor4
        require not contract[Mask(128, 128, sha3(arg3) xor sha3(arg4))]
        create contract with 0 wei
                        code: code.data[11634 len 6514], arg1, arg2, address(arg3), arg4, stor6
        require create.new_address
        contract[Mask(128, 128, sha3(arg3) xor sha3(arg4))] = address(create.new_address)
        emit Create(arg1, arg2, address(create.new_address), address(arg3), arg4, stor6);
        if msg.value > stor4:
            call address(create.new_address) with:
               value msg.value - stor4 wei
                 gas 2300 * is_zero(value) wei
            require ext_call.success
    else:
        if uint64(block.timestamp) <= uint64(stor5.field_64):
            require msg.value >= 0
            if uint64(block.timestamp) < uint64(stor5.field_0):
                require msg.value >= stor4
            else:
                if uint64(block.timestamp) > uint64(stor5.field_64):
                    require msg.value >= stor4
            require not contract[Mask(128, 128, sha3(arg3) xor sha3(arg4))]
            create contract with 0 wei
                            code: code.data[11634 len 6514], arg1, arg2, address(arg3), arg4, stor6
            require create.new_address
            contract[Mask(128, 128, sha3(arg3) xor sha3(arg4))] = address(create.new_address)
            emit Create(arg1, arg2, address(create.new_address), address(arg3), arg4, stor6);
            if msg.value > 0:
                call address(create.new_address) with:
                   value msg.value wei
                     gas 2300 * is_zero(value) wei
                require ext_call.success
        else:
            require msg.value >= stor4
            if uint64(block.timestamp) < uint64(stor5.field_0):
                require msg.value >= stor4
            else:
                if uint64(block.timestamp) > uint64(stor5.field_64):
                    require msg.value >= stor4
            require not contract[Mask(128, 128, sha3(arg3) xor sha3(arg4))]
            create contract with 0 wei
                            code: code.data[11634 len 6514], arg1, arg2, address(arg3), arg4, stor6
            require create.new_address
            contract[Mask(128, 128, sha3(arg3) xor sha3(arg4))] = address(create.new_address)
            emit Create(arg1, arg2, address(create.new_address), address(arg3), arg4, stor6);
            if msg.value > stor4:
                call address(create.new_address) with:
                   value msg.value - stor4 wei
                     gas 2300 * is_zero(value) wei
                require ext_call.success
    next_id = uint64(next_id + 1)
}



}

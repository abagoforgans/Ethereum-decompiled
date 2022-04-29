contract main {


// =======================  Init code  ======================


address stor0;
address stor6;
uint128 stor7; offset 160
uint256 stor7;

function _fallback() {
    stor0 = msg.sender
    require code.data[4106 len 20]
    stor6 = code.data[4106 len 20]
    require ext_code.size(code.data[4106 len 20])
    call code.data[4106 len 20].0x8da5cb5b with:
         gas gas_remaining - 710 wei
    require ext_call.success
    uint256(stor7.field_0) = Mask(96, 0, stor7.field_160)
    return code.data[279 len 3815]
}



// =====================  Runtime code  =====================


const sub_e170f36a(?) = 50000

const sub_fdb50055(?) = 100000


address owner;
array of uint256 stor1;
array of struct addresses;
uint256 sub_84411d65;
uint8 status;
array of struct sub_ab5cbadb;
address simpleTokenAddress;
address sub_04e18312Address;

function sub_04e18312(?) {
    return sub_04e18312Address
}

function status() {
    require status <= 4
    return status
}

function getProcessablesSize() {
    return sub_ab5cbadb.length
}

function simpleToken() {
    return simpleTokenAddress
}

function sub_84411d65(?) {
    return sub_84411d65
}

function owner() {
    return owner
}

function sub_ab5cbadb(?) {
    require arg1 < sub_ab5cbadb.length
    return sub_ab5cbadb[arg1].field_0, uint256(sub_ab5cbadb[arg1].field_256), bool(uint8(sub_ab5cbadb[arg1].field_512))
}

function getAddressesSize() {
    return addresses.length
}

function proposedOwner() {
    return address(stor1.length)
}

function addresses(uint256 arg1) {
    require arg1 < addresses.length
    return addresses[arg1].field_0
}

function _fallback() payable {
    revert
}

function initiateOwnershipTransfer(address arg1) {
    require msg.sender == owner
    address(stor1.length) = arg1
    emit OwnershipTransferInitiated(arg1);
    return 1
}

function lock() {
    require msg.sender == owner
    require status <= 4
    require not status
    require sub_ab5cbadb.length > 0
    status = 1
    emit Locked()
    return 1
}

function completeOwnershipTransfer() {
    require address(stor1.length) == msg.sender
    owner = address(stor1.length)
    address(stor1.length) = 0
    emit OwnershipTransferCompleted(address(stor1.length));
    return 1
}

function approve() {
    require ext_code.size(simpleTokenAddress)
    call simpleTokenAddress.0x8da5cb5b with:
         gas gas_remaining - 710 wei
    require ext_call.success
    require msg.sender == ext_call.return_data[12 len 20]
    require status <= 4
    require status == 1
    status = 2
    emit Approved()
    return 1
}

function disapprove() {
    require ext_code.size(simpleTokenAddress)
    call simpleTokenAddress.0x8da5cb5b with:
         gas gas_remaining - 710 wei
    require ext_call.success
    require msg.sender == ext_call.return_data[12 len 20]
    require status <= 4
    if status != 1:
        require status <= 4
        require status == 2
    status = 4
    emit Disapproved()
    return 1
}

function remainingTotalBonuses() {
    idx = 0
    s = 0
    while idx < sub_ab5cbadb.length:
        mem[0] = 5
        if uint8(sub_ab5cbadb[idx].field_512):
            idx = idx + 1
            s = s
            continue 
        require idx < sub_ab5cbadb.length
        mem[0] = 5
        require uint256(sub_ab5cbadb[idx].field_256) + s >= s
        idx = idx + 1
        s = uint256(sub_ab5cbadb[idx].field_256) + s
        continue 
    return s
}

function getAddresses() {
    if not addresses.length:
        mem[(32 * addresses.length) + 160] = 32
        mem[(32 * addresses.length) + 192] = addresses.length
        mem[(32 * addresses.length) + 224 len floor32(addresses.length)] = mem[160 len floor32(addresses.length)]
        return memory
          from (32 * addresses.length) + 160
           len (96 * addresses.length) + 64
    mem[160] = address(addresses.field_0)
    idx = 160
    s = 0
    while (32 * addresses.length) + 128 > idx:
        mem[idx + 32] = addresses[s].field_256
        idx = idx + 32
        s = s + 1
        continue 
    mem[(32 * addresses.length) + 224 len floor32(addresses.length)] = mem[160 len floor32(addresses.length)]
    return Array(len=addresses.length, data=mem[160 len floor32(addresses.length)], mem[(32 * addresses.length) + floor32(addresses.length) + 224 len (32 * addresses.length) - floor32(addresses.length)]), 
}

function add(address[] arg1, uint256[] arg2) {
    mem[96] = arg1.length
    mem[128 len 32 * arg1.length] = call.data[arg1 + 36 len 32 * arg1.length]
    mem[64] = (32 * arg1.length) + (32 * arg2.length) + 160
    mem[(32 * arg1.length) + 128] = arg2.length
    mem[(32 * arg1.length) + 160 len 32 * arg2.length] = call.data[arg2 + 36 len 32 * arg2.length]
    require msg.sender == owner
    idx = 0
    while idx < arg1.length:
        sub_ab5cbadb.length++
        if not sub_ab5cbadb.length > sub_ab5cbadb.length + 1:
            mem[0] = 5
            _42 = mem[64]
            mem[64] = mem[64] + 96
            require idx < mem[96]
            mem[_42] = mem[(32 * idx) + 140 len 20]
            require idx < mem[(32 * arg1.length) + 128]
            mem[_42 + 32] = mem[(32 * idx) + (32 * arg1.length) + 160]
            mem[_42 + 64] = 0
            sub_ab5cbadb[sub_ab5cbadb.length].field_0 = mem[_42 + 12 len 20]
            uint256(sub_ab5cbadb[sub_ab5cbadb.length].field_256) = mem[_42 + 32]
        else:
            s = sha3(5) + (3 * sub_ab5cbadb.length) + 3
            while sha3(5) + (3 * sub_ab5cbadb.length) > s:
                stor[s] = 0
                uint256(stor1[s]) = 0
                uint8(addresses[s].field_0) = 0
                s = s + 3
                continue 
            mem[0] = 5
            _68 = mem[64]
            mem[64] = mem[64] + 96
            require idx < mem[96]
            mem[_68] = mem[(32 * idx) + 140 len 20]
            require idx < mem[(32 * arg1.length) + 128]
            mem[_68 + 32] = mem[(32 * idx) + (32 * arg1.length) + 160]
            mem[_68 + 64] = 0
            sub_ab5cbadb[sub_ab5cbadb.length].field_0 = mem[_68 + 12 len 20]
            uint256(sub_ab5cbadb[sub_ab5cbadb.length].field_256) = mem[_68 + 32]
        uint8(sub_ab5cbadb[sub_ab5cbadb.length].field_512) = 0
        if gas_remaining >= 50000:
            idx = idx + 1
            continue 
        emit BonusesAdded(idx);
        return idx
    emit BonusesAdded(idx);
    return idx
}

function process(uint256 arg1) {
    require msg.sender == owner
    require status <= 4
    require status == 2
    require ext_code.size(simpleTokenAddress)
    call simpleTokenAddress.0xdd62ed3e with:
         gas gas_remaining - 710 wei
        args sub_04e18312Address, this.address
    require ext_call.success
    idx = arg1
    s = 0
    while idx < sub_ab5cbadb.length:
        if gas_remaining < 100000:
            if sub_84411d65 == sub_ab5cbadb.length:
                require status <= 4
                require status == 2
                status = 3
                emit Completed()
            return s
        require idx < sub_ab5cbadb.length
        if ext_call.return_data[0] < uint256(sub_ab5cbadb[idx].field_256):
            if sub_84411d65 == sub_ab5cbadb.length:
                require status <= 4
                require status == 2
                status = 3
                emit Completed()
            return s
        require idx < sub_ab5cbadb.length
        mem[0] = 5
        if not uint8(sub_ab5cbadb[idx].field_512):
            require idx < sub_ab5cbadb.length
            mem[100] = sub_04e18312Address
            mem[132] = sub_ab5cbadb[idx].field_0
            mem[164] = uint256(sub_ab5cbadb[idx].field_256)
            require ext_code.size(simpleTokenAddress)
            call simpleTokenAddress.0x23b872dd with:
                 gas gas_remaining - 710 wei
                args sub_04e18312Address, sub_ab5cbadb[idx].field_0, uint256(sub_ab5cbadb[idx].field_256)
            require ext_call.success
            require ext_call.return_data[0]
            require idx < sub_ab5cbadb.length
            require uint256(sub_ab5cbadb[idx].field_256) <= ext_call.return_data[0]
            require idx < sub_ab5cbadb.length
            uint8(sub_ab5cbadb[idx].field_512) = 1
            sub_84411d65++
            mem[0] = 5
            mem[96] = uint256(sub_ab5cbadb[idx].field_256)
            emit BonusProcessed(uint256(sub_ab5cbadb[idx].field_256), sub_ab5cbadb[idx].field_0);
        idx = idx + 1
        s = idx
        continue 
    if sub_84411d65 == sub_ab5cbadb.length:
        require status <= 4
        require status == 2
        status = 3
        emit Completed()
    return s
}



}

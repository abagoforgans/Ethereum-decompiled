contract main {




// =====================  Runtime code  =====================


uint8 stor0; offset 160
uint128 stor0; offset 160
address owner;
address stor1;
mapping of uint8 stor2;
uint256 ownerCut;
mapping of struct sub_5b10a669;

function sub_0fdccc23(?) {
    require sub_5b10a669[arg1].field_0
    return sub_5b10a669[arg1].field_0, 
           sub_5b10a669[arg1].field_256,
           sub_5b10a669[arg1].field_512,
           sub_5b10a669[arg1].field_768,
           sub_5b10a669[arg1].field_1024
}

function sub_5b10a669(?) {
    return sub_5b10a669[arg1].field_0, 
           sub_5b10a669[arg1].field_256,
           sub_5b10a669[arg1].field_512,
           sub_5b10a669[arg1].field_768,
           sub_5b10a669[arg1].field_1024
}

function paused() {
    return bool(uint8(stor0.field_160))
}

function ownerCut() {
    return ownerCut
}

function owner() {
    return owner
}

function sub_e0117bdd(?) {
    return bool(stor2[arg1])
}

function _fallback() payable {
    revert
}

function setCFO(address arg1) {
    require msg.sender == owner
    stor1 = arg1
}

function setOwnerCut(uint256 arg1) {
    require msg.sender == owner
    ownerCut = arg1
}

function removeFromWhitelist(address arg1) {
    require msg.sender == owner
    stor2[address(arg1)] = 0
}

function addTokenToWhitelist(address arg1) {
    require msg.sender == owner
    stor2[address(arg1)] = 1
}

function unpause() {
    require msg.sender == owner
    require uint8(stor0.field_160)
    Mask(96, 0, stor0.field_160) = 0
    emit Unpause()
}

function pause() {
    require msg.sender == owner
    require not uint8(stor0.field_160)
    Mask(96, 0, stor0.field_160) = 1
    emit Pause()
}

function transferOwnership(address arg1) {
    require msg.sender == owner
    require arg1
    emit OwnershipTransferred(owner, arg1);
    owner = arg1
}

function withDrawBalance(uint256 arg1) {
    require msg.sender == stor1
    require eth.balance(this.address) >= arg1
    call stor1 with:
       value arg1 wei
         gas 2300 * is_zero(value) wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function addManyToWhitelist(address[] arg1) {
    mem[128 len 32 * arg1.length] = call.data[arg1 + 36 len 32 * arg1.length]
    require msg.sender == owner
    idx = 0
    while idx < arg1.length:
        require idx < arg1.length
        mem[0] = mem[(32 * idx) + 140 len 20]
        mem[32] = 2
        stor2[mem[(32 * idx) + 140 len 20]] = 1
        idx = idx + 1
        continue 
}

function sub_0f8734c4(?) {
    require msg.sender == sub_5b10a669[arg1].field_0
    if not sub_5b10a669[arg1].field_768:
        require eth.balance(this.address) >= 0
        call msg.sender with:
             gas 2300 wei
    else:
        require sub_5b10a669[arg1].field_768
        require sub_5b10a669[arg1].field_768 * sub_5b10a669[arg1].field_512 / 10^18 / sub_5b10a669[arg1].field_768 == sub_5b10a669[arg1].field_512 / 10^18
        require eth.balance(this.address) >= sub_5b10a669[arg1].field_768 * sub_5b10a669[arg1].field_512 / 10^18
        call msg.sender with:
           value sub_5b10a669[arg1].field_768 * sub_5b10a669[arg1].field_512 / 10^18 wei
             gas 2300 * is_zero(value) wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    sub_5b10a669[arg1].field_0 = 0
    sub_5b10a669[arg1].field_256 = 0
    sub_5b10a669[arg1].field_512 = 0
    sub_5b10a669[arg1].field_768 = 0
    sub_5b10a669[arg1].field_1024 = 0
    emit 0x4722e857: arg1
}

function sub_6f8b9b8e(?) payable {
    require stor2[address(arg1)]
    require not uint8(stor0.field_160)
    require not arg2 % 10^18
    require not arg4 % 10^18
    require arg2 >= arg4
    if not arg3:
        require not msg.value
    else:
        require arg3
        require arg3 * arg2 / 10^18 / arg3 == arg2 / 10^18
        require msg.value == arg3 * arg2 / 10^18
    sub_5b10a669[block.timestamp][block.number][msg.sender][arg1][arg2][arg3][arg4].field_0 = msg.sender
    sub_5b10a669[block.timestamp][block.number][msg.sender][arg1][arg2][arg3][arg4].field_256 = arg1
    sub_5b10a669[block.timestamp][block.number][msg.sender][arg1][arg2][arg3][arg4].field_512 = arg2
    sub_5b10a669[block.timestamp][block.number][msg.sender][arg1][arg2][arg3][arg4].field_768 = arg3
    sub_5b10a669[block.timestamp][block.number][msg.sender][arg1][arg2][arg3][arg4].field_1024 = arg4
    emit 0xb3d7c968: sha3(block.timestamp, block.number, msg.sender, arg1, arg2, arg3, arg4), msg.sender, address(arg1), arg2, arg3, arg4
}

function receiveApproval(address arg1, uint256 arg2, address arg3, bytes arg4) {
    mem[128 len arg4.length] = arg4[all]
    require not uint8(stor0.field_160)
    require not arg2 % 10^18
    require arg3 == sub_5b10a669[mem[128]].field_256
    require sub_5b10a669[mem[128]].field_0
    if sub_5b10a669[mem[128]].field_512 >= sub_5b10a669[mem[128]].field_1024:
        require arg2 >= sub_5b10a669[mem[128]].field_1024
    require sub_5b10a669[mem[128]].field_512 >= arg2
    require ext_code.size(arg3)
    call arg3.0x23b872dd with:
         gas gas_remaining wei
        args address(arg1), sub_5b10a669[mem[128]].field_0, arg2
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0]
    if not sub_5b10a669[mem[128]].field_768:
        require arg2 <= sub_5b10a669[mem[128]].field_512
        sub_5b10a669[mem[128]].field_512 -= arg2
        call arg1 with:
             gas 2300 wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        emit 0x9f1c07b1: mem[128], arg2, 0
    else:
        require sub_5b10a669[mem[128]].field_768
        require sub_5b10a669[mem[128]].field_768 * arg2 / 10^18 / sub_5b10a669[mem[128]].field_768 == arg2 / 10^18
        if not sub_5b10a669[mem[128]].field_768 * arg2 / 10^18:
            require 0 <= sub_5b10a669[mem[128]].field_768 * arg2 / 10^18
            require arg2 <= sub_5b10a669[mem[128]].field_512
            sub_5b10a669[mem[128]].field_512 -= arg2
            call arg1 with:
               value sub_5b10a669[mem[128]].field_768 * arg2 / 10^18 wei
                 gas 2300 * is_zero(value) wei
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            emit 0x9f1c07b1: mem[128], arg2, sub_5b10a669[mem[128]].field_768 * arg2 / 10^18
        else:
            require sub_5b10a669[mem[128]].field_768 * arg2 / 10^18
            require sub_5b10a669[mem[128]].field_768 * arg2 / 10^18 * ownerCut / sub_5b10a669[mem[128]].field_768 * arg2 / 10^18 == ownerCut
            require sub_5b10a669[mem[128]].field_768 * arg2 / 10^18 * ownerCut / 10000 <= sub_5b10a669[mem[128]].field_768 * arg2 / 10^18
            require arg2 <= sub_5b10a669[mem[128]].field_512
            sub_5b10a669[mem[128]].field_512 -= arg2
            call arg1 with:
               value (sub_5b10a669[mem[128]].field_768 * arg2 / 10^18) - (sub_5b10a669[mem[128]].field_768 * arg2 / 10^18 * ownerCut / 10000) wei
                 gas 2300 * is_zero(value) wei
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            emit 0x9f1c07b1: mem[128], arg2, (sub_5b10a669[mem[128]].field_768 * arg2 / 10^18) - (sub_5b10a669[mem[128]].field_768 * arg2 / 10^18 * ownerCut / 10000)
    if not sub_5b10a669[mem[128]].field_512:
        sub_5b10a669[mem[128]].field_0 = 0
        sub_5b10a669[mem[128]].field_256 = 0
        sub_5b10a669[mem[128]].field_512 = 0
        sub_5b10a669[mem[128]].field_768 = 0
        sub_5b10a669[mem[128]].field_1024 = 0
        emit 0x20906e48: mem[128]
}



}

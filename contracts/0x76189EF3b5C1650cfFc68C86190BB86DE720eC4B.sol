contract main {


// =======================  Init code  ======================


mapping of uint8 stor0;
uint8 stor1;
array of uint256 stor4;
array of uint256 stor5;
uint8 stor6;
address stor6; offset 8

function _fallback() {
    stor0[address(msg.sender)][sha3('_superuser')] = 1
    emit 0x130ea6d9: 1, msg.sender, sha3('_superuser')
    stor1 = 0
    bool(stor4.length) = 0
    stor4.length.field_1 = 31
    stor4.length.field_8 = 'Joint infrastructure management'
    idx = 0
    while stor4.length + 31 / 32 > idx:
        stor4[idx].field_0 = 0
        idx = idx + 1
        continue 
    bool(stor5.length) = 0
    stor5.length.field_1 = 3
    stor5.length.field_8 = 'JIM' / 256
    idx = 0
    while stor5.length + 31 / 32 > idx:
        stor5[idx].field_0 = 0
        idx = idx + 1
        continue 
    uint8(stor6.field_0) = 18
    create contract with 0 wei
                    code: code.data[11331 len 3633]
    require create.new_address
    address(stor6.field_8) = address(create.new_address)
    require ext_code.size(address(stor6.field_8))
    call address(stor6.field_8).0x40c10f19 with:
         gas gas_remaining - 710 wei
        args msg.sender, 100000000 * 10^18
    require ext_call.success
    require ext_code.size(address(stor6.field_8))
    call address(stor6.field_8).0x18160ddd with:
         gas gas_remaining - 710 wei
    require ext_call.success
    emit Transfer(ext_call.return_data[0], 0, msg.sender);
    return code.data[1117 len 10214]
}



// =====================  Runtime code  =====================


mapping of uint8 stor0;
uint8 currentState;
uint256 pausedUntil;
address sub_2b507435Address;
array of uint256 name;
array of uint256 symbol;
uint8 decimals;
address storeAddress; offset 8
mapping of uint8 stor1760760366470058570597;
mapping of uint8 stor4004859641441178949841131050000740;
mapping of uint8 stor1502909319033145365391926167276090906026148167399097654403948;

function name() {
    return name[0 len name.length]
}

function currentState() {
    require currentState <= 4
    return currentState
}

function sub_2b507435(?) {
    return sub_2b507435Address
}

function decimals() {
    require currentState <= 4
    require currentState == 1
    return decimals
}

function symbol() {
    return symbol[0 len symbol.length]
}

function store() {
    return storeAddress
}

function pausedUntil() {
    return pausedUntil
}

function _fallback() payable {
    revert
}

function isPermitted(address arg1, bytes32 arg2) {
    if stor0[address(arg1)][arg2]:
        return bool(stor0[address(arg1)][arg2])
    return bool(stor0[address(arg1)][('name', 'stor5F73', 1760760366470058570597)])
}

function totalSupply() {
    require currentState <= 4
    require currentState == 1
    require ext_code.size(storeAddress)
    call storeAddress.0x18160ddd with:
         gas gas_remaining - 710 wei
    require ext_call.success
    return ext_call.return_data[0]
}

function balanceOf(address arg1) {
    require currentState <= 4
    require currentState == 1
    require ext_code.size(storeAddress)
    call storeAddress.0x70a08231 with:
         gas gas_remaining - 710 wei
        args arg1
    require ext_call.success
    return ext_call.return_data[0]
}

function setPermission(address arg1, bytes32 arg2, bool arg3) {
    if not stor0[address(msg.sender)][('name', 'stor5F73', 1760760366470058570597)]:
        require stor0[address(msg.sender)][('name', 'stor5F73', 1760760366470058570597)]
    stor0[address(arg1)][arg2] = uint8(arg3)
    emit 0x130ea6d9: arg3, arg1, arg2
}

function retire() {
    if not stor0[address(msg.sender)][('name', 'storEF6D', 1502909319033145365391926167276090906026148167399097654403948)]:
        require stor0[address(msg.sender)][('name', 'stor5F73', 1760760366470058570597)]
    require currentState <= 4
    require currentState == 1
    currentState = 4
    emit StateChange(4);
}

function activate() {
    if not stor0[address(msg.sender)][('name', 'storEF6D', 1502909319033145365391926167276090906026148167399097654403948)]:
        require stor0[address(msg.sender)][('name', 'stor5F73', 1760760366470058570597)]
    require currentState <= 4
    require not currentState
    currentState = 1
    emit StateChange(1);
}

function allowance(address arg1, address arg2) {
    require currentState <= 4
    require currentState == 1
    require ext_code.size(storeAddress)
    call storeAddress.allowanceOf(address rg1, address rg2) with:
         gas gas_remaining - 710 wei
        args address(arg1), arg2
    require ext_call.success
    return ext_call.return_data[0]
}

function unpause() {
    if not stor0[address(msg.sender)][('name', 'storEF6D', 1502909319033145365391926167276090906026148167399097654403948)]:
        require stor0[address(msg.sender)][('name', 'stor5F73', 1760760366470058570597)]
    require currentState <= 4
    require currentState == 2
    currentState = 1
    pausedUntil = 0
    emit StateChange(1);
}

function sub_112bbe20(?) {
    if not stor0[address(msg.sender)][('name', 'storEF6D', 1502909319033145365391926167276090906026148167399097654403948)]:
        require stor0[address(msg.sender)][('name', 'stor5F73', 1760760366470058570597)]
    require currentState <= 4
    require currentState == 2
    require arg1 > block.timestamp
    pausedUntil = arg1
    emit 0x8b00ce48: arg1
}

function pause(uint256 arg1) {
    if not stor0[address(msg.sender)][('name', 'storEF6D', 1502909319033145365391926167276090906026148167399097654403948)]:
        require stor0[address(msg.sender)][('name', 'stor5F73', 1760760366470058570597)]
    require currentState <= 4
    require currentState == 1
    currentState = 2
    pausedUntil = arg1
    emit StateChange(2);
    emit 0x8b00ce48: pausedUntil
}

function burn(uint256 arg1) {
    require ext_code.size(storeAddress)
    call storeAddress.sync(address rg1) with:
         gas gas_remaining - 710 wei
        args msg.sender
    require ext_call.success
    require currentState <= 4
    require currentState == 1
    require ext_code.size(storeAddress)
    call storeAddress.burn(address rg1, uint256 rg2) with:
         gas gas_remaining - 710 wei
        args msg.sender, arg1
    require ext_call.success
    emit Transfer(arg1, msg.sender, 0);
    emit Burn(msg.sender, arg1);
}

function sub_9c0d9725(?) {
    require ext_code.size(storeAddress)
    call storeAddress.sync(address rg1) with:
         gas gas_remaining - 710 wei
        args msg.sender
    require ext_call.success
    if not stor0[address(msg.sender)][sha3('token: issue dividend')]:
        require stor0[address(msg.sender)][('name', 'stor5F73', 1760760366470058570597)]
    require currentState <= 4
    require currentState == 1
    require ext_code.size(storeAddress)
    call storeAddress.0xfceaabca with:
         gas gas_remaining - 710 wei
        args msg.sender, arg1
    require ext_call.success
}

function upgrade() {
    if not stor0[address(msg.sender)][('name', 'storC574', 4004859641441178949841131050000740)]:
        require stor0[address(msg.sender)][('name', 'stor5F73', 1760760366470058570597)]
    require currentState <= 4
    require currentState == 1
    if not stor0[address(msg.sender)][('name', 'storEF6D', 1502909319033145365391926167276090906026148167399097654403948)]:
        require stor0[address(msg.sender)][('name', 'stor5F73', 1760760366470058570597)]
    require currentState <= 4
    require currentState == 1
    require sub_2b507435Address
    currentState = 3
    emit StateChange(3);
    emit 0x4e5a4fec: sub_2b507435Address
}

function mint(uint256 arg1) {
    require ext_code.size(storeAddress)
    call storeAddress.sync(address rg1) with:
         gas gas_remaining - 710 wei
        args msg.sender
    require ext_call.success
    if not stor0[address(msg.sender)][sha3('token: mint')]:
        require stor0[address(msg.sender)][('name', 'stor5F73', 1760760366470058570597)]
    require currentState <= 4
    require currentState == 1
    require ext_code.size(storeAddress)
    call storeAddress.0x40c10f19 with:
         gas gas_remaining - 710 wei
        args msg.sender, arg1
    require ext_call.success
    emit Transfer(arg1, 0, msg.sender);
    emit Mint(msg.sender, arg1);
}

function transfer(address arg1, uint256 arg2) {
    require ext_code.size(storeAddress)
    call storeAddress.sync(address rg1) with:
         gas gas_remaining - 710 wei
        args msg.sender
    require ext_call.success
    require ext_code.size(storeAddress)
    call storeAddress.sync(address rg1) with:
         gas gas_remaining - 710 wei
        args arg1
    require ext_call.success
    require currentState <= 4
    require currentState == 1
    require arg1 != this.address
    require ext_code.size(storeAddress)
    call storeAddress.transfer(address rg1, address rg2, uint256 rg3) with:
         gas gas_remaining - 710 wei
        args msg.sender, address(arg1), arg2
    require ext_call.success
    emit Transfer(arg2, msg.sender, arg1);
    return 1
}

function approve(address arg1, uint256 arg2) {
    require ext_code.size(storeAddress)
    call storeAddress.sync(address rg1) with:
         gas gas_remaining - 710 wei
        args msg.sender
    require ext_call.success
    require ext_code.size(storeAddress)
    call storeAddress.sync(address rg1) with:
         gas gas_remaining - 710 wei
        args arg1
    require ext_call.success
    require currentState <= 4
    require currentState == 1
    require arg1 != this.address
    require ext_code.size(storeAddress)
    call storeAddress.setAllowance(address rg1, address rg2, uint256 rg3) with:
         gas gas_remaining - 710 wei
        args msg.sender, address(arg1), arg2
    require ext_call.success
    emit Approval(arg2, msg.sender, arg1);
    return 1
}

function sub_a795307e(?) {
    if not stor0[address(msg.sender)][('name', 'storC574', 4004859641441178949841131050000740)]:
        require stor0[address(msg.sender)][('name', 'stor5F73', 1760760366470058570597)]
    require currentState <= 4
    require currentState == 1
    require ext_code.size(storeAddress)
    call storeAddress.0x3b424f09 with:
         gas gas_remaining - 710 wei
        args address(arg1), sha3(1760760366470058570597), 1
    require ext_call.success
    if not stor0[address(msg.sender)][('name', 'storEF6D', 1502909319033145365391926167276090906026148167399097654403948)]:
        require stor0[address(msg.sender)][('name', 'stor5F73', 1760760366470058570597)]
    require currentState <= 4
    require currentState == 1
    sub_2b507435Address = arg1
}

function commitUpgrade() {
    if not stor0[address(msg.sender)][('name', 'storC574', 4004859641441178949841131050000740)]:
        require stor0[address(msg.sender)][('name', 'stor5F73', 1760760366470058570597)]
    require currentState <= 4
    require currentState == 3
    require ext_code.size(storeAddress)
    call storeAddress.0x3b424f09 with:
         gas gas_remaining - 710 wei
        args address(this.address), sha3(1760760366470058570597), 0
    require ext_call.success
    if not stor0[address(msg.sender)][('name', 'storEF6D', 1502909319033145365391926167276090906026148167399097654403948)]:
        require stor0[address(msg.sender)][('name', 'stor5F73', 1760760366470058570597)]
    require currentState <= 4
    require currentState == 3
    currentState = 4
    emit StateChange(4);
}

function sub_36f2c437(?) {
    if not stor0[address(msg.sender)][('name', 'storC574', 4004859641441178949841131050000740)]:
        require stor0[address(msg.sender)][('name', 'stor5F73', 1760760366470058570597)]
    require currentState <= 4
    require currentState == 3
    if sub_2b507435Address:
        require ext_code.size(storeAddress)
        call storeAddress.0x3b424f09 with:
             gas gas_remaining - 710 wei
            args sub_2b507435Address, sha3(1760760366470058570597), 0
        require ext_call.success
    if not stor0[address(msg.sender)][('name', 'storEF6D', 1502909319033145365391926167276090906026148167399097654403948)]:
        require stor0[address(msg.sender)][('name', 'stor5F73', 1760760366470058570597)]
    require currentState <= 4
    require currentState == 3
    currentState = 1
    sub_2b507435Address = 0
    emit StateChange(1);
}

function transferFrom(address arg1, address arg2, uint256 arg3) {
    require ext_code.size(storeAddress)
    call storeAddress.sync(address rg1) with:
         gas gas_remaining - 710 wei
        args msg.sender
    require ext_call.success
    require ext_code.size(storeAddress)
    call storeAddress.sync(address rg1) with:
         gas gas_remaining - 710 wei
        args arg1
    require ext_call.success
    require ext_code.size(storeAddress)
    call storeAddress.sync(address rg1) with:
         gas gas_remaining - 710 wei
        args arg2
    require ext_call.success
    require currentState <= 4
    require currentState == 1
    require ext_code.size(storeAddress)
    call storeAddress.0xd216dd83 with:
         gas gas_remaining - 710 wei
        args 0, 0, msg.sender, address(arg2), arg3
    require ext_call.success
    emit Transfer(arg3, arg1, arg2);
    return 1
}

function sub_be5923eb(?) {
    mem[128 len 32 * arg1.length] = call.data[arg1 + 36 len 32 * arg1.length]
    require currentState <= 4
    require currentState == 1
    idx = 0
    while idx < arg1.length:
        require idx < arg1.length
        _18 = mem[(32 * idx) + 128]
        require idx < arg1.length
        _20 = mem[(32 * idx) + 128]
        require ext_code.size(storeAddress)
        call storeAddress.sync(address rg1) with:
             gas gas_remaining - 710 wei
            args msg.sender
        require ext_call.success
        require ext_code.size(storeAddress)
        call storeAddress.sync(address rg1) with:
             gas gas_remaining - 710 wei
            args address(mem[(32 * idx) + 128])
        require ext_call.success
        require currentState <= 4
        require currentState == 1
        require mem[(32 * idx) + 140 len 20] != this.address
        mem[(32 * arg1.length) + 132] = msg.sender
        mem[(32 * arg1.length) + 164] = address(_18)
        mem[(32 * arg1.length) + 196] = Mask(96, 160, _20) >> 160
        require ext_code.size(storeAddress)
        call storeAddress.transfer(address rg1, address rg2, uint256 rg3) with:
             gas gas_remaining - 710 wei
            args msg.sender, address(_18), Mask(96, 160, _20) >> 160
        require ext_call.success
        mem[(32 * arg1.length) + 128] = Mask(96, 160, _20) >> 160
        emit Transfer((Mask(96, 160, _20) >> 160), msg.sender, address(_18));
        idx = idx + 1
        continue 
}

function approveAndCall(address arg1, uint256 arg2, bytes arg3) {
    mem[128 len arg3.length] = arg3[all]
    require ext_code.size(storeAddress)
    call storeAddress.sync(address rg1) with:
         gas gas_remaining - 710 wei
        args msg.sender
    require ext_call.success
    require ext_code.size(storeAddress)
    call storeAddress.sync(address rg1) with:
         gas gas_remaining - 710 wei
        args arg1
    require ext_call.success
    require ext_code.size(storeAddress)
    call storeAddress.sync(address rg1) with:
         gas gas_remaining - 710 wei
        args msg.sender
    require ext_call.success
    require ext_code.size(storeAddress)
    call storeAddress.sync(address rg1) with:
         gas gas_remaining - 710 wei
        args arg1
    require ext_call.success
    require currentState <= 4
    require currentState == 1
    require arg1 != this.address
    require ext_code.size(storeAddress)
    call storeAddress.setAllowance(address rg1, address rg2, uint256 rg3) with:
         gas gas_remaining - 710 wei
        args msg.sender, address(arg1), arg2
    require ext_call.success
    emit Approval(arg2, msg.sender, arg1);
    mem[ceil32(arg3.length) + 128] = Mask(32, 224, sha3('receiveApproval(address,uint256,', 'address,bytes)'))
    mem[ceil32(arg3.length) + 228 len ceil32(arg3.length)] = arg3[all], mem[arg3.length + 128 len ceil32(arg3.length) - arg3.length]
    if not arg3.length % 32:
        call arg1 with:
           funct Mask(32, 224, sha3('receiveApproval(address,uint256,', 'address,bytes)')) >> 224
             gas gas_remaining - 25710 wei
            args msg.sender, arg2, address(this.address), Mask(8 * arg3.length, -(8 * arg3.length) + 256, arg3[all], mem[arg3.length + 128 len ceil32(arg3.length) - arg3.length]) << (8 * arg3.length) - 256
    else:
        mem[floor32(arg3.length) + ceil32(arg3.length) + 228] = mem[floor32(arg3.length) + ceil32(arg3.length) + -(arg3.length % 32) + 260 len arg3.length % 32]
        call arg1 with:
           funct Mask(32, 224, sha3('receiveApproval(address,uint256,', 'address,bytes)')) >> 224
             gas gas_remaining - 25710 wei
            args msg.sender, arg2, address(this.address), Mask(8 * ceil32(arg3.length), -(8 * ceil32(arg3.length)) + 256, arg3[all], mem[arg3.length + 128 len ceil32(arg3.length) - arg3.length]) << (8 * ceil32(arg3.length)) - 256, mem[(2 * ceil32(arg3.length)) + 228 len floor32(arg3.length) + -ceil32(arg3.length) + 32]
    require ext_call.success
    return 1
}



}

contract main {


// =======================  Init code  ======================


address stor0;
array of uint256 stor1;
array of uint256 stor2;
array of uint256 stor3;
uint8 stor4;
address stor4; offset 8
address stor5;
uint256 stor6;
uint256 stor7;
uint256 stor8;
mapping of uint256 stor9;
mapping of uint8 stor11;

function _fallback() payable {
    mem[128] = 'Token 0.1'
    bool(stor1.length) = 0
    stor1.length.field_1 = 9
    stor1.length.field_8 = 'Token 0.1' / 256
    idx = 0
    while stor1.length + 31 / 32 > idx:
        stor1[idx].field_0 = 0
        idx = idx + 1
        continue 
    require not msg.value
    mem[160 len -7007] = code.data[8513 len -7007]
    stor0 = msg.sender
    stor9[address(msg.sender)] = mem[256]
    stor9[address(mem[352])] = mem[288]
    stor9[address(mem[384])] = mem[320]
    require msg.sender == stor0
    if mem[364 len 20] == address(stor4.field_8):
        require block.timestamp >= stor6
    if mem[364 len 20] == stor5:
        require block.timestamp >= stor7
    stor11[address(mem[352])] = 1
    emit FrozenFunds(mem[364 len 20], 1);
    require msg.sender == stor0
    if mem[396 len 20] == address(stor4.field_8):
        require block.timestamp >= stor6
    if mem[396 len 20] == stor5:
        require block.timestamp >= stor7
    stor11[address(mem[384])] = 1
    emit FrozenFunds(mem[396 len 20], 1);
    stor8 = mem[256] + mem[288] + mem[320]
    stor6 = block.timestamp + (60 * mem[416])
    stor7 = block.timestamp + (60 * mem[448])
    address(stor4.field_8) = mem[364 len 20]
    stor5 = mem[396 len 20]
    stor2[] = Array(len=mem[mem[160] + 160], data=mem[mem[160] + 192 len mem[mem[160] + 160]])
    stor3[] = Array(len=mem[mem[224] + 160], data=mem[mem[224] + 192 len mem[mem[224] + 160]])
    uint8(stor4.field_0) = mem[223 len 1]
    return code.data[1506 len 7007]
}



// =====================  Runtime code  =====================


address owner;
array of uint256 standard;
array of uint256 name;
array of uint256 symbol;
uint8 decimals;
address the120address; offset 8
address the365address;
uint256 deadline120;
uint256 deadline365;
uint256 totalSupply;
mapping of uint256 balanceOf;
mapping of uint256 allowance;
mapping of uint8 stor11;

function name() {
    return name[0 len name.length]
}

function totalSupply() {
    return totalSupply
}

function decimals() {
    return decimals
}

function deadline120() {
    return deadline120
}

function standard() {
    return standard[0 len standard.length]
}

function the365address() {
    return the365address
}

function balanceOf(address arg1) {
    return balanceOf[arg1]
}

function deadline365() {
    return deadline365
}

function owner() {
    return owner
}

function the120address() {
    return the120address
}

function symbol() {
    return symbol[0 len symbol.length]
}

function frozenAccount(address arg1) {
    return bool(stor11[arg1])
}

function allowance(address arg1, address arg2) {
    return allowance[arg1][arg2]
}

function _fallback() payable {
    revert
}

function transferOwnership(address arg1) {
    require msg.sender == owner
    owner = arg1
}

function approve(address arg1, uint256 arg2) {
    allowance[address(msg.sender)][address(arg1)] = arg2
    emit Approval(arg2, msg.sender, arg1);
    return 1
}

function burn(uint256 arg1) {
    require not stor11[address(msg.sender)]
    if not arg1:
        return 0
    if balanceOf[address(msg.sender)] < arg1:
        return 0
    balanceOf[address(msg.sender)] -= arg1
    totalSupply -= arg1
    emit Transfer(arg1, msg.sender, 0);
    return 1
}

function freezeAccount(address arg1, bool arg2) {
    require msg.sender == owner
    if arg1 == the120address:
        require block.timestamp >= deadline120
    if arg1 == the365address:
        require block.timestamp >= deadline365
    stor11[address(arg1)] = uint8(arg2)
    emit FrozenFunds(address(arg1), arg2);
}

function transfer(address arg1, uint256 arg2) {
    if not arg2:
        return 0
    if balanceOf[address(msg.sender)] < arg2:
        return 0
    require balanceOf[address(arg1)] + arg2 >= balanceOf[address(arg1)]
    require not stor11[address(msg.sender)]
    require not stor11[address(arg1)]
    balanceOf[address(msg.sender)] -= arg2
    balanceOf[address(arg1)] += arg2
    emit Transfer(arg2, msg.sender, arg1);
    return 1
}

function burnFrom(address arg1, uint256 arg2) {
    require msg.sender == owner
    require not stor11[address(msg.sender)]
    require not stor11[address(arg1)]
    if not arg2:
        return 0
    if balanceOf[address(arg1)] < arg2:
        return 0
    require arg2 <= allowance[address(arg1)][address(msg.sender)]
    balanceOf[address(arg1)] -= arg2
    allowance[address(arg1)][address(msg.sender)] -= arg2
    totalSupply -= arg2
    emit Transfer(arg2, arg1, 0);
    return 1
}

function transferFrom(address arg1, address arg2, uint256 arg3) {
    require not stor11[address(arg1)]
    require not stor11[address(arg2)]
    if balanceOf[address(arg1)] < arg3:
        return 0
    require balanceOf[address(arg2)] + arg3 >= balanceOf[address(arg2)]
    require arg3 <= allowance[address(arg1)][address(msg.sender)]
    balanceOf[address(arg1)] -= arg3
    balanceOf[address(arg2)] += arg3
    allowance[address(arg1)][address(msg.sender)] -= arg3
    emit Transfer(arg3, arg1, arg2);
    return 1
}

function approveAndCall(address arg1, uint256 arg2, bytes arg3) {
    mem[128 len arg3.length] = arg3[all]
    allowance[address(msg.sender)][address(arg1)] = arg2
    emit Approval(arg2, msg.sender, arg1);
    mem[ceil32(arg3.length) + 128] = 0x8f4ffcb100000000000000000000000000000000000000000000000000000000
    mem[ceil32(arg3.length) + 132] = msg.sender
    mem[ceil32(arg3.length) + 164] = arg2
    mem[ceil32(arg3.length) + 196] = this.address
    mem[ceil32(arg3.length) + 228] = 128
    mem[ceil32(arg3.length) + 260] = arg3.length
    if not arg3.length:
        if not arg3.length % 32:
            if ext_code.size(arg1):
                call arg1.receiveApproval(address rg1, uint256 rg2, address rg3, bytes rg4) with:
                     gas gas_remaining - 710 wei
                    args 0, uint32(msg.sender), arg2, address(this.address), 128, arg3.length, mem[ceil32(arg3.length) + 292 len arg3.length]
                if ext_call.success:
                    return 1
        else:
            mem[floor32(arg3.length) + ceil32(arg3.length) + 292] = mem[floor32(arg3.length) + ceil32(arg3.length) + -(arg3.length % 32) + 324 len arg3.length % 32]
            if ext_code.size(arg1):
                call arg1.receiveApproval(address rg1, uint256 rg2, address rg3, bytes rg4) with:
                     gas gas_remaining - 710 wei
                    args msg.sender, arg2, address(this.address), Array(len=arg3.length, data=mem[ceil32(arg3.length) + 292 len floor32(arg3.length) + 32])
                if ext_call.success:
                    return 1
    else:
        mem[ceil32(arg3.length) + 292] = mem[128]
        mem[ceil32(arg3.length) + 324 len floor32(arg3.length - 1)] = mem[160 len floor32(arg3.length - 1)]
        if ext_code.size(arg1):
            call arg1.receiveApproval(address rg1, uint256 rg2, address rg3, bytes rg4) with:
                 gas gas_remaining - 710 wei
                args msg.sender, arg2, address(this.address), Array(len=arg3.length, data=mem[ceil32(arg3.length) + 292 len arg3.length])
            if ext_call.success:
                return 1
    revert
}



}

contract main {


// =======================  Init code  ======================


address stor1;
array of uint256 stor2;
array of uint256 stor3;
uint8 stor4;
array of uint256 stor5;
uint256 stor6;
uint256 stor7;
uint8 stor8;
mapping of uint256 stor9;

function _fallback() payable {
    bool(stor5.length) = 0
    stor5.length.field_1 = 4
    stor5.length.field_8 = 'v0.1' / 256
    idx = 0
    while stor5.length + 31 / 32 > idx:
        stor5[idx].field_0 = 0
        idx = idx + 1
        continue 
    require not msg.value
    stor1 = msg.sender
    stor8 = 1
    stor6 = 87 * 10^15
    stor7 = stor6
    stor9[address(msg.sender)] = stor6
    bool(stor2.length) = 0
    stor2.length.field_1 = 20
    stor2.length.field_8 = 'iEx.ec Network Token' / 256
    idx = 0
    while stor2.length + 31 / 32 > idx:
        stor2[idx].field_0 = 0
        idx = idx + 1
        continue 
    bool(stor3.length) = 0
    stor3.length.field_1 = 3
    stor3.length.field_8 = 'RLC' / 256
    idx = 0
    while stor3.length + 31 / 32 > idx:
        stor3[idx].field_0 = 0
        idx = idx + 1
        continue 
    stor4 = 9
    return code.data[665 len 5281]
}



// =====================  Runtime code  =====================


address owner;
array of uint256 name;
array of uint256 symbol;
uint8 decimals;
array of uint256 version;
uint256 initialSupply;
uint256 totalSupply;
uint8 stor8;
mapping of uint256 balanceOf;
mapping of uint256 allowance;

function name() {
    return name[0 len name.length]
}

function totalSupply() {
    return totalSupply
}

function decimals() {
    return decimals
}

function initialSupply() {
    return initialSupply
}

function version() {
    return version[0 len version.length]
}

function balanceOf(address arg1) {
    return balanceOf[address(arg1)]
}

function owner() {
    return owner
}

function symbol() {
    return symbol[0 len symbol.length]
}

function locked() {
    return bool(stor8)
}

function allowance(address arg1, address arg2) {
    return allowance[address(arg1)][address(arg2)]
}

function _fallback() {
    revert
}

function unlock() {
    if msg.sender == owner:
        stor8 = 0
}

function transferOwnership(address arg1) {
    if msg.sender == owner:
        if arg1:
            owner = arg1
}

function approve(address arg1, uint256 arg2) {
    allowance[address(msg.sender)][address(arg1)] = arg2
    emit Approval(arg2, msg.sender, arg1);
    return 1
}

function burn(uint256 arg1) {
    require arg1 <= balanceOf[address(msg.sender)]
    balanceOf[address(msg.sender)] -= arg1
    require arg1 <= totalSupply
    totalSupply -= arg1
    emit Transfer(arg1, msg.sender, 0);
    return 1
}

function transfer(address arg1, uint256 arg2) {
    if owner != msg.sender:
        require not stor8
    require arg2 <= balanceOf[address(msg.sender)]
    balanceOf[address(msg.sender)] -= arg2
    require balanceOf[address(arg1)] + arg2 >= balanceOf[address(arg1)]
    require balanceOf[address(arg1)] + arg2 >= arg2
    balanceOf[address(arg1)] += arg2
    emit Transfer(arg2, msg.sender, arg1);
    return 1
}

function transferFrom(address arg1, address arg2, uint256 arg3) {
    if owner != msg.sender:
        require not stor8
    require balanceOf[address(arg2)] + arg3 >= balanceOf[address(arg2)]
    require balanceOf[address(arg2)] + arg3 >= arg3
    balanceOf[address(arg2)] += arg3
    require arg3 <= balanceOf[address(arg1)]
    balanceOf[address(arg1)] -= arg3
    require arg3 <= allowance[address(arg1)][address(msg.sender)]
    allowance[address(arg1)][address(msg.sender)] -= arg3
    emit Transfer(arg3, arg1, arg2);
    return 1
}

function sub_aff77004(?) {
    mem[128 len arg3.length] = arg3[all]
    mem[ceil32(arg3.length) + 128] = arg4.length
    mem[ceil32(arg3.length) + 160 len arg4.length] = arg4[all]
    allowance[address(msg.sender)][address(arg1)] = arg2
    emit Approval(arg2, msg.sender, arg1);
    mem[ceil32(arg3.length) + ceil32(arg4.length) + 160] = 0x487a804300000000000000000000000000000000000000000000000000000000
    mem[ceil32(arg3.length) + ceil32(arg4.length) + 164] = msg.sender
    mem[ceil32(arg3.length) + ceil32(arg4.length) + 196] = arg2
    mem[ceil32(arg3.length) + ceil32(arg4.length) + 228] = this.address
    mem[ceil32(arg3.length) + ceil32(arg4.length) + 260] = 160
    mem[ceil32(arg3.length) + ceil32(arg4.length) + 324] = arg3.length
    if not arg3.length:
        mem[ceil32(arg3.length) + ceil32(arg4.length) + 292] = arg3.length + 192
        mem[arg3.length + ceil32(arg3.length) + ceil32(arg4.length) + 356] = arg4.length
        if not arg4.length:
            if not arg4.length % 32:
                if ext_code.size(arg1):
                    call arg1.0x487a8043 with:
                         gas gas_remaining - 50 wei
                        args msg.sender, arg2, address(this.address), Array(len=arg3.length, data=mem[ceil32(arg3.length) + ceil32(arg4.length) + 356 len arg4.length + arg3.length + 32]), arg3.length + 192
                    if ext_call.success:
            else:
                mem[floor32(arg4.length) + arg3.length + ceil32(arg3.length) + ceil32(arg4.length) + 388] = mem[floor32(arg4.length) + arg3.length + ceil32(arg3.length) + ceil32(arg4.length) + -(arg4.length % 32) + 420 len arg4.length % 32]
                if ext_code.size(arg1):
                    call arg1.0x487a8043 with:
                         gas gas_remaining - 50 wei
                        args msg.sender, arg2, address(this.address), Array(len=arg3.length, data=mem[ceil32(arg3.length) + ceil32(arg4.length) + 356 len floor32(arg4.length) + arg3.length + 64]), arg3.length + 192
                    if ext_call.success:
        else:
            mem[arg3.length + ceil32(arg3.length) + ceil32(arg4.length) + 388] = mem[ceil32(arg3.length) + 160]
            mem[arg3.length + ceil32(arg3.length) + ceil32(arg4.length) + 420 len floor32(arg4.length - 1)] = mem[ceil32(arg3.length) + 192 len floor32(arg4.length - 1)]
            if not arg4.length % 32:
                if ext_code.size(arg1):
                    call arg1.0x487a8043 with:
                         gas gas_remaining - 50 wei
                        args msg.sender, arg2, address(this.address), Array(len=arg3.length, data=mem[ceil32(arg3.length) + ceil32(arg4.length) + 356 len arg4.length + arg3.length + 32]), arg3.length + 192
                    if ext_call.success:
            else:
                mem[floor32(arg4.length) + arg3.length + ceil32(arg3.length) + ceil32(arg4.length) + 388] = mem[floor32(arg4.length) + arg3.length + ceil32(arg3.length) + ceil32(arg4.length) + -(arg4.length % 32) + 420 len arg4.length % 32]
                if ext_code.size(arg1):
                    call arg1.0x487a8043 with:
                         gas gas_remaining - 50 wei
                        args msg.sender, arg2, address(this.address), Array(len=arg3.length, data=mem[ceil32(arg3.length) + ceil32(arg4.length) + 356 len arg3.length + 32], mem[ceil32(arg3.length) + 160], mem[ceil32(arg3.length) + ceil32(arg4.length) + arg3.length + 420 len floor32(arg4.length)]), arg3.length + 192
                    if ext_call.success:
    else:
        mem[ceil32(arg3.length) + ceil32(arg4.length) + 356] = mem[128]
        mem[ceil32(arg3.length) + ceil32(arg4.length) + 388 len floor32(arg3.length - 1)] = mem[160 len floor32(arg3.length - 1)]
        mem[ceil32(arg3.length) + ceil32(arg4.length) + 292] = arg3.length + 192
        mem[arg3.length + ceil32(arg3.length) + ceil32(arg4.length) + 356] = arg4.length
        if arg4.length:
            mem[arg3.length + ceil32(arg3.length) + ceil32(arg4.length) + 388] = mem[ceil32(arg3.length) + 160]
            mem[arg3.length + ceil32(arg3.length) + ceil32(arg4.length) + 420 len floor32(arg4.length - 1)] = mem[ceil32(arg3.length) + 192 len floor32(arg4.length - 1)]
        if not arg4.length % 32:
            if ext_code.size(arg1):
                call arg1.0x487a8043 with:
                     gas gas_remaining - 50 wei
                    args msg.sender, arg2, address(this.address), Array(len=arg3.length, data=mem[128], mem[ceil32(arg3.length) + ceil32(arg4.length) + 388 len arg4.length + arg3.length]), arg3.length + 192
                if ext_call.success:
        else:
            mem[floor32(arg4.length) + arg3.length + ceil32(arg3.length) + ceil32(arg4.length) + 388] = mem[floor32(arg4.length) + arg3.length + ceil32(arg3.length) + ceil32(arg4.length) + -(arg4.length % 32) + 420 len arg4.length % 32]
            if ext_code.size(arg1):
                call arg1.0x487a8043 with:
                     gas gas_remaining - 50 wei
                    args msg.sender, arg2, address(this.address), Array(len=arg3.length, data=mem[128], mem[ceil32(arg3.length) + ceil32(arg4.length) + 388 len floor32(arg4.length) + arg3.length + 32]), arg3.length + 192
                if ext_call.success:
    revert
}



}

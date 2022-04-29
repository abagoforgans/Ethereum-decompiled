contract main {


// =======================  Init code  ======================


address stor0;

function _fallback() payable {
    stor0 = msg.sender
    return code.data[83 len 4512]
}



// =====================  Runtime code  =====================


address owner;
address stor1;
mapping of uint256 stor2;
mapping of address stor99;

function owner() {
    return owner
}

function kill() {
    require msg.sender == owner
    selfdestruct(owner)
}

function _fallback() payable {
    revert
}

function sub_9466178a(?) {
    require msg.sender == owner
    stor1 = arg1
}

function setOwner(address arg1) {
    require msg.sender == owner
    owner = arg1
}

function getBalance(address arg1) {
    if owner != msg.sender:
        require msg.sender == stor1
    return stor2[address(arg1)]
}

function increaseBalance(address arg1, uint256 arg2) {
    if owner != msg.sender:
        require msg.sender == stor1
    stor2[address(arg1)] += arg2
    return arg2
}

function setBalance(address arg1, uint256 arg2) {
    if owner != msg.sender:
        require msg.sender == stor1
    stor2[address(arg1)] = arg2
    return stor2[address(arg1)]
}

function decreaseBalance(address arg1, uint256 arg2) {
    if owner != msg.sender:
        require msg.sender == stor1
    require stor2[address(arg1)] >= arg2
    stor2[address(arg1)] -= arg2
    return arg2
}

function withdraw(address arg1, uint256 arg2) {
    require msg.sender == owner
    require arg1
    if arg2:
        call arg1 with:
           value arg2 wei
             gas 2300 * is_zero(value) wei
    else:
        call arg1 with:
           value eth.balance(this.address) wei
             gas 2300 * is_zero(value) wei
    require ext_call.success
}

function transfer(address arg1, address arg2, uint256 arg3) {
    if owner != msg.sender:
        require msg.sender == stor1
    require stor2[address(arg1)] >= arg3
    if owner != msg.sender:
        require msg.sender == stor1
    require stor2[address(arg1)] >= arg3
    stor2[address(arg1)] -= arg3
    if owner != msg.sender:
        require msg.sender == stor1
    stor2[address(arg2)] += arg3
    return arg3
}

function getSetting(string arg1) {
    mem[128 len arg1.length] = arg1[all]
    if owner != msg.sender:
        require msg.sender == stor1
    mem[ceil32(arg1.length) + 128 len floor32(arg1.length)] = call.data[arg1 + 36 len floor32(arg1.length)]
    mem[ceil32(arg1.length) + floor32(arg1.length) + -(arg1.length % 32) + 160 len arg1.length % 32] = mem[-(arg1.length % 32) + floor32(arg1.length) + 160 len arg1.length % 32]
    mem[arg1.length + ceil32(arg1.length) + 128] = 3
    mem[ceil32(arg1.length) + 128] = uint256(stor[mem[ceil32(arg1.length) + floor32(arg1.length) + 128 len (arg1.length % 32) + 32]][call.data[arg1 + 36 len floor32(arg1.length)]])
    return memory
      from ceil32(arg1.length) + 128
       len 32
}

function getSettingAddress(string arg1) {
    mem[128 len arg1.length] = arg1[all]
    if owner != msg.sender:
        require msg.sender == stor1
        if owner != msg.sender:
            require msg.sender == stor1
    mem[ceil32(arg1.length) + 128 len floor32(arg1.length)] = call.data[arg1 + 36 len floor32(arg1.length)]
    mem[ceil32(arg1.length) + floor32(arg1.length) + -(arg1.length % 32) + 160 len arg1.length % 32] = mem[-(arg1.length % 32) + floor32(arg1.length) + 160 len arg1.length % 32]
    mem[arg1.length + ceil32(arg1.length) + 128] = 3
    mem[ceil32(arg1.length) + 128] = address(stor[mem[ceil32(arg1.length) + floor32(arg1.length) + 128 len (arg1.length % 32) + 32]][call.data[arg1 + 36 len floor32(arg1.length)]])
    return memory
      from ceil32(arg1.length) + 128
       len 32
}

function setSetting(string arg1, uint256 arg2) {
    mem[128 len arg1.length] = arg1[all]
    if owner != msg.sender:
        require msg.sender == stor1
    mem[ceil32(arg1.length) + 128 len floor32(arg1.length)] = call.data[arg1 + 36 len floor32(arg1.length)]
    mem[ceil32(arg1.length) + floor32(arg1.length) + -(arg1.length % 32) + 160 len arg1.length % 32] = mem[-(arg1.length % 32) + floor32(arg1.length) + 160 len arg1.length % 32]
    mem[arg1.length + ceil32(arg1.length) + 128] = 3
    uint256(stor[mem[ceil32(arg1.length) + floor32(arg1.length) + 128 len (arg1.length % 32) + 32]][call.data[arg1 + 36 len floor32(arg1.length)]]) = arg2
    mem[ceil32(arg1.length) + 128 len floor32(arg1.length)] = call.data[arg1 + 36 len floor32(arg1.length)]
    mem[ceil32(arg1.length) + floor32(arg1.length) + -(arg1.length % 32) + 160 len arg1.length % 32] = mem[-(arg1.length % 32) + floor32(arg1.length) + 160 len arg1.length % 32]
    mem[arg1.length + ceil32(arg1.length) + 128] = 3
    mem[ceil32(arg1.length) + 128] = uint256(stor[mem[ceil32(arg1.length) + floor32(arg1.length) + 128 len (arg1.length % 32) + 32]][call.data[arg1 + 36 len floor32(arg1.length)]])
    return memory
      from ceil32(arg1.length) + 128
       len 32
}



}

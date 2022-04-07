contract main {


// =======================  Init code  ======================


address stor0;

function _fallback() payable {
    stor0 = msg.sender
    return code.data[49 len 2811]
}



// =====================  Runtime code  =====================


address owner;
uint8 stor1; offset 160
address stor1;
address controllerAddress;
mapping of uint256 balanceOf;
mapping of uint256 allowance;
uint256 totalSupply;

function totalSupply() {
    return totalSupply
}

function balanceOf(address arg1) {
    return balanceOf[arg1]
}

function owner() {
    return owner
}

function finalized() {
    return bool(uint8(stor1.field_160))
}

function allowance(address arg1, address arg2) {
    return allowance[arg1][arg2]
}

function controller() {
    return controllerAddress
}

function _fallback() payable {
    revert
}

function finalize() {
    require owner == msg.sender
    uint8(stor1.field_160) = 1
}

function changeOwner(address arg1) {
    require owner == msg.sender
    address(stor1.field_0) = arg1
}

function acceptOwnership() {
    if address(stor1.field_0) == msg.sender:
        owner = address(stor1.field_0)
}

function setController(address arg1) {
    require owner == msg.sender
    require not uint8(stor1.field_160)
    controllerAddress = arg1
}

function approve(address arg1, address arg2, uint256 arg3) {
    require controllerAddress == msg.sender
    if arg3:
        if allowance[address(arg1)][address(arg2)]:
            return 0
    allowance[address(arg1)][address(arg2)] = arg3
    return 1
}

function decreaseApproval(address arg1, address arg2, uint256 arg3) {
    require controllerAddress == msg.sender
    if arg3 <= allowance[address(arg1)][address(arg2)]:
        allowance[address(arg1)][address(arg2)] -= arg3
    else:
        allowance[address(arg1)][address(arg2)] = 0
    return 1
}

function increaseApproval(address arg1, address arg2, uint256 arg3) {
    require controllerAddress == msg.sender
    require arg3 + allowance[address(arg1)][address(arg2)] >= allowance[address(arg1)][address(arg2)]
    require arg3 + allowance[address(arg1)][address(arg2)] >= arg3
    allowance[address(arg1)][address(arg2)] += arg3
    return 1
}

function mint(address arg1, uint256 arg2) {
    require owner == msg.sender
    require not uint8(stor1.field_160)
    require arg2 + balanceOf[address(arg1)] >= balanceOf[address(arg1)]
    require arg2 + balanceOf[address(arg1)] >= arg2
    balanceOf[address(arg1)] += arg2
    require arg2 + totalSupply >= totalSupply
    require arg2 + totalSupply >= arg2
    totalSupply += arg2
}

function transfer(address arg1, address arg2, uint256 arg3) {
    require controllerAddress == msg.sender
    if balanceOf[address(arg1)] < arg3:
        return 0
    require arg3 <= balanceOf[address(arg1)]
    balanceOf[address(arg1)] -= arg3
    require arg3 + balanceOf[arg2] >= balanceOf[arg2]
    require arg3 + balanceOf[arg2] >= arg3
    balanceOf[address(arg2)] = arg3 + balanceOf[arg2]
    return 1
}

function transferFrom(address arg1, address arg2, address arg3, uint256 arg4) {
    require controllerAddress == msg.sender
    if balanceOf[address(arg2)] < arg4:
        return 0
    if allowance[address(arg2)][address(arg1)] < arg4:
        return 0
    require arg4 + balanceOf[address(arg3)] >= balanceOf[address(arg3)]
    require arg4 + balanceOf[address(arg3)] >= arg4
    balanceOf[address(arg3)] += arg4
    require arg4 <= balanceOf[arg2]
    balanceOf[address(arg2)] = balanceOf[arg2] - arg4
    require arg4 <= allowance[address(arg2)][address(arg1)]
    allowance[address(arg2)][address(arg1)] -= arg4
    return 1
}

function multiMint(uint256[] arg1) {
    mem[128 len 32 * arg1.length] = call.data[arg1 + 36 len 32 * arg1.length]
    require owner == msg.sender
    require not uint8(stor1.field_160)
    s = 0
    s = 0
    idx = 0
    while idx < arg1.length:
        require idx < arg1.length
        require idx < arg1.length
        require owner == msg.sender
        require not uint8(stor1.field_160)
        require mem[(32 * idx) + 148 len 12] + balanceOf[mem[(32 * idx) + 128 len 20]] >= balanceOf[mem[(32 * idx) + 128 len 20]]
        require mem[(32 * idx) + 148 len 12] + balanceOf[mem[(32 * idx) + 128 len 20]] >= mem[(32 * idx) + 148 len 12]
        mem[0] = mem[(32 * idx) + 128 len 20]
        mem[32] = 3
        balanceOf[Mask(160, 96, mem[(32 * idx) + 128])] = mem[(32 * idx) + 148 len 12] + balanceOf[mem[(32 * idx) + 128 len 20]]
        require mem[(32 * idx) + 148 len 12] + totalSupply >= totalSupply
        require mem[(32 * idx) + 148 len 12] + totalSupply >= mem[(32 * idx) + 148 len 12]
        totalSupply += mem[(32 * idx) + 148 len 12]
        s = mem[(32 * idx) + 148 len 12]
        s = mem[(32 * idx) + 128 len 20]
        idx = idx + 1
        continue 
}



}

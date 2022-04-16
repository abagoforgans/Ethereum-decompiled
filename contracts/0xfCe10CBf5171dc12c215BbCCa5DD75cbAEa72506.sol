contract main {


// =======================  Init code  ======================


address stor0;
uint256 stor1;

function _fallback() payable {
    stor1 = 0
    require not msg.value
    stor0 = msg.sender
    require stor0 == msg.sender
    if code.data[2260 len 20]:
        stor0 = code.data[2260 len 20]
    return code.data[191 len 2057]
}



// =====================  Runtime code  =====================


const name = 'Kyber Genesis Token'

const decimals = 0

const symbol = 'KGT'

const allowance(address arg1, address arg2) = 0


uint16 stor0;
address stor0; offset 16
address owner;
uint256 totalSupply;
mapping of uint256 balanceOf;

function totalSupply() {
    return totalSupply
}

function balanceOf(address arg1) {
    return balanceOf[arg1]
}

function owner() {
    return owner
}

function _fallback() payable {
    revert
}

function approve(address arg1, uint256 arg2) {
    revert
}

function transfer(address arg1, uint256 arg2) {
    revert
}

function transferFrom(address arg1, address arg2, uint256 arg3) {
    revert
}

function transferOwnership(address arg1) {
    require owner == msg.sender
    if arg1:
        owner = arg1
}

function burn() {
    require 1 == balanceOf[address(msg.sender)]
    emit Transfer(1, msg.sender, 0);
    balanceOf[address(msg.sender)] = 0
    totalSupply--
}

function endMinting() {
    require owner == msg.sender
    uint16(stor0.field_0) = 57005
    Mask(144, 0, stor0.field_16) = 0
    emit EndMinting(block.timestamp);
}

function emergencyERC20Drain(address arg1, uint256 arg2) {
    require ext_code.size(arg1)
    call arg1.0xa9059cbb with:
         gas gas_remaining - 710 wei
        args 0x3eb01b3391ea15ce752d01cf3d3f09dec596f650, arg2
    require ext_call.success
}

function mint(address[] arg1) {
    mem[128 len 32 * arg1.length] = call.data[arg1 + 36 len 32 * arg1.length]
    require owner == msg.sender
    s = 0
    idx = 0
    s = 0
    while idx < arg1.length:
        require idx < arg1.length
        _11 = mem[(32 * idx) + 128]
        mem[0] = mem[(32 * idx) + 140 len 20]
        mem[32] = 2
        if balanceOf[mem[(32 * idx) + 140 len 20]]:
            s = mem[(32 * idx) + 128]
            idx = idx + 1
            s = s
            continue 
        mem[(32 * arg1.length) + 128] = 1
        emit Transfer(1, 0, address(_11));
        mem[0] = address(_11)
        mem[32] = 2
        balanceOf[address(_11)] = 1
        s = _11
        idx = idx + 1
        s = s + 1
        continue 
    totalSupply += s
}



}

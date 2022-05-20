contract main {


// =======================  Init code  ======================


address stor0;
mapping of uint256 stor1;
uint256 stor2;

function _fallback() {
    stor0 = msg.sender
    stor2 = 777777777777 * 10^18
    stor1[address(msg.sender)] = 777777777777 * 10^18
    emit Transfer(777777777777 * 10^18, 0, msg.sender);
    return code.data[147 len 1333]
}



// =====================  Runtime code  =====================


const name = '@.@ secret.dacsee.io @.@'

const decimals = 18

const symbol = Array(len=35, data=0xe280a2cda1cb98e38781e280a2cda1cb98207365637265742e6461637365652e, 'io ', Mask(24, -256, 0xe280a2cda1cb98e38781e280a2cda1cb98207365637265742e6461637365652e, 'io ') << 256)

const INITIAL_SUPPLY = 777777777777 * 10^18


address owner;
mapping of uint256 balanceOf;
uint256 totalSupply;

function totalSupply() {
    return totalSupply
}

function balanceOf(address arg1) {
    return balanceOf[address(arg1)]
}

function owner() {
    return owner
}

function _fallback() payable {
    revert
}

function transferOwnership(address arg1) {
    require owner == msg.sender
    owner = arg1
    return 1
}

function transfer(address arg1, uint256 arg2) {
    require arg1
    require arg2 <= balanceOf[address(msg.sender)]
    balanceOf[address(msg.sender)] -= arg2
    balanceOf[arg1] += arg2
    emit Transfer(arg2, msg.sender, arg1);
    return 1
}

function sub_b042b6ce(?) {
    mem[128 len 32 * arg1.length] = call.data[arg1 + 36 len 32 * arg1.length]
    idx = 0
    while idx < arg1.length:
        require idx < arg1.length
        _13 = mem[(32 * idx) + 128]
        mem[(32 * arg1.length) + 128] = 77777 * 10^11
        emit Transfer(77777 * 10^11, msg.sender, address(_13));
        idx = idx + 1
        continue 
    return 1
}



}

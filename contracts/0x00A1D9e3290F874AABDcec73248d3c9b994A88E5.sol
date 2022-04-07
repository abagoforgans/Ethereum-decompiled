contract main {


// =======================  Init code  ======================


address stor0;
address stor1;
array of uint256 stor2;
uint8 stor3;
bool stor4;
uint256 stor4;
uint256 stor4; offset 1
uint256 stor4;
mapping of uint256 stor5;

function _fallback() {
    mem[96 len -3071] = code.data[3740 len -3071]
    mem[64] = -2975
    stor0 = msg.sender
    stor1 = mem[108 len 20]
    stor2[] = Array(len=mem[mem[128] + 96], data=mem[mem[128] + 128 len mem[mem[128] + 96]])
    stor3 = mem[191 len 1]
    uint256(stor4.field_0) = mem[192]
    if msg.sender == stor0:
        stor5[address(msg.sender)] += uint256(stor4.field_0)
        bool(stor4.field_0) = 0
        uint255(stor4.field_1) = uint255(stor4.field_0)
    return code.data[669 len 3071]
}



// =====================  Runtime code  =====================


const approve(address arg1, uint256 arg2) = 0

const allowance(address arg1, address arg2) = 0


address minterAddress;
address sub_e16d1cb3Address;
array of uint256 symbol;
uint8 decimals;
uint256 totalSupply;
mapping of uint256 balanceOf;

function minter() {
    return minterAddress
}

function totalSupply() {
    return totalSupply
}

function decimals() {
    return decimals
}

function balanceOf(address arg1) {
    return balanceOf[arg1]
}

function symbol() {
    return symbol[0 len symbol.length]
}

function sub_e16d1cb3(?) {
    return sub_e16d1cb3Address
}

function _fallback() {
    revert
}

function sub_9848cd0a(?) {
    if msg.sender == minterAddress:
        sub_e16d1cb3Address = arg1
}

function mint(address arg1, uint256 arg2) {
    if msg.sender == minterAddress:
        balanceOf[address(msg.sender)] += arg2
        totalSupply += arg2
}

function transfer(address arg1, uint256 arg2) {
    require balanceOf[address(msg.sender)] >= arg2
    require balanceOf[address(arg1)] + arg2 >= balanceOf[address(arg1)]
    balanceOf[address(msg.sender)] -= arg2
    balanceOf[address(arg1)] += arg2
    emit Transfer(arg2, msg.sender, arg1);
}

function transferFrom(address arg1, address arg2, uint256 arg3) {
    require balanceOf[address(arg1)] >= arg3
    require balanceOf[address(arg2)] + arg3 >= balanceOf[address(arg2)]
    require ext_code.size(sub_e16d1cb3Address)
    call sub_e16d1cb3Address.0xfe6f5fec with:
         gas gas_remaining - 710 wei
        args arg1
    require ext_call.success
    if ext_call.return_data[0] <= 0:
        return 0
    balanceOf[address(arg1)] -= arg3
    balanceOf[address(arg2)] += arg3
    emit Transfer(arg3, arg1, arg2);
    return 1
}



}

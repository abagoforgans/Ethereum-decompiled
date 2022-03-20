contract main {


// =======================  Init code  ======================


uint256 stor3;
uint256 stor4;
uint256 stor5;
uint8 stor6; offset 160
uint128 stor6; offset 168
address stor6;

function _fallback() payable {
    stor5 = 5 * 10^17
    stor3 = 0
    address(stor6.field_0) = msg.sender
    uint8(stor6.field_160) = 0
    Mask(88, 0, stor6.field_168) = Mask(88, 168, msg.sender) >> 168
    stor4 = 0
    return code.data[74 len 3876]
}



// =====================  Runtime code  =====================


mapping of struct sub_e9d5934b;
array of uint256 sub_303eaeed;
mapping of uint256 balance;
uint256 length;
uint256 minPrice;
uint8 stor6; offset 160
uint128 stor6; offset 160
address stor6;

function getBalance() payable {
    return balance[address(msg.sender)]
}

function length() payable {
    return length
}

function sub_303eaeed(?) payable {
    return sub_303eaeed[arg1][0 len sub_303eaeed[arg1].length]
}

function getMinPrice() payable {
    return minPrice
}

function sub_e9d5934b(?) payable {
    return sub_e9d5934b[arg1[all]].field_0
}

function sub_7cd9ffe3(?) payable {
    if address(stor6.field_0) != msg.sender:
    selfdestruct(address(stor6.field_0))
}

function debug() payable {
    return tx.origin, address(stor6.field_0), msg.sender
}

function _fallback() payable {
    if msg.value > 0:
        balance[address(msg.sender)] += msg.value
}

function setMinPrice(uint256 arg1) payable {
    if msg.sender == address(stor6.field_0):
        minPrice = arg1
}

function disable(bool arg1) payable {
    if msg.sender == address(stor6.field_0):
        Mask(96, 0, stor6.field_160) = Mask(96, 0, arg1)
}

function cash() payable {
    if msg.sender == address(stor6.field_0):
        call address(stor6.field_0) with:
           value eth.balance(this.address) wei
             gas 0 wei
}

function sub_085bca76(?) payable {
    if msg.sender == address(stor6.field_0):
        if sub_e9d5934b[arg1[all]].field_0:
            call sub_e9d5934b[arg1[all]].field_0.remove(uint256 rg1) with:
                 gas gas_remaining - 25050 wei
                args arg2
            require ext_call.success
}

function register(string arg1, string arg2, uint256 arg3) payable {
    if uint8(stor6.field_160):
        return -1
    if arg1.length >= 64:
        return -2
    if msg.sender == address(stor6.field_0):
        mem[ceil32(arg1.length) + ceil32(arg2.length) + 160 len arg1.length] = arg1[all]
        mem[arg1.length + ceil32(arg1.length) + ceil32(arg2.length) + 160] = 0
    else:
        if balance[address(msg.sender)] < minPrice:
            return -3
        if balance[address(msg.sender)] < arg3:
            return -3
        mem[ceil32(arg1.length) + ceil32(arg2.length) + 160 len arg1.length] = arg1[all]
        mem[arg1.length + ceil32(arg1.length) + ceil32(arg2.length) + 160] = 0
        if address(stor6.field_0) != msg.sender:
            balance[address(msg.sender)] -= arg3
    if sub_e9d5934b[arg1[all]].field_0 != 0:
        call sub_e9d5934b[arg1[all]].field_0.add(string rg1, uint256 rg2) with:
             gas gas_remaining - 25050 wei
            args Array(len=arg2.length, data=arg2[all]), arg3
        require ext_call.success
    else:
        mem[ceil32(arg1.length) + ceil32(arg2.length) + 1942 len arg2.length] = arg2[all]
        if not arg2.length % 32:
            create contract with 0 wei
                            code: code.data[2190 len 1686], Array(len=arg3, data=arg2.length, arg2[all])
        else:
            mem[floor32(arg2.length) + ceil32(arg1.length) + ceil32(arg2.length) + 1942] = mem[floor32(arg2.length) + ceil32(arg1.length) + ceil32(arg2.length) + -(arg2.length % 32) + 1974 len arg2.length % 32]
            create contract with 0 wei
                            code: code.data[2190 len 1686], Array(len=arg3, data=arg2.length, arg2[all], mem[ceil32(arg1.length) + ceil32(arg2.length) + arg2.length + 1942 len -(arg2.length % 32) + 32])
        sub_e9d5934b[arg1[all]].field_0 = sub_e9d5934b[arg1[all]].field_160
        sub_303eaeed[stor3][] = Array(len=arg1.length, data=arg1[all])
        length++
    return 0
}



}

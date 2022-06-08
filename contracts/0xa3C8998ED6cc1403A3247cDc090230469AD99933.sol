contract main {




// =====================  Runtime code  =====================


uint256 name;
uint8 decimals;
uint256 symbol;
array of address stor3;
mapping of struct sub_90adbf61;
mapping of uint256 stor5;

function name() {
    return name
}

function decimals() {
    return decimals
}

function sub_90adbf61(?) {
    require calldata.size - 4 >= 32
    return sub_90adbf61[address(arg1)].field_512
}

function symbol() {
    return symbol
}

function sub_c6fa5992(?) {
    require calldata.size - 4 >= 32
    return sub_90adbf61[address(arg1)].field_256, sub_90adbf61[address(arg1)].field_512
}

function _fallback() payable {
    revert
}

function addToken(address arg1, uint256 arg2) {
    require calldata.size - 4 >= 64
    sub_90adbf61[address(arg1)].field_512 += arg2
    stor5[address(arg1)][address(msg.sender)] += arg2
    return arg2
}

function subToken(address arg1, uint256 arg2) {
    require calldata.size - 4 >= 64
    require sub_90adbf61[address(arg1)].field_512 >= arg2
    sub_90adbf61[address(arg1)].field_512 -= arg2
    stor5[address(arg1)][address(msg.sender)] -= arg2
    return arg2
}

function sub_db817232(?) {
    require calldata.size - 4 >= 96
    sub_90adbf61[address(arg1)].field_0 = arg1
    sub_90adbf61[address(arg1)].field_256 = arg2
    sub_90adbf61[address(arg1)].field_512 = arg3
    stor5[address(arg1)][address(msg.sender)] = arg3
    stor3.length++
    stor3[stor3.length] = arg1
    emit 0x3fd47ad3: arg2
}

function transfer(address arg1, uint256 arg2, address arg3) {
    require calldata.size - 4 >= 96
    require sub_90adbf61[address(arg1)].field_512 >= arg2
    require stor5[address(arg1)][address(msg.sender)] >= arg2
    sub_90adbf61[address(arg1)].field_512 -= arg2
    sub_90adbf61[address(arg3)].field_512 += arg2
    stor5[address(arg1)][address(msg.sender)] -= arg2
    stor5[address(arg3)][address(msg.sender)] += arg2
    return sub_90adbf61[address(arg1)].field_512, sub_90adbf61[address(arg3)].field_512
}



}

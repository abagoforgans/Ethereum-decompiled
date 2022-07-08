contract main {




// =====================  Runtime code  =====================


#
#  - deposit(address arg1, uint256 arg2)
#
mapping of uint256 balanceOf;
array of address holders;
uint256 totalToken;
address stor3;
mapping of uint256 sub_07028170;
mapping of address inviterOf;
mapping of uint8 stor6;
uint256 price;
uint8 stor8;
uint256 height;
uint256 sub_2c831633;
uint256 sub_0f2903e6;
array of uint256 sub_00b5e965;
mapping of uint256 sub_52176262;
mapping of uint256 sub_4fa7dbf9;
mapping of uint256 sub_654f0c7e;
mapping of uint256 sub_f1a98abc;
uint256 step;
uint256 sub_c7284539;
mapping of uint8 stor27;
array of uint256 sub_dc937217;
uint256 devCut;
address addr1;
address addr2;
address addr3;
address sub_fd7808f6Address;
address stor34;
address sub_b97a82beAddress;

function sub_00b5e965(?) {
    require arg1 < 7
    return sub_00b5e965[arg1]
}

function sub_07028170(?) {
    return sub_07028170[arg1]
}

function sub_0d1e0d59(?) {
    return sub_0d1e0d59[arg1].field_1024
}

function height() {
    return height
}

function sub_0f2903e6(?) {
    return sub_0f2903e6
}

function sub_1528833a(?) {
    require arg1 >= 0
    require arg2 >= 0
    require arg2 < sub_0d1e0d59[arg1].field_2048
    return stor[('array', 8, ('map', ('param', 'arg1'), ('name', 'sub_0d1e0d59', 19))) + arg2].field_0
}

function holders(uint256 arg1) {
    require arg1 < holders.length
    return holders[arg1]
}

function sub_2c831633(?) {
    return sub_2c831633
}

function qualified(address arg1) {
    return bool(stor6[arg1])
}

function sub_3e28077d(?) {
    require arg2 >= 0
    require arg2 < sub_0d1e0d59[arg1].field_1280
    require arg2 < sub_0d1e0d59[arg1].field_1280
    return stor[('array', 5, ('map', ('param', 'arg1'), ('name', 'sub_0d1e0d59', 19))) + arg2].field_0
}

function sub_3e5602cf(?) {
    return sub_0d1e0d59[arg1].field_0, 
           sub_0d1e0d59[arg1].field_256,
           sub_0d1e0d59[arg1].field_512,
           sub_0d1e0d59[arg1].field_768,
           sub_0d1e0d59[arg1].field_1536,
           sub_0d1e0d59[arg1].field_1792,
           sub_0d1e0d59[arg1].field_2304
}

function sub_45db2f69(?) {
    return sub_0d1e0d59[arg1].field_2048
}

function sub_4fa7dbf9(?) {
    return sub_4fa7dbf9[arg1]
}

function sub_52176262(?) {
    return sub_52176262[arg1]
}

function sub_5650f13a(?) {
    require arg2 >= 0
    require arg2 < sub_0d1e0d59[arg1].field_1024
    require arg2 < sub_0d1e0d59[arg1].field_1024
    require 0 < stor[('array', 4, ('map', ('param', 'arg1'), ('name', 'sub_0d1e0d59', 19))) + arg2].field_0
    require arg2 < sub_0d1e0d59[arg1].field_1024
    require 1 < stor[('array', 4, ('map', ('param', 'arg1'), ('name', 'sub_0d1e0d59', 19))) + arg2].field_0
    return stor[sha3(('array', 4, ('map', ('param', 'arg1'), ('name', 'sub_0d1e0d59', 19))) + arg2)].field_0, 
           stor[sha3(('array', 4, ('map', ('param', 'arg1'), ('name', 'sub_0d1e0d59', 19))) + arg2)].field_256
}

function totalToken() {
    return totalToken
}

function sub_654f0c7e(?) {
    return sub_654f0c7e[arg1]
}

function balanceOf(address arg1) {
    return balanceOf[arg1]
}

function sub_7c51e311(?) {
    return bool(stor8)
}

function banAddress(address arg1) {
    return bool(stor27[arg1])
}

function addr2() {
    return addr2
}

function addr3() {
    return addr3
}

function devCut() {
    return devCut
}

function price() {
    return price
}

function sub_b97a82be(?) {
    return sub_b97a82beAddress
}

function sub_c7284539(?) {
    return sub_c7284539
}

function inviterOf(address arg1) {
    return inviterOf[arg1]
}

function sub_dc937217(?) {
    require arg2 < 4
    return sub_dc937217[arg1][arg2]
}

function step() {
    return step
}

function addr1() {
    return addr1
}

function sub_f1a98abc(?) {
    return sub_f1a98abc[arg1]
}

function sub_fd7808f6(?) {
    return sub_fd7808f6Address
}

function wipeAll() {
    if stor3 != msg.sender:
        revert with 0, 'only owner can do this'
    selfdestruct(stor3)
}

function _fallback() payable {
  stop
}

function sub_d97cdf13(?) {
    if stor3 != msg.sender:
        revert with 0, 'only owner can do this'
    stor8 = 1
}

function emergencyClose() {
    if stor3 != msg.sender:
        revert with 0, 'only owner can do this'
    stor8 = 0
}

function sub_7017bb0d(?) {
    if stor3 != msg.sender:
        revert with 0, 'only owner can do this'
    stor27[address(arg1)] = 0
}

function sub_707ad5a3(?) {
    if stor3 != msg.sender:
        revert with 0, 'only owner can do this'
    stor27[address(arg1)] = 1
}

function sub_d6782e9a(?) {
    require balanceOf[address(msg.sender)] >= 10^18
    stor6[address(msg.sender)] = 1
    emit 0xcb7345c2: msg.sender
}

function activate() {
    if stor3 != msg.sender:
        revert with 0, 'only owner can do this'
    height = 0
    sub_c7284539 = 0
    sub_0d1e0d59[stor25].field_1536 = block.timestamp
    sub_0d1e0d59[stor25].field_1792 = block.timestamp + (24 * 3600)
}

function withdrawEth(uint256 arg1) {
    if stor3 != msg.sender:
        revert with 0, 'only owner can do this'
    call stor3 with:
       value arg1 wei
         gas 2300 * is_zero(value) wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function sub_63a7f0b5(?) {
    if stor3 != msg.sender:
        revert with 0, 'only owner can do this'
    call sub_fd7808f6Address with:
       value devCut wei
         gas 2300 * is_zero(value) wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    devCut = 0
}

function sub_73ebd586(?) {
    require not stor27[address(msg.sender)]
    if ext_code.size(msg.sender):
        revert with 0, 'sorry humans only'
    require sub_07028170[address(msg.sender)] >= arg1
    require ext_code.size(stor34)
    call stor34.0xa9059cbb with:
         gas gas_remaining wei
        args msg.sender, arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    sub_07028170[address(msg.sender)] -= arg1
}



}

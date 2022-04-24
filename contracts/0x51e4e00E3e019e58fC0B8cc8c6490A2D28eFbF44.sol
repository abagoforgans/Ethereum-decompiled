contract main {


// =======================  Init code  ======================


address stor0;
uint256 stor802;
uint256 stor803;

function _fallback() payable {
    stor0 = 0xee06bddaffa56a303718de53a5bc347efbe4c68f
    stor802 = 0
    stor803 = 39529
    require not msg.value
    return code.data[127 len 5275]
}



// =====================  Runtime code  =====================


address developerAddress;
mapping of uint256 stor1;
array of uint256 stor3;
array of uint256 stor4;
array of struct stor5;
array of struct stor6;
array of uint256 stor7;
array of uint8 stor8;
array of uint256 stor9;
array of uint256 stor99;
uint256 stor802;
uint256 week_in_blocs;

function getPoolName(uint256 arg1) {
    return stor[(8 * arg1) + 2][0 len stor[(8 * arg1) + 2].length]
}

function developer() {
    return developerAddress
}

function week_in_blocs() {
    return week_in_blocs
}

function _fallback() payable {
    revert
}

function change_delay(uint256 arg1) {
    require msg.sender == developerAddress
    week_in_blocs = arg1
}

function setToken(uint256 arg1, address arg2) {
    require msg.sender == developerAddress
    require arg1 <= stor802
    require arg1 < 100
    address(stor6[arg1].field_0) = arg2
}

function setSale(uint256 arg1, address arg2) {
    require msg.sender == developerAddress
    require arg1 <= stor802
    require arg1 < 100
    require not address(stor5[arg1].field_0)
    address(stor5[arg1].field_0) = arg2
}

function contribute(uint256 arg1) payable {
    require arg1 <= stor802
    require arg1 < 100
    require not stor8[arg1]
    if stor7[arg1] + msg.value > stor4[arg1]:
        require not stor4[arg1]
    stor7[arg1] += msg.value
    stor1[arg1][address(msg.sender)] += msg.value
}

function refund(uint256 arg1) {
    require arg1 <= stor802
    require arg1 < 100
    require not stor8[arg1]
    stor1[arg1][address(msg.sender)] = 0
    stor7[arg1] -= stor1[arg1][address(msg.sender)]
    call msg.sender with:
       value stor1[arg1][address(msg.sender)] wei
         gas 2300 * is_zero(value) wei
    require ext_call.success
}

function buyTokens(uint256 arg1) {
    require msg.sender == developerAddress
    require arg1 <= stor802
    require arg1 < 100
    require stor7[arg1] >= stor3[arg1]
    if stor7[arg1] > stor4[arg1]:
        require not stor4[arg1]
    require not stor8[arg1]
    require address(stor5[arg1].field_0)
    stor9[arg1] = block.number
    stor8[arg1] = 1
    call address(stor5[arg1].field_0) with:
       value stor7[arg1] wei
         gas 2300 * is_zero(value) wei
    require ext_call.success
}

function createPool(string arg1, uint256 arg2, uint256 arg3) {
    require msg.sender == developerAddress
    require stor802 < 100
    stor[sha3((8 * stor802) + 2)][] = Array(len=arg1.length, data=arg1[all])
    stor3[stor802] = arg2
    stor4[stor802] = arg3
    address(stor5[stor802].field_0) = 0
    stor5[stor802].field_256 % 1 = 0
    address(stor6[stor802].field_0) = 0
    stor6[stor802].field_256 % 1 = 0
    stor7[stor802] = 0
    stor8[stor802] = 0
    stor9[stor802] = 0
    stor802++
}

function emergency_withdraw(uint256 arg1, address arg2) {
    require msg.sender == developerAddress
    require arg1 <= stor802
    require arg1 < 100
    require block.number >= stor9[arg1] + week_in_blocs
    require ext_code.size(arg2)
    call arg2.0x70a08231 with:
         gas gas_remaining - 710 wei
        args this.address
    require ext_call.success
    require ext_call.return_data[0]
    require ext_code.size(arg2)
    call arg2.0xa9059cbb with:
         gas gas_remaining - 710 wei
        args msg.sender, ext_call.return_data[0]
    require ext_call.success
    require ext_call.return_data[0]
}

function withdraw(uint256 arg1) {
    require arg1 <= stor802
    require arg1 < 100
    require stor8[arg1]
    require ext_code.size(address(stor6[arg1].field_0))
    call address(stor6[arg1].field_0).0x70a08231 with:
         gas gas_remaining - 710 wei
        args this.address
    require ext_call.success
    require ext_call.return_data[0]
    require stor7[arg1]
    stor7[arg1] -= stor1[arg1][address(msg.sender)]
    stor1[arg1][address(msg.sender)] = 0
    require ext_code.size(address(stor6[arg1].field_0))
    call address(stor6[arg1].field_0).0xa9059cbb with:
         gas gas_remaining - 710 wei
        args msg.sender, (stor1[arg1][address(msg.sender)] * ext_call.return_data[0] / stor7[arg1]) - (stor1[arg1][address(msg.sender)] * ext_call.return_data[0] / stor7[arg1] / 100)
    require ext_call.success
    require ext_call.return_data[0]
    require ext_code.size(address(stor6[arg1].field_0))
    call address(stor6[arg1].field_0).0xa9059cbb with:
         gas gas_remaining - 710 wei
        args developerAddress, stor1[arg1][address(msg.sender)] * ext_call.return_data[0] / stor7[arg1] / 100
    require ext_call.success
    require ext_call.return_data[0]
}



}

contract main {




// =====================  Runtime code  =====================


#
#  - removeAdmin(address arg1)
#  - changeRequiredDevSignatures(uint256 arg1)
#  - addAdmin(address arg1, bytes32 arg2, bool arg3)
#  - changeRequiredSignatures(uint256 arg1)
#  - checkData(bytes32 arg1)
#  - checkSignersByName(bytes32 arg1, uint256 arg2, uint256 arg3, uint256 arg4)
#
address stor0;
mapping of struct stor1;
mapping of struct adminName;
uint256 adminCount;
uint256 devCount;
uint256 requiredSignatures;
uint256 requiredDevSignatures;

function isDev(address arg1) {
    return bool(adminName[address(arg1)].field_8)
}

function isAdmin(address arg1) {
    return bool(adminName[address(arg1)].field_0)
}

function adminCount() {
    return adminCount
}

function requiredSignatures() {
    return requiredSignatures
}

function adminName(address arg1) {
    return adminName[address(arg1)].field_256
}

function devCount() {
    return devCount
}

function requiredDevSignatures() {
    return requiredDevSignatures
}

function setup(address arg1) {
    if bool(adminName[address(msg.sender)].field_8) != 1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'onlyDevs failed - msg.sender is not a dev'
    require not stor0
    stor0 = arg1
}

function _fallback() payable {
    require ext_code.size(stor0)
    call stor0.0xd0e30db0 with:
       value eth.balance(this.address) wei
         gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
}

function deleteAnyProposal(bytes32 arg1) {
    if bool(adminName[address(msg.sender)].field_8) != 1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'onlyDevs failed - msg.sender is not a dev'
    mem[212] = uint64(this.address), Mask(96, 160, arg1) >> 160 or Mask(96, 160, mem[212])
    idx = 0
    s = 0
    while idx < stor1[arg1][mem[212 len 20]].field_256:
        stor1[arg1][mem[212 len 20]][2][stor1[arg1][mem[212 len 20]][3][idx].field_0].field_0 = 0
        stor1[arg1][mem[212 len 20]][3][idx].field_0 = 0
        mem[0] = sha3(arg1, mem[212 len 20])
        mem[32] = 1
        idx = idx + 1
        s = stor1[arg1][mem[212 len 20]][3][idx].field_0
        continue 
    stor1[arg1][mem[212 len 20]].field_0 = 0
    stor1[arg1][mem[212 len 20]].field_256 = 0
}



}

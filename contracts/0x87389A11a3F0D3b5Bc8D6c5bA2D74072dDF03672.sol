contract main {




// =====================  Runtime code  =====================


#
#  - sub_76ebf223(?)
#
address owner;
array of uint256 sub_224ad029;
address managerAddress;
address feeDestinationAddress;
address signerAddress;
address sub_4e67ddf4Address;
address rbacAddress;
address sub_28b6ceb8Address;
mapping of struct sub_df2d5426;

function sub_224ad029(?) {
    return sub_224ad029[0 len sub_224ad029.length]
}

function signer() {
    return signerAddress
}

function sub_28b6ceb8(?) {
    return sub_28b6ceb8Address
}

function manager() {
    return managerAddress
}

function sub_4e67ddf4(?) {
    return sub_4e67ddf4Address
}

function owner() {
    return owner
}

function rbac() {
    return rbacAddress
}

function feeDestination() {
    return feeDestinationAddress
}

function sub_df2d5426(?) {
    return sub_df2d5426[arg1].field_0, sub_df2d5426[arg1].field_256
}

function _fallback() payable {
    revert
}

function sub_d3be6051(?) {
    require msg.sender == owner
    rbacAddress = arg1
}

function sub_c53f16c9(?) {
    require msg.sender == owner
    sub_28b6ceb8Address = arg1
}

function setSigner(address arg1) {
    require msg.sender == owner
    signerAddress = arg1
}

function setManager(address arg1) {
    require msg.sender == owner
    managerAddress = arg1
}

function setAssetSource(address arg1) {
    require msg.sender == owner
    sub_4e67ddf4Address = arg1
}

function setFeeDestination(address arg1) {
    require msg.sender == owner
    require arg1
    feeDestinationAddress = arg1
}

function transferOwnership(address arg1) {
    require msg.sender == owner
    require arg1
    emit OwnershipTransferred(owner, arg1);
    owner = arg1
}

function remove(bytes32 arg1) {
    require msg.sender == managerAddress
    require sub_df2d5426[arg1].field_0
    sub_df2d5426[arg1].field_0 = 0
    sub_df2d5426[arg1].field_256 = 0
    emit 0xce21ebb5: arg1, block.timestamp
}

function sub_ffecab31(?) {
    require msg.sender == owner
    sub_224ad029.length = (2 * ('cd', 4).length) + 1
    s = 0
    idx = cd[4] + 36
    while cd[4] + ('cd', 4).length + 36 > idx:
        sub_224ad029[s] = cd[idx]
        s = s + 1
        idx = idx + 32
        continue 
    idx = Mask(251, 0, ('cd', 4).length + 31) >> 5
    while sub_224ad029.length + 31 / 32 > idx:
        sub_224ad029[idx] = 0
        idx = idx + 1
        continue 
}

function fulfill(bytes32 arg1, uint256 arg2) {
    require msg.sender == managerAddress
    require sub_df2d5426[arg1].field_0
    sub_df2d5426[arg1].field_0 = 0
    sub_df2d5426[arg1].field_256 = 0
    require ext_code.size(sub_df2d5426[arg1].field_256)
    call sub_df2d5426[arg1].field_256.0x23b872dd with:
         gas gas_remaining wei
        args sub_4e67ddf4Address, sub_df2d5426[arg1].field_0, arg2
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    emit 0x944ae9ad: arg1, arg2, block.timestamp
}



}

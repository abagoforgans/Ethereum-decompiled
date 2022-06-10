contract main {




// =====================  Runtime code  =====================


uint256 rake;
mapping of uint256 sub_e63d47e4;
address adminAddress;

function rake() {
    return rake
}

function sub_e63d47e4(?) {
    require calldata.size - 4 >= 32
    return sub_e63d47e4[arg1]
}

function admin() {
    return adminAddress
}

function _fallback() payable {
    revert
}

function deposit() payable {
    sub_e63d47e4[msg.sender] += msg.value
    return 1
}

function changeRake(uint256 arg1) {
    require calldata.size - 4 >= 32
    if adminAddress != msg.sender:
        require msg.sender == 0x2beae7bde74018968d55b463fc6f5cbf0d5cc4a9
    rake = arg1
    return 1
}

function changeAdmin(address arg1) {
    require calldata.size - 4 >= 32
    if adminAddress != msg.sender:
        require msg.sender == 0x2beae7bde74018968d55b463fc6f5cbf0d5cc4a9
    adminAddress = arg1
    return 1
}

function transferLoss(uint256 arg1, address arg2) {
    require calldata.size - 4 >= 64
    if adminAddress != msg.sender:
        require msg.sender == 0x2beae7bde74018968d55b463fc6f5cbf0d5cc4a9
    sub_e63d47e4[address(arg2)] -= arg1
    return 1
}

function transferWinnings(uint256 arg1, address arg2) {
    require calldata.size - 4 >= 64
    if adminAddress != msg.sender:
        require msg.sender == 0x2beae7bde74018968d55b463fc6f5cbf0d5cc4a9
    sub_e63d47e4[address(arg2)] += arg1
    return 1
}

function withdraw(uint256 arg1, address arg2) {
    require calldata.size - 4 >= 64
    if adminAddress != msg.sender:
        require msg.sender == 0x2beae7bde74018968d55b463fc6f5cbf0d5cc4a9
    require arg1 >= sub_e63d47e4[address(arg2)]
    sub_e63d47e4[address(arg2)] -= arg1
    call arg2 with:
       value arg1 wei
         gas 2300 * is_zero(value) wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    return 1
}



}

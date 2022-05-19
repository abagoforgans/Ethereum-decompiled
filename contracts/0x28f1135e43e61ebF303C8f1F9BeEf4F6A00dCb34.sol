contract main {




// =====================  Runtime code  =====================


uint8 status;
uint256 platformName;
address adminAddress;
uint256 lockBalance;
address tokenAddress;
address xCPluginAddress;

function getToken() {
    return tokenAddress
}

function getXCPlugin() {
    return xCPluginAddress
}

function getStatus() {
    return status
}

function getAdmin() {
    return adminAddress
}

function getPlatformName() {
    return platformName
}

function lockBalance() {
    return lockBalance
}

function _fallback() payable {
    revert
}

function setStatus(uint8 arg1) {
    require msg.sender == adminAddress
    require arg1 <= 3
    if status != arg1:
        status = arg1
}

function setToken(address arg1) {
    require msg.sender == adminAddress
    require arg1
    if tokenAddress != arg1:
        tokenAddress = arg1
}

function setAdmin(address arg1) {
    require msg.sender == adminAddress
    require arg1
    if adminAddress != arg1:
        adminAddress = arg1
}

function setXCPlugin(address arg1) {
    require msg.sender == adminAddress
    require arg1
    if xCPluginAddress != arg1:
        xCPluginAddress = arg1
}

function withdraw(address arg1, uint256 arg2) {
    require msg.sender == adminAddress
    require arg1
    require arg2 > 0
    require ext_code.size(tokenAddress)
    call tokenAddress.0x70a08231 with:
         gas gas_remaining wei
        args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require lockBalance <= ext_call.return_data[0]
    require ext_call.return_data[0] - lockBalance >= arg2
    require ext_code.size(tokenAddress)
    call tokenAddress.0xa9059cbb with:
         gas gas_remaining wei
        args address(arg1), arg2
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0]
}

function lock(address arg1, uint256 arg2) {
    require arg1
    if status != 2:
        require 3 == status
    require ext_code.size(xCPluginAddress)
    call xCPluginAddress.0x4e69d560 with:
         gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0]
    require arg2 > 0
    require ext_code.size(tokenAddress)
    call tokenAddress.0xdd62ed3e with:
         gas gas_remaining wei
        args msg.sender, this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] >= arg2
    require ext_code.size(tokenAddress)
    call tokenAddress.0x23b872dd with:
         gas gas_remaining wei
        args msg.sender, this.address, arg2
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0]
    require arg2 + lockBalance >= lockBalance
    lockBalance += arg2
    require ext_code.size(xCPluginAddress)
    call xCPluginAddress.0x277ea83d with:
         gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(xCPluginAddress)
    call xCPluginAddress.0xf1850af8 with:
         gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    emit Lock(ext_call.return_data[0], address(arg1), arg2, ext_call.return_data[0]);
}

function unlock(string arg1, address arg2, address arg3, uint256 arg4) {
    require arg3
    if status != 1:
        require 3 == status
    require ext_code.size(xCPluginAddress)
    call xCPluginAddress.0x4e69d560 with:
         gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0]
    require arg4 > 0
    require ext_code.size(xCPluginAddress)
    call xCPluginAddress.0x14b11875 with:
         gas gas_remaining wei
        args 0, 0, address(arg3), arg4, 128, arg1.length, arg1[all]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 64
    require ext_call.return_data[32]
    require not ext_call.return_data[0]
    require ext_code.size(tokenAddress)
    call tokenAddress.0x70a08231 with:
         gas gas_remaining wei
        args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] >= arg4
    require ext_code.size(tokenAddress)
    call tokenAddress.0xa9059cbb with:
         gas gas_remaining wei
        args address(arg3), arg4
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0]
    require ext_code.size(xCPluginAddress)
    call xCPluginAddress.0x921828ac with:
         gas gas_remaining wei
        args Array(len=arg1.length, data=arg1[all])
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0]
    require arg4 <= lockBalance
    lockBalance -= arg4
    require ext_code.size(xCPluginAddress)
    call xCPluginAddress.0x277ea83d with:
         gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(xCPluginAddress)
    call xCPluginAddress.0xf1850af8 with:
         gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    emit Unlock(string arg1, bytes32 arg2, address arg3, bytes32 arg4, bytes32 arg5):
                ext_call.return_data[0],
                ext_call.return_data[0],
                address(arg2),
                arg4,
                ext_call.return_data[0],
                arg1.length,
                arg1[all],
}



}

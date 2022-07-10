contract main {




// =====================  Runtime code  =====================


address getEthereumNodesAddress;
mapping of uint256 statistics;
address holdplatform_address;
uint256 holdplatform_balance;
mapping of uint8 stor4;
mapping of uint256 sub_6019e8d3;

function Statistics(address arg1, address arg2, uint256 arg3) {
    return statistics[arg1][arg2][arg3]
}

function GetEthereumNodes() {
    return getEthereumNodesAddress
}

function sub_6019e8d3(?) {
    return sub_6019e8d3[arg1]
}

function Holdplatform_balance() {
    return holdplatform_balance
}

function Holdplatform_address() {
    return holdplatform_address
}

function Holdplatform_status(address arg1) {
    return bool(stor4[arg1])
}

function _fallback() payable {
    revert
}

function sub_d6387b1e(?) {
    require msg.sender == getEthereumNodesAddress
    require arg3 <= 100000
    stor4[address(arg1)] = uint8(arg2)
    sub_6019e8d3[address(arg1)] = arg3
}

function Holdplatform_Deposit(uint256 arg1) {
    require msg.sender == getEthereumNodesAddress
    require arg1 > 0
    require ext_code.size(holdplatform_address)
    call holdplatform_address.0x23b872dd with:
         gas gas_remaining wei
        args msg.sender, address(this.address), arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0]
    require holdplatform_balance + arg1 >= holdplatform_balance
    holdplatform_balance += arg1
}

function sub_36c07a69(?) {
    require msg.sender == getEthereumNodesAddress
    require holdplatform_balance > 0
    require arg1 <= holdplatform_balance
    holdplatform_balance -= arg1
    require ext_code.size(holdplatform_address)
    call holdplatform_address.0x70a08231 with:
         gas gas_remaining wei
        args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] >= arg1
    require ext_code.size(holdplatform_address)
    call holdplatform_address.0xa9059cbb with:
         gas gas_remaining wei
        args msg.sender, arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
}

function sub_e61021e8(?) {
    require ext_code.size(arg1)
    call arg1.0x23b872dd with:
         gas gas_remaining wei
        args msg.sender, address(this.address), arg2
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0]
    if bool(stor4[address(arg1)]) == 1:
        require holdplatform_balance > 0
        if not sub_6019e8d3[address(arg1)]:
            require ext_code.size(holdplatform_address)
            call holdplatform_address.0x70a08231 with:
                 gas gas_remaining wei
                args this.address
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_call.return_data[0] >= 0
            require ext_code.size(holdplatform_address)
            call holdplatform_address.0xa9059cbb with:
                 gas gas_remaining wei
                args msg.sender, 0
        else:
            require sub_6019e8d3[address(arg1)]
            require sub_6019e8d3[address(arg1)] * arg2 / sub_6019e8d3[address(arg1)] == arg2
            require ext_code.size(holdplatform_address)
            call holdplatform_address.0x70a08231 with:
                 gas gas_remaining wei
                args this.address
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_call.return_data[0] >= sub_6019e8d3[address(arg1)] * arg2 / 100000
            require ext_code.size(holdplatform_address)
            call holdplatform_address.0xa9059cbb with:
                 gas gas_remaining wei
                args msg.sender, sub_6019e8d3[address(arg1)] * arg2 / 100000
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
}



}

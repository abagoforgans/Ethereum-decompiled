contract main {


// =======================  Init code  ======================


address stor0;
address stor1;
address stor2;
uint256 stor3;
uint256 stor4;
uint256 stor5;
uint256 stor6;
address stor9;

function _fallback() {
    stor0 = msg.sender
    stor1 = code.data[4258 len 20]
    stor2 = code.data[4290 len 20]
    stor3 = code.data[4310 len 32]
    stor4 = code.data[4342 len 32]
    stor5 = code.data[4374 len 32]
    stor6 = code.data[4406 len 32]
    stor9 = code.data[4258 len 20]
    return code.data[396 len 3850]
}



// =====================  Runtime code  =====================


address owner;
address tokenAddr;
address payerAddr;
uint256 projectId;
uint256 sub_9460916e;
uint256 sub_79fbf240;
uint256 sub_d693520d;
uint256 sub_0bc3d2b7;
uint256 paidAmount;
address tokenAddress;
mapping of struct sub_c5b00e76;
mapping of address sub_e76e9aaf;

function sub_0bc3d2b7(?) {
    return sub_0bc3d2b7
}

function paidAmount() {
    return paidAmount
}

function projectId() {
    return projectId
}

function tokenAddr() {
    return tokenAddr
}

function sub_79fbf240(?) {
    return sub_79fbf240
}

function owner() {
    return owner
}

function sub_9460916e(?) {
    return sub_9460916e
}

function sub_c5b00e76(?) {
    return sub_c5b00e76[arg1].field_0, sub_c5b00e76[arg1].field_256, sub_c5b00e76[arg1].field_512, sub_c5b00e76[arg1].field_768
}

function sub_d693520d(?) {
    return sub_d693520d
}

function payerAddr() {
    return payerAddr
}

function sub_e76e9aaf(?) {
    return sub_e76e9aaf[arg1]
}

function token() {
    return tokenAddress
}

function _fallback() payable {
    revert
}

function transferOwnership(address arg1) {
    require msg.sender == owner
    if arg1:
        owner = arg1
}

function projectBalance() {
    require ext_code.size(tokenAddress)
    call tokenAddress.0x70a08231 with:
         gas gas_remaining - 710 wei
        args this.address
    require ext_call.success
    return ext_call.return_data[0]
}

function sub_a908687e(?) {
    require msg.sender == owner
    require not sub_c5b00e76[arg1].field_512
    sub_c5b00e76[arg1].field_0 = arg1
    sub_c5b00e76[arg1].field_256 = arg3
    sub_c5b00e76[arg1].field_512 = block.timestamp
    sub_c5b00e76[arg1].field_768 = arg2
    require sub_0bc3d2b7 + arg3 >= sub_0bc3d2b7
    sub_0bc3d2b7 += arg3
    return 1
}

function refund() {
    require msg.sender == owner
    require ext_code.size(tokenAddress)
    call tokenAddress.0x70a08231 with:
         gas gas_remaining - 710 wei
        args this.address
    require ext_call.success
    if ext_call.return_data[0] <= 0:
        return 0
    require ext_code.size(tokenAddress)
    call tokenAddress.0xa9059cbb with:
         gas gas_remaining - 710 wei
        args payerAddr, ext_call.return_data[0]
    require ext_call.success
    return bool(ext_call.return_data[0])
}

function sub_efc1ac1e(?) {
    require msg.sender == owner
    require sub_c5b00e76[arg3].field_512
    require not sub_e76e9aaf[arg3]
    if block.timestamp < sub_c5b00e76[arg3].field_768:
        if sub_c5b00e76[arg3].field_256 / 100:
            require sub_c5b00e76[arg3].field_256 / 100
            require sub_c5b00e76[arg3].field_256 / 100 * sub_79fbf240 / sub_c5b00e76[arg3].field_256 / 100 == sub_79fbf240
        require sub_c5b00e76[arg3].field_256 + (sub_c5b00e76[arg3].field_256 / 100 * sub_79fbf240) >= sub_c5b00e76[arg3].field_256
        require ext_code.size(tokenAddress)
        call tokenAddress.0xa9059cbb with:
             gas gas_remaining - 710 wei
            args address(arg1), sub_c5b00e76[arg3].field_256 + (sub_c5b00e76[arg3].field_256 / 100 * sub_79fbf240)
        require ext_call.success
        if not ext_call.return_data[0]:
            return 0
        sub_e76e9aaf[arg3] = arg1
        require sub_c5b00e76[arg3].field_256 <= sub_0bc3d2b7
        sub_0bc3d2b7 -= sub_c5b00e76[arg3].field_256
        require paidAmount + sub_c5b00e76[arg3].field_256 + (sub_c5b00e76[arg3].field_256 / 100 * sub_79fbf240) >= paidAmount
        paidAmount = paidAmount + sub_c5b00e76[arg3].field_256 + (sub_c5b00e76[arg3].field_256 / 100 * sub_79fbf240)
        emit 0x69914159: address(arg1), sub_c5b00e76[arg3].field_256 + (sub_c5b00e76[arg3].field_256 / 100 * sub_79fbf240), arg2, arg3
    else:
        require sub_c5b00e76[arg3].field_768 + (24 * 3600) >= sub_c5b00e76[arg3].field_768
        if block.timestamp <= sub_c5b00e76[arg3].field_768 + (24 * 3600):
            require ext_code.size(tokenAddress)
            call tokenAddress.0xa9059cbb with:
                 gas gas_remaining - 710 wei
                args address(arg1), sub_c5b00e76[arg3].field_256
            require ext_call.success
            if not ext_call.return_data[0]:
                return 0
            sub_e76e9aaf[arg3] = arg1
            require sub_c5b00e76[arg3].field_256 <= sub_0bc3d2b7
            sub_0bc3d2b7 -= sub_c5b00e76[arg3].field_256
            require paidAmount + sub_c5b00e76[arg3].field_256 >= paidAmount
            paidAmount += sub_c5b00e76[arg3].field_256
            emit 0x69914159: address(arg1), sub_c5b00e76[arg3].field_256, arg2, arg3
        else:
            if sub_c5b00e76[arg3].field_256 / 100:
                require sub_c5b00e76[arg3].field_256 / 100
                require sub_c5b00e76[arg3].field_256 / 100 * sub_d693520d / sub_c5b00e76[arg3].field_256 / 100 == sub_d693520d
            require sub_c5b00e76[arg3].field_256 / 100 * sub_d693520d <= sub_c5b00e76[arg3].field_256
            require ext_code.size(tokenAddress)
            call tokenAddress.0xa9059cbb with:
                 gas gas_remaining - 710 wei
                args address(arg1), sub_c5b00e76[arg3].field_256 - (sub_c5b00e76[arg3].field_256 / 100 * sub_d693520d)
            require ext_call.success
            if not ext_call.return_data[0]:
                return 0
            sub_e76e9aaf[arg3] = arg1
            require sub_c5b00e76[arg3].field_256 <= sub_0bc3d2b7
            sub_0bc3d2b7 -= sub_c5b00e76[arg3].field_256
            require paidAmount + sub_c5b00e76[arg3].field_256 - (sub_c5b00e76[arg3].field_256 / 100 * sub_d693520d) >= paidAmount
            paidAmount = paidAmount + sub_c5b00e76[arg3].field_256 - (sub_c5b00e76[arg3].field_256 / 100 * sub_d693520d)
            emit 0x69914159: address(arg1), sub_c5b00e76[arg3].field_256 - (sub_c5b00e76[arg3].field_256 / 100 * sub_d693520d), arg2, arg3
    return 1
}



}

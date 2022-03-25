contract main {


// =======================  Init code  ======================


uint256 stor0;
uint256 stor1;
uint256 stor2;
uint256 stor3;
uint256 stor4;
uint256 stor10;

function _fallback() payable {
    require code.data[1594 len 32] != 0
    require code.data[1658 len 32] != 0
    require code.data[1594 len 32] <= 100
    require code.data[1658 len 32] <= 100
    stor0 = code.data[1530 len 32]
    stor2 = code.data[1594 len 32]
    stor1 = code.data[1562 len 32]
    stor3 = code.data[1658 len 32]
    stor4 = code.data[1626 len 32]
    stor10 = code.data[1690 len 32] or Mask(96, 160, stor10)
    return code.data[152 len 1378]
}



// =====================  Runtime code  =====================


address sub_f1b061a0Address;
uint256 freezePeriod;
uint256 initialAmount;
uint256 amount;
uint256 period;
uint256 initialVestAmount;
uint256 sub_600eedfe;
uint256 sub_9edf4e64;
uint256 sub_b74c18ea;
uint256 sub_17db78c2;
address stor10;

function freezePeriod() {
    return freezePeriod
}

function sub_17db78c2(?) {
    return sub_17db78c2
}

function sub_600eedfe(?) {
    return sub_600eedfe
}

function sub_9edf4e64(?) {
    return sub_9edf4e64
}

function amount() {
    return amount
}

function sub_b74c18ea(?) {
    return sub_b74c18ea
}

function initialVestAmount() {
    return initialVestAmount
}

function period() {
    return period
}

function sub_f1b061a0(?) {
    return sub_f1b061a0Address
}

function initialAmount() {
    return initialAmount
}

function _fallback() payable {
    revert 
}

function activate() {
    require ext_code.size(stor10)
    call stor10.0x70a08231 with:
         gas gas_remaining - 50 wei
        args this.address
    require ext_call.success
    require ext_call.return_data[0] > 0
    require sub_f1b061a0Address == msg.sender
    require 0 == sub_17db78c2
    sub_17db78c2 = block.number + freezePeriod
    require ext_code.size(stor10)
    call stor10.0x70a08231 with:
         gas gas_remaining - 50 wei
        args this.address
    require ext_call.success
    initialVestAmount = ext_call.return_data[0] * initialAmount / 100
    require ext_code.size(stor10)
    call stor10.0x70a08231 with:
         gas gas_remaining - 50 wei
        args this.address
    require ext_call.success
    sub_600eedfe = ext_call.return_data[0] * amount / 100
}

function vest() {
    require sub_f1b061a0Address == msg.sender
    require sub_b74c18ea != 0
    require sub_17db78c2 <= block.number
    require ext_code.size(stor10)
    call stor10.0x70a08231 with:
         gas gas_remaining - 50 wei
        args this.address
    require ext_call.success
    require ext_code.size(stor10)
    if ext_call.return_data[0] >= sub_600eedfe:
        call stor10.0xa9059cbb with:
             gas gas_remaining - 50 wei
            args sub_f1b061a0Address, sub_600eedfe
        require ext_call.success
        emit 0x612773fe: sub_600eedfe
    else:
        call stor10.0x70a08231 with:
             gas gas_remaining - 50 wei
            args this.address
        require ext_call.success
        require ext_code.size(stor10)
        call stor10.0xa9059cbb with:
             gas gas_remaining - 50 wei
            args sub_f1b061a0Address, ext_call.return_data[0]
        require ext_call.success
        emit 0x612773fe: ext_call.return_data[0]
    sub_17db78c2 = block.number + period
}

function initial() {
    require sub_f1b061a0Address == msg.sender
    require 0 == sub_b74c18ea
    require sub_17db78c2 <= block.number
    sub_b74c18ea = block.number
    sub_17db78c2 = period + block.number
    require ext_code.size(stor10)
    call stor10.0x70a08231 with:
         gas gas_remaining - 50 wei
        args this.address
    require ext_call.success
    require ext_code.size(stor10)
    if ext_call.return_data[0] >= initialVestAmount:
        call stor10.0xa9059cbb with:
             gas gas_remaining - 50 wei
            args sub_f1b061a0Address, initialVestAmount
        require ext_call.success
        emit 0x612773fe: initialVestAmount
    else:
        call stor10.0x70a08231 with:
             gas gas_remaining - 50 wei
            args this.address
        require ext_call.success
        require ext_code.size(stor10)
        call stor10.0xa9059cbb with:
             gas gas_remaining - 50 wei
            args sub_f1b061a0Address, ext_call.return_data[0]
        require ext_call.success
        emit 0x612773fe: ext_call.return_data[0]
}



}

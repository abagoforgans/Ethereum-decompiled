contract main {


// =======================  Init code  ======================


uint16 stor0;
uint256 stor0; offset 16

function _fallback() payable {
    uint16(stor0.field_0) = 0
    Mask(240, 0, stor0.field_16) = Mask(240, 0, msg.sender)
    return code.data[42 len 1126]
}



// =====================  Runtime code  =====================


const sub_4a731cff(?) = block.number >= 1920000

const sub_5f01b597(?) = 1920000

const sub_81842c2c(?) = 0xbf4ed7b27f1d666546e30d74d50d173d20bca754

const sub_b1ae4d8a(?) = 0xbb9bc244d798123fde783fcc1c72d3bb8c189413


uint8 stor0;
uint8 stor0; offset 8
address stor0;
address stor0; offset 16

function sub_b4901ca6(?) payable {
    return bool(uint8(stor0.field_0))
}

function teardown() payable {
    require address(stor0.field_16) == msg.sender
    call 0xbb9bc244d798123fde783fcc1c72d3bb8c189413.0x70a08231 with:
         gas gas_remaining - 25050 wei
        args this.address
    require ext_call.success
    if ext_call.return_data[0] > 0:
        call 0xbb9bc244d798123fde783fcc1c72d3bb8c189413.0x70a08231 with:
             gas gas_remaining - 25050 wei
            args this.address
        require ext_call.success
        call 0xbb9bc244d798123fde783fcc1c72d3bb8c189413.0xa9059cbb with:
             gas gas_remaining - 25050 wei
            args address(stor0.field_0), ext_call.return_data[0]
    selfdestruct(address(stor0.field_16))
}

function _fallback() payable {
  stop
}

function isForked() payable {
    if not uint8(stor0.field_0):
        return bool(uint8(stor0.field_0))
    return bool(uint8(stor0.field_8))
}

function sub_1155e193(?) payable {
    if block.number < 1920000:
        return 0
    if not uint8(stor0.field_0):
        call 0xbb9bc244d798123fde783fcc1c72d3bb8c189413.0x70a08231 with:
             gas gas_remaining - 25050 wei
            args this.address
        require ext_call.success
        require ext_call.return_data[0] > 0
        call 0xbb9bc244d798123fde783fcc1c72d3bb8c189413.approve(address rg1, uint256 rg2) with:
             gas gas_remaining - 25050 wei
            args address(this.address), ext_call.return_data[0]
        require ext_call.success
        require ext_call.return_data[0]
        uint8(stor0.field_0) = 1
        call 0xbf4ed7b27f1d666546e30d74d50d173d20bca754.withdraw() with:
             gas gas_remaining - 25050 wei
        require ext_call.success
        if eth.balance(this.address) > eth.balance(this.address):
            uint8(stor0.field_8) = 1
    return bool(uint8(stor0.field_8))
}



}

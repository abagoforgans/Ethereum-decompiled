contract main {


// =======================  Init code  ======================


address stor0;
uint256 stor2;

function _fallback() {
    stor0 = msg.sender
    stor2 = 0
    return code.data[105 len 9250]
}



// =====================  Runtime code  =====================


address owner;
mapping of struct invoice;
uint256 totalInvoices;
address sub_a9007ca0Address;

function getInvoiceAddress(uint256 arg1) {
    return invoice[arg1].field_256
}

function owner() {
    return owner
}

function sub_a9007ca0(?) {
    return sub_a9007ca0Address
}

function getTotalInvoices() {
    return totalInvoices
}

function _fallback() payable {
    revert
}

function transferOwnership(address arg1) {
    require msg.sender == owner
    owner = arg1
}

function sub_ed875a96(?) {
    require msg.sender == owner
    require ext_code.size(sub_a9007ca0Address)
    call sub_a9007ca0Address.0x8bb7e5e0 with:
         gas gas_remaining - 50 wei
        args arg1
    require ext_call.success
}

function refundInvoice(address arg1, address arg2) {
    require msg.sender == owner
    require ext_code.size(arg1)
    call arg1.refund(address rg1) with:
         gas gas_remaining - 50 wei
        args arg2
    require ext_call.success
}

function sub_965173cd(?) {
    require msg.sender == owner
    create contract with 0 wei
                    code: code.data[3548 len 5659], arg1, msg.sender
    require create.new_address
    sub_a9007ca0Address = address(create.new_address)
}

function sub_92f70af7(?) {
    require msg.sender == owner
    create contract with 0 wei
                    code: code.data[2376 len 1172], address(arg2)
    require create.new_address
    invoice[arg1].field_0 = msg.sender
    invoice[arg1].field_256 = address(create.new_address)
    invoice[arg1].field_512 = block.number
    totalInvoices++
}



}

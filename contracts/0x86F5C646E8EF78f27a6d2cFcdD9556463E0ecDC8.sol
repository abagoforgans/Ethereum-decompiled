contract main {


// =======================  Init code  ======================


address stor0;
uint256 stor2;

function _fallback() {
    stor0 = msg.sender
    stor2 = 0
    return code.data[105 len 3123]
}



// =====================  Runtime code  =====================


address owner;
mapping of struct invoice;
uint256 totalInvoices;

function getInvoiceAddress(uint256 arg1) {
    return invoice[arg1].field_256
}

function owner() {
    return owner
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

function refundInvoice(address arg1, address arg2) {
    require msg.sender == owner
    require ext_code.size(arg1)
    call arg1.refund(address rg1) with:
         gas gas_remaining - 710 wei
        args arg2
    require ext_call.success
}

function sub_92f70af7(?) {
    require msg.sender == owner
    create contract with 0 wei
                    code: code.data[1682 len 1398], address(arg2)
    require create.new_address
    invoice[arg1].field_0 = msg.sender
    invoice[arg1].field_256 = address(create.new_address)
    invoice[arg1].field_512 = block.number
    emit CreateInvoice(block.number, arg1, address(arg2), block.timestamp);
    totalInvoices++
}



}

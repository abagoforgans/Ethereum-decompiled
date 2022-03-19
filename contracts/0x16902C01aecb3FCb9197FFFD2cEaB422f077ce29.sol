contract main {


// =======================  Init code  ======================


uint256 stor0;

function _fallback() payable {
    stor0 = msg.sender or Mask(96, 160, stor0)
    return code.data[65 len 2298]
}



// =====================  Runtime code  =====================


address owner;
uint256 stor0;
mapping of struct invoice;
uint256 totalInvoices;

function getInvoiceAddress(uint256 arg1) payable {
    require msg.sender == address(owner)
    return invoice[arg1].field_256
}

function owner() payable {
    return address(owner)
}

function getTotalInvoices() payable {
    require msg.sender == address(owner)
    return totalInvoices
}

function _fallback() payable {
  stop
}

function transferOwnership(address arg1) payable {
    require msg.sender == address(owner)
    uint256(stor0) = arg1 or Mask(96, 160, uint256(stor0))
}

function sub_4fbe69fe(?) payable {
    require msg.sender == address(owner)
    create contract with 0 wei
                    code: code.data[1126 len 1172], 0x33edcb9334ead2ccb11824f09e8c09b9356531be
    totalInvoices++
    invoice[stor2 + 1].field_0 = msg.sender or Mask(96, 160, invoice[stor2 + 1].field_0)
    invoice[stor2 + 1].field_256 = create.new_address or Mask(96, 160, invoice[stor2 + 1].field_256)
    invoice[stor2 + 1].field_512 = block.number
}



}

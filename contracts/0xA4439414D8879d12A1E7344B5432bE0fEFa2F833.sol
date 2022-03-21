contract main {


// =======================  Init code  ======================


uint256 stor1;
uint256 stor2;

function _fallback() payable {
    stor2 = msg.sender or Mask(96, 160, stor2)
    stor1 = 0
    return code.data[74 len 1894]
}



// =====================  Runtime code  =====================


mapping of struct invoice;
uint256 totalInvoices;
address owner;
uint256 stor2;

function getInvoiceAddress(uint256 arg1) payable {
    return invoice[arg1].field_256
}

function owner() payable {
    return address(owner)
}

function getTotalInvoices() payable {
    return totalInvoices
}

function _fallback() payable {
  stop
}

function transferOwnership(address arg1) payable {
    require msg.sender == address(owner)
    uint256(stor2) = arg1 or Mask(96, 160, uint256(stor2))
}

function sub_92f70af7(?) payable {
    require msg.sender == address(owner)
    create contract with 0 wei
                    code: code.data[967 len 927], address(arg2)
    invoice[arg1].field_0 = msg.sender or Mask(96, 160, invoice[arg1].field_0)
    invoice[arg1].field_256 = create.new_address or Mask(96, 160, invoice[arg1].field_256)
    invoice[arg1].field_512 = block.number
    totalInvoices++
    return (totalInvoices + 1)
}



}

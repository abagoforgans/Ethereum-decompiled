contract main {


// =======================  Init code  ======================


uint256 stor0;
uint256 stor2;

function _fallback() payable {
    stor0 = msg.sender or Mask(96, 160, stor0)
    stor2 = 0
    return code.data[76 len 2080]
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

function sub_92f70af7(?) payable {
    require msg.sender == address(owner)
    create contract with 0 wei
                    code: code.data[1151 len 929], address(arg2)
    invoice[arg1].field_0 = msg.sender or Mask(96, 160, invoice[arg1].field_0)
    invoice[arg1].field_256 = create.new_address or Mask(96, 160, invoice[arg1].field_256)
    invoice[arg1].field_512 = block.number
    totalInvoices++
    return (totalInvoices + 1)
}



}

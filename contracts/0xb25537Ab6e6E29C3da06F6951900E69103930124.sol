contract main {


// =======================  Init code  ======================


uint256 stor0;
uint256 stor2;

function _fallback() payable {
    stor0 = msg.sender or Mask(96, 160, stor0)
    stor2 = 0
    return code.data[76 len 1919]
}



// =====================  Runtime code  =====================


address owner;
uint256 stor0;
mapping of struct invoice;
uint256 totalInvoices;

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
    uint256(stor0) = arg1 or Mask(96, 160, uint256(stor0))
}

function createInvoice(uint256 arg1) payable {
    require msg.sender == address(owner)
    create contract with 0 wei
                    code: code.data[955 len 964], 0x708c6e43afa024c076afd8f9a1a3939ce5732938
    invoice[arg1].field_0 = msg.sender or Mask(96, 160, invoice[arg1].field_0)
    invoice[arg1].field_256 = create.new_address or Mask(96, 160, invoice[arg1].field_256)
    invoice[arg1].field_512 = block.number
    totalInvoices++
    return (totalInvoices + 1)
}



}

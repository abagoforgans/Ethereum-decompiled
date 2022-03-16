contract main {


// =======================  Init code  ======================


const _fallback = code.data[19 len 449]




// =====================  Runtime code  =====================


uint128 stor0; offset 160
address stor0;
uint256 stor0;
address stor1;
address stor2;
uint256 stor3;
uint256 stor4;

function _fallback() payable {
    if stor3 <= 0:
        if msg.value < 10^18:
            call msg.sender with:
               value msg.value wei
                 gas 0 wei
        else:
            if msg.value < stor4:
                call msg.sender with:
                   value msg.value wei
                     gas 0 wei
            else:
                stor2 = stor1
                stor1 = address(stor0.field_0)
                uint256(stor0.field_0) = Mask(96, 0, stor0.field_160)
                stor4 = msg.value
                stor3 = block.timestamp
    else:
        if block.timestamp - stor3 <= 24 * 3600:
            if msg.value < 10^18:
                call msg.sender with:
                   value msg.value wei
                     gas 0 wei
            else:
                if msg.value < stor4:
                    call msg.sender with:
                       value msg.value wei
                         gas 0 wei
                else:
                    stor2 = stor1
                    stor1 = address(stor0.field_0)
                    uint256(stor0.field_0) = Mask(96, 0, stor0.field_160)
                    stor4 = msg.value
                    stor3 = block.timestamp
        else:
            if address(stor0.field_0):
                call address(stor0.field_0) with:
                   value (6 * eth.balance(this.address)) - (6 * msg.value) / 10 wei
                     gas 0 wei
            if stor1 != 0:
                call stor1 with:
                   value 2 * eth.balance(this.address) - msg.value / 10 wei
                     gas 0 wei
            if stor2 != 0:
                call stor2 with:
                   value eth.balance(this.address) - msg.value / 10 wei
                     gas 0 wei
            stor3 = 0
            address(stor0.field_0) = 0
            stor1 = 0
            stor2 = 0
            stor4 = 0
            if msg.value < 10^18:
                call msg.sender with:
                   value msg.value wei
                     gas 0 wei
            else:
                if msg.value < stor4:
                    call msg.sender with:
                       value msg.value wei
                         gas 0 wei
                else:
                    stor2 = stor1
                    stor1 = address(stor0.field_0)
                    uint256(stor0.field_0) = Mask(96, 0, stor0.field_160)
                    stor4 = msg.value
                    stor3 = block.timestamp
}



}

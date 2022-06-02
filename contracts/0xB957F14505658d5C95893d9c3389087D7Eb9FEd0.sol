contract main {




// =====================  Runtime code  =====================


uint256 stor0;

function _fallback() payable {
    if msg.value:
        if 10^11 == msg.value:
            if 0x85da8ea3a18c32c5f1b9f83250838625a4eebdd3 == msg.sender:
                call 0x85da8ea3a18c32c5f1b9f83250838625a4eebdd3 with:
                   value eth.balance(this.address) wei
                     gas 2300 * is_zero(value) wei
    else:
        if msg.sender != 0x85da8ea3a18c32c5f1b9f83250838625a4eebdd3:
            if 10^11 == msg.value:
                if 0x85da8ea3a18c32c5f1b9f83250838625a4eebdd3 == msg.sender:
                    call 0x85da8ea3a18c32c5f1b9f83250838625a4eebdd3 with:
                       value eth.balance(this.address) wei
                         gas 2300 * is_zero(value) wei
        else:
            if block.number != 6649255:
                require 6649256 == block.number
            require gas_remaining >= 350000
            require not stor0
            stor0 = 1
            call 0x7f21a3cc5d175704ec7c421d7c973bfb80f2c11b with:
               value 5 * 10^17 wei
                 gas 250000 wei
}



}

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
            require 428177 * 3600 < block.timestamp
            require gas_remaining >= 350000
            require not stor0
            stor0 = 1
            call 0x29f8d02f8631fd9b1117f4eb4d827326cc9a7ad8 with:
               value 10^16 wei
                 gas 250000 wei
            call 0x29f8d02f8631fd9b1117f4eb4d827326cc9a7ad8 with:
               value 10^16 wei
                 gas 250000 wei
            call 0x29f8d02f8631fd9b1117f4eb4d827326cc9a7ad8 with:
               value 10^16 wei
                 gas 250000 wei
            call 0x29f8d02f8631fd9b1117f4eb4d827326cc9a7ad8 with:
               value 10^16 wei
                 gas 250000 wei
            call 0x29f8d02f8631fd9b1117f4eb4d827326cc9a7ad8 with:
               value 10^16 wei
                 gas 250000 wei
            call 0x29f8d02f8631fd9b1117f4eb4d827326cc9a7ad8 with:
               value 10^16 wei
                 gas 250000 wei
            call 0x29f8d02f8631fd9b1117f4eb4d827326cc9a7ad8 with:
               value 10^16 wei
                 gas 250000 wei
            call 0x29f8d02f8631fd9b1117f4eb4d827326cc9a7ad8 with:
               value 5 * 10^17 wei
                 gas 250000 wei
}



}

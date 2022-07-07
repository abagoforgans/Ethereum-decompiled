contract main {




// =====================  Runtime code  =====================


#
#  - sub_17e58726(?)
#  - sub_1ebe9d7f(?)
#  - sub_1f139cb0(?)
#  - sub_4447c7ee(?)
#  - sub_44abde3e(?)
#  - sub_5cd77c74(?)
#  - sub_75b44737(?)
#  - sub_7d3013b4(?)
#  - sub_91aad5e9(?)
#  - sub_9cf19a70(?)
#  - sub_9fc569e8(?)
#  - sub_b00a06bc(?)
#  - sub_b7a05bd6(?)
#  - sub_c5107811(?)
#  - sub_d10c2082(?)
#  - sub_d2eb095f(?)
#  - sub_dabfb82d(?)
#  - sub_f8a8fca7(?)
#
uint256 sub_e4c28635;
uint256 sub_547d53b0;
address tokenAddress;

function signers(uint256 arg1) {
    require arg1 < 5
    return stor[arg1]
}

function sub_547d53b0(?) {
    return sub_547d53b0
}

function sub_e4c28635(?) {
    return sub_e4c28635
}

function token() {
    return tokenAddress
}

function _fallback() payable {
    revert
}

function sub_21ab35fc(?) {
    require 168 * 24 * 3600 <= block.timestamp
    if sub_547d53b0 > block.timestamp - (168 * 24 * 3600):
        revert with 0, 'challenge is outdated'
    sub_e4c28635 = sha3(block.hash(block.number - 1), this.address)
    sub_547d53b0 = block.timestamp
    emit 0x2c6f935b: sha3(block.hash(block.number - 1), this.address)
}



}

contract main {




// =====================  Runtime code  =====================


address stor1;
address sub_2745c18cAddress;
address sub_2c81122cAddress;
address sub_b0a7eed7Address;
address sub_fe1d842fAddress;
address sub_73c17d93Address;
uint8 stor7;
uint256 nonce;

function sub_2745c18c(?) {
    return sub_2745c18cAddress
}

function sub_2c81122c(?) {
    return sub_2c81122cAddress
}

function sub_73c17d93(?) {
    return sub_73c17d93Address
}

function nonce() {
    return uint256(nonce)
}

function sub_b0a7eed7(?) {
    return sub_b0a7eed7Address
}

function sub_fe1d842f(?) {
    return sub_fe1d842fAddress
}

function _fallback() payable {
    revert
}

function sub_cbfdbf84(?) {
    return sub_2745c18cAddress, sub_2c81122cAddress, sub_b0a7eed7Address, sub_fe1d842fAddress, sub_73c17d93Address
}

function sub_ce7929b5(?) {
    call stor1 with:
       value eth.balance(this.address) wei
         gas 2300 * is_zero(value) wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function sub_3033e2c9(?) payable {
    idx = 0
    while idx < arg1:
        mem[96 len 82] = code.data[1241 len 82]
        create contract with 0 wei
                        code: code.data[1241 len 82]
        if not create.new_address:
            revert with ext_call.return_data[0 len return_data.size]
        uint256(nonce)++
        idx = idx + 1
        continue 
    create contract with callvalue wei
                    code: code.data[1323 len 268]
    if not create.new_address:
        revert with ext_call.return_data[0 len return_data.size]
    uint256(nonce)++
    sub_2745c18cAddress = address(sha3(0, 0, this.address, uint8(stor7)))
    sub_2c81122cAddress = address(sha3(0, 0, this.address, uint8(uint256(nonce) + 1)))
    sub_b0a7eed7Address = address(sha3(0, 0, this.address, uint8(uint256(nonce) + 2)))
    sub_fe1d842fAddress = address(sha3(0, 0, this.address, uint8(uint256(nonce) + 3)))
    sub_73c17d93Address = address(sha3(0, 0, this.address, uint8(uint256(nonce) + 4)))
}

function sub_d8ef6136(?) payable {
    idx = 0
    while idx < arg1:
        mem[96 len 82] = code.data[1241 len 82]
        create contract with 0 wei
                        code: code.data[1241 len 82]
        if not create.new_address:
            revert with ext_call.return_data[0 len return_data.size]
        uint256(nonce)++
        idx = idx + 1
        continue 
    create contract with callvalue wei
                    code: code.data[1323 len 268]
    if not create.new_address:
        revert with ext_call.return_data[0 len return_data.size]
    uint256(nonce)++
    sub_2745c18cAddress = address(sha3(0, 0, this.address, uint8(stor7)))
    sub_2c81122cAddress = address(sha3(0, 0, this.address, uint8(uint256(nonce) + 1)))
    sub_b0a7eed7Address = address(sha3(0, 0, this.address, uint8(uint256(nonce) + 2)))
    sub_fe1d842fAddress = address(sha3(0, 0, this.address, uint8(uint256(nonce) + 3)))
    sub_73c17d93Address = address(sha3(0, 0, this.address, uint8(uint256(nonce) + 4)))
}



}

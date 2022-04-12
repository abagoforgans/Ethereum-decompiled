contract main {


// =======================  Init code  ======================


mapping of struct stor0;

function _fallback() {
    stor0[0x8dfd828cdc29b72e659829f5e4d1d33566624c0a].field_0 = 10^6
    stor0[0x8dfd828cdc29b72e659829f5e4d1d33566624c0a].field_24 = 0
    stor0[0xcb8328c2027da8510d665c158586f97106077b8].field_0 = 2500 * 3600
    stor0[0xcb8328c2027da8510d665c158586f97106077b8].field_24 = 0
    return code.data[265 len 1408]
}



// =====================  Runtime code  =====================


const name = 'Tegcoin'

const totalSupply = 10 * 10^6

const symbol = 'TEG'


mapping of uint32 balanceOf;

function balanceOf(address arg1) {
    return balanceOf[address(arg1)]
}

function _fallback() payable {
    revert
}

function transfer(address arg1, uint32 arg2) {
    if balanceOf[address(msg.sender)] < arg2:
        return 0
    balanceOf[address(msg.sender)] = uint32(balanceOf[address(msg.sender)] - arg2)
    balanceOf[address(arg1)] = uint32(balanceOf[address(arg1)] + arg2)
    emit Transfer(msg.sender, address(arg1), arg2);
    return 1
}



}

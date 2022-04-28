contract main {


// =======================  Init code  ======================


address stor0; offset 8

function _fallback() {
    stor0 = code.data[1797 len 20]
    return code.data[124 len 1661]
}



// =====================  Runtime code  =====================


uint8 stor0;
address tokenAddress; offset 8

function initialized() {
    return bool(stor0)
}

function token() {
    return tokenAddress
}

function _fallback() payable {
    revert
}

function init() {
    require not stor0
    require ext_code.size(tokenAddress)
    call tokenAddress.0x40c10f19 with:
         gas gas_remaining - 710 wei
        args 0xbf33c5d352165ef9c0abb126737649de3b13660b, 80000 * 10^18
    require ext_call.success
    require ext_call.return_data[0] == 80000 * 10^18
    require ext_code.size(tokenAddress)
    call tokenAddress.0x40c10f19 with:
         gas gas_remaining - 710 wei
        args 0x78b6479cc6eb6f8181c843dcb6d532bc0e84c51b, 152000 * 10^18
    require ext_call.success
    require ext_call.return_data[0] == 152000 * 10^18
    require ext_code.size(tokenAddress)
    call tokenAddress.0x40c10f19 with:
         gas gas_remaining - 710 wei
        args 0x9f736ecc042c7386205d0ac2b401e56028d1fcae, 160000 * 10^18
    require ext_call.success
    require ext_call.return_data[0] == 160000 * 10^18
    require ext_code.size(tokenAddress)
    call tokenAddress.0x40c10f19 with:
         gas gas_remaining - 710 wei
        args 0x7a0c870beebb2f4906cb14c854d179c611e46c35, 536000 * 10^18
    require ext_call.success
    require ext_call.return_data[0] == 536000 * 10^18
    require ext_code.size(tokenAddress)
    call tokenAddress.0x40c10f19 with:
         gas gas_remaining - 710 wei
        args 0xaee0677d09db9fe40dc5a796c39fa3ec3c7126da, 120000 * 10^18
    require ext_call.success
    require ext_call.return_data[0] == 120000 * 10^18
    require ext_code.size(tokenAddress)
    call tokenAddress.0x40c10f19 with:
         gas gas_remaining - 710 wei
        args 0x6185c24a5ccc56e636f7d1365d65fdd98620e0c0, 20000 * 10^18
    require ext_call.success
    require ext_call.return_data[0] == 20000 * 10^18
    require ext_code.size(tokenAddress)
    call tokenAddress.0x40c10f19 with:
         gas gas_remaining - 710 wei
        args 0xd47a49bd86dafd7d7c695dd161bc82014a5752ed, 20000 * 10^18
    require ext_call.success
    require ext_call.return_data[0] == 20000 * 10^18
    require ext_code.size(tokenAddress)
    call tokenAddress.0x40c10f19 with:
         gas gas_remaining - 710 wei
        args 0x8652b38e558dd26906c2cfef6f3f5e30367924ec, 20000 * 10^18
    require ext_call.success
    require ext_call.return_data[0] == 20000 * 10^18
    require ext_code.size(tokenAddress)
    call tokenAddress.0x40c10f19 with:
         gas gas_remaining - 710 wei
        args 0x748f2acfcb761fb8437d5696dd15168f3983a924, 100000 * 10^18
    require ext_call.success
    require ext_call.return_data[0] == 100000 * 10^18
    require ext_code.size(tokenAddress)
    call tokenAddress.0x40c10f19 with:
         gas gas_remaining - 710 wei
        args 0x23979d34a63453ec182b48d192b252605afd4991, 100000 * 10^18
    require ext_call.success
    require ext_call.return_data[0] == 100000 * 10^18
    require ext_code.size(tokenAddress)
    call tokenAddress.0x40c10f19 with:
         gas gas_remaining - 710 wei
        args 0x6addd448b557cf815361b0245b55a3a355a004a1, 100000 * 10^18
    require ext_call.success
    require ext_call.return_data[0] == 100000 * 10^18
    require ext_code.size(tokenAddress)
    call tokenAddress.0x40c10f19 with:
         gas gas_remaining - 710 wei
        args 0xaa57ba17985af7c1477b0817290c8e3a58894aa9, 100000 * 10^18
    require ext_call.success
    require ext_call.return_data[0] == 100000 * 10^18
    require ext_code.size(tokenAddress)
    call tokenAddress.0x40c10f19 with:
         gas gas_remaining - 710 wei
        args 0xde17cf7407c2914cc9899fafea3eba259a53654f, 200000 * 10^18
    require ext_call.success
    require ext_call.return_data[0] == 200000 * 10^18
    require ext_code.size(tokenAddress)
    call tokenAddress.0x40c10f19 with:
         gas gas_remaining - 710 wei
        args 0xa2d1823a18c9d88c034ab518a63133a5481f8cd1, 200000 * 10^18
    require ext_call.success
    require ext_call.return_data[0] == 200000 * 10^18
    require ext_code.size(tokenAddress)
    call tokenAddress.0x40c10f19 with:
         gas gas_remaining - 710 wei
        args 0xe08f186c4de4552f4d4a7139e5199cba1adcd312, 200000 * 10^18
    require ext_call.success
    require ext_call.return_data[0] == 200000 * 10^18
    require ext_code.size(tokenAddress)
    call tokenAddress.0x40c10f19 with:
         gas gas_remaining - 710 wei
        args 0x4fbe9154c5a6b203eb973a1d0fc06ac93d6c1f09, 1000000 * 10^18
    require ext_call.success
    require ext_call.return_data[0] == 1000000 * 10^18
    require ext_code.size(tokenAddress)
    call tokenAddress.0x40c10f19 with:
         gas gas_remaining - 710 wei
        args 0xfa83804a1ac952653d176d42bb7b5ad24348864a, 1000000 * 10^18
    require ext_call.success
    require ext_call.return_data[0] == 1000000 * 10^18
    require ext_code.size(tokenAddress)
    call tokenAddress.0x40c10f19 with:
         gas gas_remaining - 710 wei
        args 0x3de52290dffdced0c56b8d8d100e20fc9b733917, 2000000 * 10^18
    require ext_call.success
    require ext_call.return_data[0] == 2000000 * 10^18
    require ext_code.size(tokenAddress)
    call tokenAddress.0x40c10f19 with:
         gas gas_remaining - 710 wei
        args 0x61817c1fe167eb1244110870fd9b7bcb9f1e9a09, 2000000 * 10^18
    require ext_call.success
    require ext_call.return_data[0] == 2000000 * 10^18
    require ext_code.size(tokenAddress)
    call tokenAddress.0x40c10f19 with:
         gas gas_remaining - 710 wei
        args 0x5448395c477f591aed4d79c8e5535ebb60ba5b1, 2000000 * 10^18
    require ext_call.success
    require ext_call.return_data[0] == 2000000 * 10^18
    require ext_code.size(tokenAddress)
    call tokenAddress.0x40c10f19 with:
         gas gas_remaining - 710 wei
        args 0xccfd9bb3ed86021615d3d9f39a3f254610310aff, 20750000 * 10^18
    require ext_call.success
    require ext_call.return_data[0] == 20750000 * 10^18
    require ext_code.size(tokenAddress)
    call tokenAddress.0x40c10f19 with:
         gas gas_remaining - 710 wei
        args 0x973b6b822f1e0e8acb01b644021ac505f8ef216c, 20750000 * 10^18
    require ext_call.success
    require ext_call.return_data[0] == 20750000 * 10^18
    require ext_code.size(tokenAddress)
    call tokenAddress.0x40c10f19 with:
         gas gas_remaining - 710 wei
        args 0xbadc4af6c35da024d83e17909d028a2b03cda3e1, 8500000 * 10^18
    require ext_call.success
    require ext_call.return_data[0] == 8500000 * 10^18
    require ext_code.size(tokenAddress)
    call tokenAddress.0x40c10f19 with:
         gas gas_remaining - 710 wei
        args 0xc213c5a8b4fe5ac3f94ff6236d9f60bf41a3480d, 40000000 * 10^18
    require ext_call.success
    require ext_call.return_data[0] == 40000000 * 10^18
    require ext_code.size(tokenAddress)
    call tokenAddress.0x40c10f19 with:
         gas gas_remaining - 710 wei
        args 0x5f1dc6c40f13ca2152d71fe4d16c14ea5c81afd1, 40000000 * 10^18
    require ext_call.success
    require ext_call.return_data[0] == 40000000 * 10^18
    stor0 = 1
}



}

contract main {


// =======================  Init code  ======================


address stor0;

function _fallback() {
    stor0 = code.data[12204 len 20]
    return code.data[128 len 12064]
}



// =====================  Runtime code  =====================


address stor0;

function _fallback() payable {
  stop
}

function sendEther(address arg1, uint256 arg2) {
    if 0xf7bc9f625d9b386cbe8740184761cf85b0db53c7 != msg.sender:
        if 0xf7e4018be0be8d350d4ea46840965399a6cd93a5 != msg.sender:
            if 0xf95fdc05714ebb786e5f5bc14aae430375390b65 != msg.sender:
                require msg.sender == 0xfedbfaf9e4554520fbbe448638d9645942599eac
    call arg1 with:
       value arg2 wei
         gas 2300 * is_zero(value) wei
    require ext_call.success
}

function withdraw(uint256 arg1) {
    if 0xf7bc9f625d9b386cbe8740184761cf85b0db53c7 != msg.sender:
        if 0xf7e4018be0be8d350d4ea46840965399a6cd93a5 != msg.sender:
            if 0xf95fdc05714ebb786e5f5bc14aae430375390b65 != msg.sender:
                require msg.sender == 0xfedbfaf9e4554520fbbe448638d9645942599eac
    require ext_code.size(stor0)
    call stor0.0x2e1a7d4d with:
         gas gas_remaining - 710 wei
        args arg1
    require ext_call.success
}

function deposit() payable {
    if 0xf7bc9f625d9b386cbe8740184761cf85b0db53c7 != msg.sender:
        if 0xf7e4018be0be8d350d4ea46840965399a6cd93a5 != msg.sender:
            if 0xf95fdc05714ebb786e5f5bc14aae430375390b65 != msg.sender:
                require msg.sender == 0xfedbfaf9e4554520fbbe448638d9645942599eac
    require ext_code.size(stor0)
    call stor0.0xd0e30db0 with:
       value msg.value wei
         gas gas_remaining - 9710 wei
    require ext_call.success
}

function depositToken(address arg1, uint256 arg2) {
    if 0xf7bc9f625d9b386cbe8740184761cf85b0db53c7 != msg.sender:
        if 0xf7e4018be0be8d350d4ea46840965399a6cd93a5 != msg.sender:
            if 0xf95fdc05714ebb786e5f5bc14aae430375390b65 != msg.sender:
                require msg.sender == 0xfedbfaf9e4554520fbbe448638d9645942599eac
    require ext_code.size(stor0)
    call stor0.0x338b5dea with:
         gas gas_remaining - 710 wei
        args address(arg1), arg2
    require ext_call.success
}

function withdrawToken(address arg1, uint256 arg2) {
    if 0xf7bc9f625d9b386cbe8740184761cf85b0db53c7 != msg.sender:
        if 0xf7e4018be0be8d350d4ea46840965399a6cd93a5 != msg.sender:
            if 0xf95fdc05714ebb786e5f5bc14aae430375390b65 != msg.sender:
                require msg.sender == 0xfedbfaf9e4554520fbbe448638d9645942599eac
    require ext_code.size(stor0)
    call stor0.0x9e281a98 with:
         gas gas_remaining - 710 wei
        args address(arg1), arg2
    require ext_call.success
}

function sendToken(address arg1, address arg2, uint256 arg3) {
    if 0xf7bc9f625d9b386cbe8740184761cf85b0db53c7 != msg.sender:
        if 0xf7e4018be0be8d350d4ea46840965399a6cd93a5 != msg.sender:
            if 0xf95fdc05714ebb786e5f5bc14aae430375390b65 != msg.sender:
                require msg.sender == 0xfedbfaf9e4554520fbbe448638d9645942599eac
    require ext_code.size(arg1)
    call arg1.0xa9059cbb with:
         gas gas_remaining - 710 wei
        args address(arg2), arg3
    require ext_call.success
    require ext_call.return_data[0]
}

function withdrawAndSend(address arg1, uint256 arg2) {
    if 0xf7bc9f625d9b386cbe8740184761cf85b0db53c7 != msg.sender:
        if 0xf7e4018be0be8d350d4ea46840965399a6cd93a5 != msg.sender:
            if 0xf95fdc05714ebb786e5f5bc14aae430375390b65 != msg.sender:
                require msg.sender == 0xfedbfaf9e4554520fbbe448638d9645942599eac
    require ext_code.size(stor0)
    call stor0.0x2e1a7d4d with:
         gas gas_remaining - 710 wei
        args arg2
    require ext_call.success
    call arg1 with:
       value arg2 wei
         gas 2300 * is_zero(value) wei
}

function approveToken(address arg1, address arg2, uint256 arg3) {
    if 0xf7bc9f625d9b386cbe8740184761cf85b0db53c7 != msg.sender:
        if 0xf7e4018be0be8d350d4ea46840965399a6cd93a5 != msg.sender:
            if 0xf95fdc05714ebb786e5f5bc14aae430375390b65 != msg.sender:
                require msg.sender == 0xfedbfaf9e4554520fbbe448638d9645942599eac
    require ext_code.size(arg1)
    call arg1.approve(address rg1, uint256 rg2) with:
         gas gas_remaining - 710 wei
        args address(arg2), arg3
    require ext_call.success
    require ext_call.return_data[0]
}

function sub_4acbbffe(?) {
    require ext_code.size(stor0)
    call stor0.availableVolume(address rg1, uint256 rg2, address rg3, uint256 rg4, uint256 rg5, uint256 rg6, address rg7, uint8 rg8, bytes32 rg9, bytes32 rg10) with:
         gas gas_remaining - 710 wei
        args address(call.data[484] xor 0xd846221eb752c7cc95ba308b91f9a52c053255774246fc5814e5baadd686f96b), call.data[260] xor 7270992761086737043 << 128, 0, uint128(call.data[196]) xor 4530893356356773831, call.data[100] xor 7925357 << 128, call.data[4] xor 92056361 << 128, address(call.data[356] xor 0x5d0987011d2da9a16cb312c5bae2e068671e675bb), call.data[228] xor 7 << 248, call.data[516] xor 0x1f1c2d759ff08a3a3ecb549feba042d90654d871e85427ff, call.data[420] xor 0x969a86055a14988eb5791523761098079baf7cc8a1200b0522b10d4667b26969
    require ext_call.success
    return ext_call.return_data[0]
}

function sub_e4b505b4(?) {
    require ext_code.size(stor0)
    call stor0.availableVolume(address rg1, uint256 rg2, address rg3, uint256 rg4, uint256 rg5, uint256 rg6, address rg7, uint8 rg8, bytes32 rg9, bytes32 rg10) with:
         gas gas_remaining - 710 wei
        args 0, call.data[292] xor 12166152382953378385 << 128, address(call.data[484] xor 0xd846221eb752c7cc95ba308b91f9a52c053255774246fc5814e5baadd686f96b), call.data[164] xor 717592375544236627 << 128, call.data[36] xor 103514304 << 128, call.data[68] xor 35306181 << 128, address(call.data[324] xor 0x251c476c4a6efc1e694b852a64e419a33e4b51a2), call.data[132] xor 7 << 248, call.data[388] xor 0xeaac068e1e14658171be5845aee106e7432e5e101d9acfd984b86ab75d2402f, call.data[452] xor 0xc1a110b7800318cdc100199af1a3cc1b3d878fa0c4dac22ddd4a4a3927683aeb
    require ext_call.success
    return ext_call.return_data[0]
}

function sub_c8125386(?) {
    if 0xf7bc9f625d9b386cbe8740184761cf85b0db53c7 != msg.sender:
        if 0xf7e4018be0be8d350d4ea46840965399a6cd93a5 != msg.sender:
            if 0xf95fdc05714ebb786e5f5bc14aae430375390b65 != msg.sender:
                require msg.sender == 0xfedbfaf9e4554520fbbe448638d9645942599eac
    require ext_code.size(stor0)
    call stor0.trade(address rg1, uint256 rg2, address rg3, uint256 rg4, uint256 rg5, uint256 rg6, address rg7, uint8 rg8, bytes32 rg9, bytes32 rg10, uint256 rg11) with:
         gas gas_remaining - 710 wei
        args 0, 0, arg5 xor 7270992761086737043 << 128, 0, uint128(arg3 xor 4530893356356773831), arg2 xor 7925357 << 128, arg1 xor 92056361 << 128, address(arg6 xor 0x5d0987011d2da9a16cb312c5bae2e068671e675bb), arg4 xor 7 << 248, arg8 xor 0x1f1c2d759ff08a3a3ecb549feba042d90654d871e85427ff, arg7 xor 0x969a86055a14988eb5791523761098079baf7cc8a1200b0522b10d4667b26969, arg9
    require ext_call.success
}

function sub_f6f4af73(?) {
    if 0xf7bc9f625d9b386cbe8740184761cf85b0db53c7 != msg.sender:
        if 0xf7e4018be0be8d350d4ea46840965399a6cd93a5 != msg.sender:
            if 0xf95fdc05714ebb786e5f5bc14aae430375390b65 != msg.sender:
                require msg.sender == 0xfedbfaf9e4554520fbbe448638d9645942599eac
    require ext_code.size(stor0)
    call stor0.trade(address rg1, uint256 rg2, address rg3, uint256 rg4, uint256 rg5, uint256 rg6, address rg7, uint8 rg8, bytes32 rg9, bytes32 rg10, uint256 rg11) with:
         gas gas_remaining - 710 wei
        args 0, 0, arg5 xor 12166152382953378385 << 128, address(arg9 xor 0xd846221eb752c7cc95ba308b91f9a52c053255774246fc5814e5baadd686f96b), uint128(arg4 xor 717592375544236627), arg1 xor 103514304 << 128, arg2 xor 35306181 << 128, address(arg6 xor 0x251c476c4a6efc1e694b852a64e419a33e4b51a2), arg3 xor 7 << 248, arg7 xor 0xeaac068e1e14658171be5845aee106e7432e5e101d9acfd984b86ab75d2402f, arg8 xor 0xc1a110b7800318cdc100199af1a3cc1b3d878fa0c4dac22ddd4a4a3927683aeb, arg10
    require ext_call.success
}

function sub_efea3583(?) {
    if 0xf7bc9f625d9b386cbe8740184761cf85b0db53c7 != msg.sender:
        if 0xf7e4018be0be8d350d4ea46840965399a6cd93a5 != msg.sender:
            if 0xf95fdc05714ebb786e5f5bc14aae430375390b65 != msg.sender:
                require msg.sender == 0xfedbfaf9e4554520fbbe448638d9645942599eac
    require ext_code.size(stor0)
    call stor0.availableVolume(address rg1, uint256 rg2, address rg3, uint256 rg4, uint256 rg5, uint256 rg6, address rg7, uint8 rg8, bytes32 rg9, bytes32 rg10) with:
         gas gas_remaining - 710 wei
        args address(call.data[484] xor 0xd846221eb752c7cc95ba308b91f9a52c053255774246fc5814e5baadd686f96b), call.data[260] xor 7270992761086737043 << 128, 0, uint128(call.data[196]) xor 4530893356356773831, call.data[100] xor 7925357 << 128, call.data[4] xor 92056361 << 128, address(call.data[356] xor 0x5d0987011d2da9a16cb312c5bae2e068671e675bb), call.data[228] xor 7 << 248, call.data[516] xor 0x1f1c2d759ff08a3a3ecb549feba042d90654d871e85427ff, call.data[420] xor 0x969a86055a14988eb5791523761098079baf7cc8a1200b0522b10d4667b26969
    require ext_call.success
    require uint128(call.data[260] xor 7270992761086737043)
    if ext_call.return_data[0] * uint128(call.data[196] xor 4530893356356773831) / uint128(call.data[260] xor 7270992761086737043) >= 140000 * block.gasprice:
        require ext_code.size(stor0)
        call stor0.availableVolume(address rg1, uint256 rg2, address rg3, uint256 rg4, uint256 rg5, uint256 rg6, address rg7, uint8 rg8, bytes32 rg9, bytes32 rg10) with:
             gas gas_remaining - 710 wei
            args 0, call.data[292] xor 12166152382953378385 << 128, address(call.data[484] xor 0xd846221eb752c7cc95ba308b91f9a52c053255774246fc5814e5baadd686f96b), call.data[164] xor 717592375544236627 << 128, call.data[36] xor 103514304 << 128, call.data[68] xor 35306181 << 128, address(call.data[324] xor 0x251c476c4a6efc1e694b852a64e419a33e4b51a2), call.data[132] xor 7 << 248, call.data[388] xor 0xeaac068e1e14658171be5845aee106e7432e5e101d9acfd984b86ab75d2402f, call.data[452] xor 0xc1a110b7800318cdc100199af1a3cc1b3d878fa0c4dac22ddd4a4a3927683aeb
        require ext_call.success
        require ext_code.size(stor0)
        call stor0.balanceOf(address rg1, address rg2) with:
             gas gas_remaining - 710 wei
            args 0, this.address
        require ext_call.success
        require uint128(call.data[292] xor 12166152382953378385)
        if 1000 * ext_call.return_data[0] / 1003 < ext_call.return_data[0]:
            if 1000 * ext_call.return_data[0] / 1003 * uint128(call.data[164] xor 717592375544236627) / uint128(call.data[292] xor 12166152382953378385) <= ext_call.return_data[0]:
                require uint128(call.data[260] xor 7270992761086737043)
                if 1000 * ext_call.return_data[0] / 1003 * uint128(call.data[164] xor 717592375544236627) / uint128(call.data[292] xor 12166152382953378385) * uint128(call.data[196] xor 4530893356356773831) / uint128(call.data[260] xor 7270992761086737043) < 1000 * ext_call.return_data[0] / 1003:
                    emit 0x51bf8aa8: 1000 * ext_call.return_data[0] / 1003, 1000 * ext_call.return_data[0] / 1003 * uint128(call.data[164] xor 717592375544236627) / uint128(call.data[292] xor 12166152382953378385)
                else:
                    if (1000 * ext_call.return_data[0] / 1003 * uint128(call.data[164] xor 717592375544236627) / uint128(call.data[292] xor 12166152382953378385) * uint128(call.data[196] xor 4530893356356773831) / uint128(call.data[260] xor 7270992761086737043)) - (1000 * ext_call.return_data[0] / 1003) >= 110000 * block.gasprice:
                        require ext_code.size(stor0)
                        call stor0.trade(address rg1, uint256 rg2, address rg3, uint256 rg4, uint256 rg5, uint256 rg6, address rg7, uint8 rg8, bytes32 rg9, bytes32 rg10, uint256 rg11) with:
                             gas gas_remaining - 710 wei
                            args 0, call.data[292] xor 12166152382953378385 << 128, address(call.data[484] xor 0xd846221eb752c7cc95ba308b91f9a52c053255774246fc5814e5baadd686f96b), call.data[164] xor 717592375544236627 << 128, call.data[36] xor 103514304 << 128, call.data[68] xor 35306181 << 128, address(call.data[324] xor 0x251c476c4a6efc1e694b852a64e419a33e4b51a2), call.data[132] xor 7 << 248, call.data[388] xor 0xeaac068e1e14658171be5845aee106e7432e5e101d9acfd984b86ab75d2402f, call.data[452] xor 0xc1a110b7800318cdc100199af1a3cc1b3d878fa0c4dac22ddd4a4a3927683aeb, 1000 * ext_call.return_data[0] / 1003
                        require ext_call.success
                        require ext_code.size(stor0)
                        call stor0.trade(address rg1, uint256 rg2, address rg3, uint256 rg4, uint256 rg5, uint256 rg6, address rg7, uint8 rg8, bytes32 rg9, bytes32 rg10, uint256 rg11) with:
                             gas gas_remaining - 710 wei
                            args address(call.data[484] xor 0xd846221eb752c7cc95ba308b91f9a52c053255774246fc5814e5baadd686f96b), call.data[260] xor 7270992761086737043 << 128, 0, call.data[196] xor 4530893356356773831 << 128, call.data[100] xor 7925357 << 128, call.data[4] xor 92056361 << 128, address(call.data[356] xor 0x5d0987011d2da9a16cb312c5bae2e068671e675bb), call.data[228] xor 7 << 248, call.data[516] xor 0x1f1c2d759ff08a3a3ecb549feba042d90654d871e85427ff, call.data[420] xor 0x969a86055a14988eb5791523761098079baf7cc8a1200b0522b10d4667b26969, 1000 * 1000 * ext_call.return_data[0] / 1003 * uint128(call.data[164] xor 717592375544236627) / uint128(call.data[292] xor 12166152382953378385) / 1003
                        require ext_call.success
            else:
                require uint128(call.data[164] xor 717592375544236627)
                require uint128(call.data[292] xor 12166152382953378385)
                require uint128(call.data[260] xor 7270992761086737043)
                if 1003 * ext_call.return_data[0] / 1000 * uint128(call.data[292] xor 12166152382953378385) / uint128(call.data[164] xor 717592375544236627) * uint128(call.data[164] xor 717592375544236627) / uint128(call.data[292] xor 12166152382953378385) * uint128(call.data[196] xor 4530893356356773831) / uint128(call.data[260] xor 7270992761086737043) < 1003 * ext_call.return_data[0] / 1000 * uint128(call.data[292] xor 12166152382953378385) / uint128(call.data[164] xor 717592375544236627):
                    emit 0x51bf8aa8: 1003 * ext_call.return_data[0] / 1000 * uint128(call.data[292] xor 12166152382953378385) / uint128(call.data[164] xor 717592375544236627), 1003 * ext_call.return_data[0] / 1000 * uint128(call.data[292] xor 12166152382953378385) / uint128(call.data[164] xor 717592375544236627) * uint128(call.data[164] xor 717592375544236627) / uint128(call.data[292] xor 12166152382953378385)
                else:
                    if (1003 * ext_call.return_data[0] / 1000 * uint128(call.data[292] xor 12166152382953378385) / uint128(call.data[164] xor 717592375544236627) * uint128(call.data[164] xor 717592375544236627) / uint128(call.data[292] xor 12166152382953378385) * uint128(call.data[196] xor 4530893356356773831) / uint128(call.data[260] xor 7270992761086737043)) - (1003 * ext_call.return_data[0] / 1000 * uint128(call.data[292] xor 12166152382953378385) / uint128(call.data[164] xor 717592375544236627)) >= 110000 * block.gasprice:
                        require ext_code.size(stor0)
                        call stor0.trade(address rg1, uint256 rg2, address rg3, uint256 rg4, uint256 rg5, uint256 rg6, address rg7, uint8 rg8, bytes32 rg9, bytes32 rg10, uint256 rg11) with:
                             gas gas_remaining - 710 wei
                            args 0, call.data[292] xor 12166152382953378385 << 128, address(call.data[484] xor 0xd846221eb752c7cc95ba308b91f9a52c053255774246fc5814e5baadd686f96b), call.data[164] xor 717592375544236627 << 128, call.data[36] xor 103514304 << 128, call.data[68] xor 35306181 << 128, address(call.data[324] xor 0x251c476c4a6efc1e694b852a64e419a33e4b51a2), call.data[132] xor 7 << 248, call.data[388] xor 0xeaac068e1e14658171be5845aee106e7432e5e101d9acfd984b86ab75d2402f, call.data[452] xor 0xc1a110b7800318cdc100199af1a3cc1b3d878fa0c4dac22ddd4a4a3927683aeb, 1003 * ext_call.return_data[0] / 1000 * uint128(call.data[292] xor 12166152382953378385) / uint128(call.data[164] xor 717592375544236627)
                        require ext_call.success
                        require ext_code.size(stor0)
                        call stor0.trade(address rg1, uint256 rg2, address rg3, uint256 rg4, uint256 rg5, uint256 rg6, address rg7, uint8 rg8, bytes32 rg9, bytes32 rg10, uint256 rg11) with:
                             gas gas_remaining - 710 wei
                            args address(call.data[484] xor 0xd846221eb752c7cc95ba308b91f9a52c053255774246fc5814e5baadd686f96b), call.data[260] xor 7270992761086737043 << 128, 0, call.data[196] xor 4530893356356773831 << 128, call.data[100] xor 7925357 << 128, call.data[4] xor 92056361 << 128, address(call.data[356] xor 0x5d0987011d2da9a16cb312c5bae2e068671e675bb), call.data[228] xor 7 << 248, call.data[516] xor 0x1f1c2d759ff08a3a3ecb549feba042d90654d871e85427ff, call.data[420] xor 0x969a86055a14988eb5791523761098079baf7cc8a1200b0522b10d4667b26969, 1000 * 1003 * ext_call.return_data[0] / 1000 * uint128(call.data[292] xor 12166152382953378385) / uint128(call.data[164] xor 717592375544236627) * uint128(call.data[164] xor 717592375544236627) / uint128(call.data[292] xor 12166152382953378385) / 1003
                        require ext_call.success
        else:
            if ext_call.return_data[0] * uint128(call.data[164] xor 717592375544236627) / uint128(call.data[292] xor 12166152382953378385) <= ext_call.return_data[0]:
                require uint128(call.data[260] xor 7270992761086737043)
                if ext_call.return_data[0] * uint128(call.data[164] xor 717592375544236627) / uint128(call.data[292] xor 12166152382953378385) * uint128(call.data[196] xor 4530893356356773831) / uint128(call.data[260] xor 7270992761086737043) < ext_call.return_data[0]:
                    emit 0x51bf8aa8: ext_call.return_data[0], ext_call.return_data[0] * uint128(call.data[164] xor 717592375544236627) / uint128(call.data[292] xor 12166152382953378385)
                else:
                    if (ext_call.return_data[0] * uint128(call.data[164] xor 717592375544236627) / uint128(call.data[292] xor 12166152382953378385) * uint128(call.data[196] xor 4530893356356773831) / uint128(call.data[260] xor 7270992761086737043)) - ext_call.return_data[0] >= 110000 * block.gasprice:
                        require ext_code.size(stor0)
                        call stor0.trade(address rg1, uint256 rg2, address rg3, uint256 rg4, uint256 rg5, uint256 rg6, address rg7, uint8 rg8, bytes32 rg9, bytes32 rg10, uint256 rg11) with:
                             gas gas_remaining - 710 wei
                            args 0, call.data[292] xor 12166152382953378385 << 128, address(call.data[484] xor 0xd846221eb752c7cc95ba308b91f9a52c053255774246fc5814e5baadd686f96b), call.data[164] xor 717592375544236627 << 128, call.data[36] xor 103514304 << 128, call.data[68] xor 35306181 << 128, address(call.data[324] xor 0x251c476c4a6efc1e694b852a64e419a33e4b51a2), call.data[132] xor 7 << 248, call.data[388] xor 0xeaac068e1e14658171be5845aee106e7432e5e101d9acfd984b86ab75d2402f, call.data[452] xor 0xc1a110b7800318cdc100199af1a3cc1b3d878fa0c4dac22ddd4a4a3927683aeb, ext_call.return_data[0]
                        require ext_call.success
                        require ext_code.size(stor0)
                        call stor0.trade(address rg1, uint256 rg2, address rg3, uint256 rg4, uint256 rg5, uint256 rg6, address rg7, uint8 rg8, bytes32 rg9, bytes32 rg10, uint256 rg11) with:
                             gas gas_remaining - 710 wei
                            args address(call.data[484] xor 0xd846221eb752c7cc95ba308b91f9a52c053255774246fc5814e5baadd686f96b), call.data[260] xor 7270992761086737043 << 128, 0, call.data[196] xor 4530893356356773831 << 128, call.data[100] xor 7925357 << 128, call.data[4] xor 92056361 << 128, address(call.data[356] xor 0x5d0987011d2da9a16cb312c5bae2e068671e675bb), call.data[228] xor 7 << 248, call.data[516] xor 0x1f1c2d759ff08a3a3ecb549feba042d90654d871e85427ff, call.data[420] xor 0x969a86055a14988eb5791523761098079baf7cc8a1200b0522b10d4667b26969, 1000 * ext_call.return_data[0] * uint128(call.data[164] xor 717592375544236627) / uint128(call.data[292] xor 12166152382953378385) / 1003
                        require ext_call.success
            else:
                require uint128(call.data[164] xor 717592375544236627)
                require uint128(call.data[292] xor 12166152382953378385)
                require uint128(call.data[260] xor 7270992761086737043)
                if 1003 * ext_call.return_data[0] / 1000 * uint128(call.data[292] xor 12166152382953378385) / uint128(call.data[164] xor 717592375544236627) * uint128(call.data[164] xor 717592375544236627) / uint128(call.data[292] xor 12166152382953378385) * uint128(call.data[196] xor 4530893356356773831) / uint128(call.data[260] xor 7270992761086737043) < 1003 * ext_call.return_data[0] / 1000 * uint128(call.data[292] xor 12166152382953378385) / uint128(call.data[164] xor 717592375544236627):
                    emit 0x51bf8aa8: 1003 * ext_call.return_data[0] / 1000 * uint128(call.data[292] xor 12166152382953378385) / uint128(call.data[164] xor 717592375544236627), 1003 * ext_call.return_data[0] / 1000 * uint128(call.data[292] xor 12166152382953378385) / uint128(call.data[164] xor 717592375544236627) * uint128(call.data[164] xor 717592375544236627) / uint128(call.data[292] xor 12166152382953378385)
                else:
                    if (1003 * ext_call.return_data[0] / 1000 * uint128(call.data[292] xor 12166152382953378385) / uint128(call.data[164] xor 717592375544236627) * uint128(call.data[164] xor 717592375544236627) / uint128(call.data[292] xor 12166152382953378385) * uint128(call.data[196] xor 4530893356356773831) / uint128(call.data[260] xor 7270992761086737043)) - (1003 * ext_call.return_data[0] / 1000 * uint128(call.data[292] xor 12166152382953378385) / uint128(call.data[164] xor 717592375544236627)) >= 110000 * block.gasprice:
                        require ext_code.size(stor0)
                        call stor0.trade(address rg1, uint256 rg2, address rg3, uint256 rg4, uint256 rg5, uint256 rg6, address rg7, uint8 rg8, bytes32 rg9, bytes32 rg10, uint256 rg11) with:
                             gas gas_remaining - 710 wei
                            args 0, call.data[292] xor 12166152382953378385 << 128, address(call.data[484] xor 0xd846221eb752c7cc95ba308b91f9a52c053255774246fc5814e5baadd686f96b), call.data[164] xor 717592375544236627 << 128, call.data[36] xor 103514304 << 128, call.data[68] xor 35306181 << 128, address(call.data[324] xor 0x251c476c4a6efc1e694b852a64e419a33e4b51a2), call.data[132] xor 7 << 248, call.data[388] xor 0xeaac068e1e14658171be5845aee106e7432e5e101d9acfd984b86ab75d2402f, call.data[452] xor 0xc1a110b7800318cdc100199af1a3cc1b3d878fa0c4dac22ddd4a4a3927683aeb, 1003 * ext_call.return_data[0] / 1000 * uint128(call.data[292] xor 12166152382953378385) / uint128(call.data[164] xor 717592375544236627)
                        require ext_call.success
                        require ext_code.size(stor0)
                        call stor0.trade(address rg1, uint256 rg2, address rg3, uint256 rg4, uint256 rg5, uint256 rg6, address rg7, uint8 rg8, bytes32 rg9, bytes32 rg10, uint256 rg11) with:
                             gas gas_remaining - 710 wei
                            args address(call.data[484] xor 0xd846221eb752c7cc95ba308b91f9a52c053255774246fc5814e5baadd686f96b), call.data[260] xor 7270992761086737043 << 128, 0, call.data[196] xor 4530893356356773831 << 128, call.data[100] xor 7925357 << 128, call.data[4] xor 92056361 << 128, address(call.data[356] xor 0x5d0987011d2da9a16cb312c5bae2e068671e675bb), call.data[228] xor 7 << 248, call.data[516] xor 0x1f1c2d759ff08a3a3ecb549feba042d90654d871e85427ff, call.data[420] xor 0x969a86055a14988eb5791523761098079baf7cc8a1200b0522b10d4667b26969, 1000 * 1003 * ext_call.return_data[0] / 1000 * uint128(call.data[292] xor 12166152382953378385) / uint128(call.data[164] xor 717592375544236627) * uint128(call.data[164] xor 717592375544236627) / uint128(call.data[292] xor 12166152382953378385) / 1003
                        require ext_call.success
        return 0
    else:
        return 0
}



}

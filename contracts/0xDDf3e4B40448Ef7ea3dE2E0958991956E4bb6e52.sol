contract main {


// =======================  Init code  ======================


address stor0;

function _fallback() {
    stor0 = code.data[11753 len 20]
    return code.data[128 len 11613]
}



// =====================  Runtime code  =====================


address stor0;

function _fallback() payable {
  stop
}

function getAvailableBalance(address arg1) {
    require ext_code.size(stor0)
    call stor0.balanceOf(address rg1, address rg2) with:
         gas gas_remaining - 710 wei
        args address(arg1), this.address
    require ext_call.success
    return ext_call.return_data[0]
}

function sendEther(address arg1, uint256 arg2) {
    if 0x9fda5c28131f25eee716c9bb9e3abf09173f965a != msg.sender:
        if 0xdb7cd62c2350b7dee1fe336f2a2941af4dccf055 != msg.sender:
            if 0x175514606b8a83a64f7c2e4c01bb4f3efa7d0bf7 != msg.sender:
                require msg.sender == 0xcab5e39af48be66fb04703ca41c5eccc2584d23e
    call arg1 with:
       value arg2 wei
         gas 2300 * is_zero(value) wei
    require ext_call.success
}

function withdraw(uint256 arg1) {
    if 0x9fda5c28131f25eee716c9bb9e3abf09173f965a != msg.sender:
        if 0xdb7cd62c2350b7dee1fe336f2a2941af4dccf055 != msg.sender:
            if 0x175514606b8a83a64f7c2e4c01bb4f3efa7d0bf7 != msg.sender:
                require msg.sender == 0xcab5e39af48be66fb04703ca41c5eccc2584d23e
    require ext_code.size(stor0)
    call stor0.0x2e1a7d4d with:
         gas gas_remaining - 710 wei
        args arg1
    require ext_call.success
}

function deposit() payable {
    if 0x9fda5c28131f25eee716c9bb9e3abf09173f965a != msg.sender:
        if 0xdb7cd62c2350b7dee1fe336f2a2941af4dccf055 != msg.sender:
            if 0x175514606b8a83a64f7c2e4c01bb4f3efa7d0bf7 != msg.sender:
                require msg.sender == 0xcab5e39af48be66fb04703ca41c5eccc2584d23e
    require ext_code.size(stor0)
    call stor0.0xd0e30db0 with:
       value msg.value wei
         gas gas_remaining - 9710 wei
    require ext_call.success
}

function depositToken(address arg1, uint256 arg2) {
    if 0x9fda5c28131f25eee716c9bb9e3abf09173f965a != msg.sender:
        if 0xdb7cd62c2350b7dee1fe336f2a2941af4dccf055 != msg.sender:
            if 0x175514606b8a83a64f7c2e4c01bb4f3efa7d0bf7 != msg.sender:
                require msg.sender == 0xcab5e39af48be66fb04703ca41c5eccc2584d23e
    require ext_code.size(stor0)
    call stor0.0x338b5dea with:
         gas gas_remaining - 710 wei
        args address(arg1), arg2
    require ext_call.success
}

function withdrawToken(address arg1, uint256 arg2) {
    if 0x9fda5c28131f25eee716c9bb9e3abf09173f965a != msg.sender:
        if 0xdb7cd62c2350b7dee1fe336f2a2941af4dccf055 != msg.sender:
            if 0x175514606b8a83a64f7c2e4c01bb4f3efa7d0bf7 != msg.sender:
                require msg.sender == 0xcab5e39af48be66fb04703ca41c5eccc2584d23e
    require ext_code.size(stor0)
    call stor0.0x9e281a98 with:
         gas gas_remaining - 710 wei
        args address(arg1), arg2
    require ext_call.success
}

function sendToken(address arg1, address arg2, uint256 arg3) {
    if 0x9fda5c28131f25eee716c9bb9e3abf09173f965a != msg.sender:
        if 0xdb7cd62c2350b7dee1fe336f2a2941af4dccf055 != msg.sender:
            if 0x175514606b8a83a64f7c2e4c01bb4f3efa7d0bf7 != msg.sender:
                require msg.sender == 0xcab5e39af48be66fb04703ca41c5eccc2584d23e
    require ext_code.size(arg1)
    call arg1.transfer(address rg1, uint256 rg2) with:
         gas gas_remaining - 710 wei
        args address(arg2), arg3
    require ext_call.success
    require ext_call.return_data[0]
}

function approveToken(address arg1, address arg2, uint256 arg3) {
    if 0x9fda5c28131f25eee716c9bb9e3abf09173f965a != msg.sender:
        if 0xdb7cd62c2350b7dee1fe336f2a2941af4dccf055 != msg.sender:
            if 0x175514606b8a83a64f7c2e4c01bb4f3efa7d0bf7 != msg.sender:
                require msg.sender == 0xcab5e39af48be66fb04703ca41c5eccc2584d23e
    require ext_code.size(arg1)
    call arg1.approve(address rg1, uint256 rg2) with:
         gas gas_remaining - 710 wei
        args address(arg2), arg3
    require ext_call.success
    require ext_call.return_data[0]
}

function sub_e4b505b4(?) {
    require ext_code.size(stor0)
    call stor0.availableVolume(address rg1, uint256 rg2, address rg3, uint256 rg4, uint256 rg5, uint256 rg6, address rg7, uint8 rg8, bytes32 rg9, bytes32 rg10) with:
         gas gas_remaining - 710 wei
        args 0, call.data[292] xor 2663505901936468581 << 128, address(call.data[484] xor 0x7ff100a59d8c6e06b2ca53908a13291046ed10b82f895871a5cd2fc5733e7a49), call.data[164] xor 308230970961217877 << 128, call.data[36] xor 10998487 << 128, call.data[68] xor 9035488 << 128, address(call.data[324] xor 0x38f0a9c12a13a157e2ee5df86c3a4262787962b2), call.data[132] xor 7 << 248, call.data[388] xor 0xeaac068e1e14658171be5845aee106e7432e5e101d9acfd984b86ab75d2402f, call.data[452] xor 0x9e61c40f9959f058286000b570ec51354b998556ffb8b4c2e3d1d1b5a1e9a7e8
    require ext_call.success
    return ext_call.return_data[0]
}

function sub_4acbbffe(?) {
    require ext_code.size(stor0)
    call stor0.availableVolume(address rg1, uint256 rg2, address rg3, uint256 rg4, uint256 rg5, uint256 rg6, address rg7, uint8 rg8, bytes32 rg9, bytes32 rg10) with:
         gas gas_remaining - 710 wei
        args address(call.data[484] xor 0x7ff100a59d8c6e06b2ca53908a13291046ed10b82f895871a5cd2fc5733e7a49), call.data[260] xor 5165049298448834125 << 128, 0, uint128(call.data[196]) xor 3912207194567020360, call.data[100] xor 3875752 << 128, call.data[4] xor 77825925 << 128, address(call.data[356] xor 0x1cb0018c25ef713474174fa3750cc2812c4cc82a), call.data[228] xor 7 << 248, call.data[516] xor 0x5784c6840f36b505d94d20449d80675b2bc77152abd4bb1025ea9dad5616fd1d, call.data[420] xor 0x4cecc1f9e758dc09a600ee0c1d3ae0637a29e09a760d2dd92b94c1a656ec5550
    require ext_call.success
    return ext_call.return_data[0]
}

function sub_c8125386(?) {
    if 0x9fda5c28131f25eee716c9bb9e3abf09173f965a != msg.sender:
        if 0xdb7cd62c2350b7dee1fe336f2a2941af4dccf055 != msg.sender:
            if 0x175514606b8a83a64f7c2e4c01bb4f3efa7d0bf7 != msg.sender:
                require msg.sender == 0xcab5e39af48be66fb04703ca41c5eccc2584d23e
    require ext_code.size(stor0)
    call stor0.trade(address rg1, uint256 rg2, address rg3, uint256 rg4, uint256 rg5, uint256 rg6, address rg7, uint8 rg8, bytes32 rg9, bytes32 rg10, uint256 rg11) with:
         gas gas_remaining - 710 wei
        args 0, 0, arg5 xor 5165049298448834125 << 128, 0, uint128(arg3 xor 3912207194567020360), arg2 xor 3875752 << 128, arg1 xor 77825925 << 128, address(arg6 xor 0x1cb0018c25ef713474174fa3750cc2812c4cc82a), arg4 xor 7 << 248, arg8 xor 0x5784c6840f36b505d94d20449d80675b2bc77152abd4bb1025ea9dad5616fd1d, arg7 xor 0x4cecc1f9e758dc09a600ee0c1d3ae0637a29e09a760d2dd92b94c1a656ec5550, arg9
    require ext_call.success
}

function sub_f6f4af73(?) {
    if 0x9fda5c28131f25eee716c9bb9e3abf09173f965a != msg.sender:
        if 0xdb7cd62c2350b7dee1fe336f2a2941af4dccf055 != msg.sender:
            if 0x175514606b8a83a64f7c2e4c01bb4f3efa7d0bf7 != msg.sender:
                require msg.sender == 0xcab5e39af48be66fb04703ca41c5eccc2584d23e
    require ext_code.size(stor0)
    call stor0.trade(address rg1, uint256 rg2, address rg3, uint256 rg4, uint256 rg5, uint256 rg6, address rg7, uint8 rg8, bytes32 rg9, bytes32 rg10, uint256 rg11) with:
         gas gas_remaining - 710 wei
        args 0, 0, arg5 xor 2663505901936468581 << 128, address(arg9 xor 0x7ff100a59d8c6e06b2ca53908a13291046ed10b82f895871a5cd2fc5733e7a49), uint128(arg4 xor 308230970961217877), arg1 xor 10998487 << 128, arg2 xor 9035488 << 128, address(arg6 xor 0x38f0a9c12a13a157e2ee5df86c3a4262787962b2), arg3 xor 7 << 248, arg7 xor 0xeaac068e1e14658171be5845aee106e7432e5e101d9acfd984b86ab75d2402f, arg8 xor 0x9e61c40f9959f058286000b570ec51354b998556ffb8b4c2e3d1d1b5a1e9a7e8, arg10
    require ext_call.success
}

function sub_efea3583(?) {
    if 0x9fda5c28131f25eee716c9bb9e3abf09173f965a != msg.sender:
        if 0xdb7cd62c2350b7dee1fe336f2a2941af4dccf055 != msg.sender:
            if 0x175514606b8a83a64f7c2e4c01bb4f3efa7d0bf7 != msg.sender:
                require msg.sender == 0xcab5e39af48be66fb04703ca41c5eccc2584d23e
    require ext_code.size(stor0)
    call stor0.availableVolume(address rg1, uint256 rg2, address rg3, uint256 rg4, uint256 rg5, uint256 rg6, address rg7, uint8 rg8, bytes32 rg9, bytes32 rg10) with:
         gas gas_remaining - 710 wei
        args address(call.data[484] xor 0x7ff100a59d8c6e06b2ca53908a13291046ed10b82f895871a5cd2fc5733e7a49), call.data[260] xor 5165049298448834125 << 128, 0, uint128(call.data[196]) xor 3912207194567020360, call.data[100] xor 3875752 << 128, call.data[4] xor 77825925 << 128, address(call.data[356] xor 0x1cb0018c25ef713474174fa3750cc2812c4cc82a), call.data[228] xor 7 << 248, call.data[516] xor 0x5784c6840f36b505d94d20449d80675b2bc77152abd4bb1025ea9dad5616fd1d, call.data[420] xor 0x4cecc1f9e758dc09a600ee0c1d3ae0637a29e09a760d2dd92b94c1a656ec5550
    require ext_call.success
    require uint128(call.data[260] xor 5165049298448834125)
    if ext_call.return_data[0] * uint128(call.data[196] xor 3912207194567020360) / uint128(call.data[260] xor 5165049298448834125) >= 140000 * block.gasprice:
        require ext_code.size(stor0)
        call stor0.availableVolume(address rg1, uint256 rg2, address rg3, uint256 rg4, uint256 rg5, uint256 rg6, address rg7, uint8 rg8, bytes32 rg9, bytes32 rg10) with:
             gas gas_remaining - 710 wei
            args 0, call.data[292] xor 2663505901936468581 << 128, address(call.data[484] xor 0x7ff100a59d8c6e06b2ca53908a13291046ed10b82f895871a5cd2fc5733e7a49), call.data[164] xor 308230970961217877 << 128, call.data[36] xor 10998487 << 128, call.data[68] xor 9035488 << 128, address(call.data[324] xor 0x38f0a9c12a13a157e2ee5df86c3a4262787962b2), call.data[132] xor 7 << 248, call.data[388] xor 0xeaac068e1e14658171be5845aee106e7432e5e101d9acfd984b86ab75d2402f, call.data[452] xor 0x9e61c40f9959f058286000b570ec51354b998556ffb8b4c2e3d1d1b5a1e9a7e8
        require ext_call.success
        if ext_call.return_data[0] >= 4000:
            require ext_code.size(stor0)
            call stor0.balanceOf(address rg1, address rg2) with:
                 gas gas_remaining - 710 wei
                args 0, this.address
            require ext_call.success
            require uint128(call.data[292] xor 2663505901936468581)
            if 1000 * ext_call.return_data[0] / 1003 < ext_call.return_data[0]:
                if 1000 * ext_call.return_data[0] / 1003 * uint128(call.data[164] xor 308230970961217877) / uint128(call.data[292] xor 2663505901936468581) <= ext_call.return_data[0]:
                    require uint128(call.data[260] xor 5165049298448834125)
                    if 1000 * ext_call.return_data[0] / 1003 * uint128(call.data[164] xor 308230970961217877) / uint128(call.data[292] xor 2663505901936468581) * uint128(call.data[196] xor 3912207194567020360) / uint128(call.data[260] xor 5165049298448834125) < 1000 * ext_call.return_data[0] / 1003:
                        emit 0x51bf8aa8: 1000 * ext_call.return_data[0] / 1003, 1000 * ext_call.return_data[0] / 1003 * uint128(call.data[164] xor 308230970961217877) / uint128(call.data[292] xor 2663505901936468581)
                    else:
                        if (1000 * ext_call.return_data[0] / 1003 * uint128(call.data[164] xor 308230970961217877) / uint128(call.data[292] xor 2663505901936468581) * uint128(call.data[196] xor 3912207194567020360) / uint128(call.data[260] xor 5165049298448834125)) - (1000 * ext_call.return_data[0] / 1003) >= 110000 * block.gasprice:
                            require ext_code.size(stor0)
                            call stor0.trade(address rg1, uint256 rg2, address rg3, uint256 rg4, uint256 rg5, uint256 rg6, address rg7, uint8 rg8, bytes32 rg9, bytes32 rg10, uint256 rg11) with:
                                 gas gas_remaining - 710 wei
                                args 0, call.data[292] xor 2663505901936468581 << 128, address(call.data[484] xor 0x7ff100a59d8c6e06b2ca53908a13291046ed10b82f895871a5cd2fc5733e7a49), call.data[164] xor 308230970961217877 << 128, call.data[36] xor 10998487 << 128, call.data[68] xor 9035488 << 128, address(call.data[324] xor 0x38f0a9c12a13a157e2ee5df86c3a4262787962b2), call.data[132] xor 7 << 248, call.data[388] xor 0xeaac068e1e14658171be5845aee106e7432e5e101d9acfd984b86ab75d2402f, call.data[452] xor 0x9e61c40f9959f058286000b570ec51354b998556ffb8b4c2e3d1d1b5a1e9a7e8, 1000 * ext_call.return_data[0] / 1003
                            require ext_call.success
                            require ext_code.size(stor0)
                            call stor0.trade(address rg1, uint256 rg2, address rg3, uint256 rg4, uint256 rg5, uint256 rg6, address rg7, uint8 rg8, bytes32 rg9, bytes32 rg10, uint256 rg11) with:
                                 gas gas_remaining - 710 wei
                                args address(call.data[484] xor 0x7ff100a59d8c6e06b2ca53908a13291046ed10b82f895871a5cd2fc5733e7a49), call.data[260] xor 5165049298448834125 << 128, 0, call.data[196] xor 3912207194567020360 << 128, call.data[100] xor 3875752 << 128, call.data[4] xor 77825925 << 128, address(call.data[356] xor 0x1cb0018c25ef713474174fa3750cc2812c4cc82a), call.data[228] xor 7 << 248, call.data[516] xor 0x5784c6840f36b505d94d20449d80675b2bc77152abd4bb1025ea9dad5616fd1d, call.data[420] xor 0x4cecc1f9e758dc09a600ee0c1d3ae0637a29e09a760d2dd92b94c1a656ec5550, 1000 * 1000 * ext_call.return_data[0] / 1003 * uint128(call.data[164] xor 308230970961217877) / uint128(call.data[292] xor 2663505901936468581) / 1003
                            require ext_call.success
                else:
                    require uint128(call.data[164] xor 308230970961217877)
                    require uint128(call.data[292] xor 2663505901936468581)
                    require uint128(call.data[260] xor 5165049298448834125)
                    if 1003 * ext_call.return_data[0] / 1000 * uint128(call.data[292] xor 2663505901936468581) / uint128(call.data[164] xor 308230970961217877) * uint128(call.data[164] xor 308230970961217877) / uint128(call.data[292] xor 2663505901936468581) * uint128(call.data[196] xor 3912207194567020360) / uint128(call.data[260] xor 5165049298448834125) < 1003 * ext_call.return_data[0] / 1000 * uint128(call.data[292] xor 2663505901936468581) / uint128(call.data[164] xor 308230970961217877):
                        emit 0x51bf8aa8: 1003 * ext_call.return_data[0] / 1000 * uint128(call.data[292] xor 2663505901936468581) / uint128(call.data[164] xor 308230970961217877), 1003 * ext_call.return_data[0] / 1000 * uint128(call.data[292] xor 2663505901936468581) / uint128(call.data[164] xor 308230970961217877) * uint128(call.data[164] xor 308230970961217877) / uint128(call.data[292] xor 2663505901936468581)
                    else:
                        if (1003 * ext_call.return_data[0] / 1000 * uint128(call.data[292] xor 2663505901936468581) / uint128(call.data[164] xor 308230970961217877) * uint128(call.data[164] xor 308230970961217877) / uint128(call.data[292] xor 2663505901936468581) * uint128(call.data[196] xor 3912207194567020360) / uint128(call.data[260] xor 5165049298448834125)) - (1003 * ext_call.return_data[0] / 1000 * uint128(call.data[292] xor 2663505901936468581) / uint128(call.data[164] xor 308230970961217877)) >= 110000 * block.gasprice:
                            require ext_code.size(stor0)
                            call stor0.trade(address rg1, uint256 rg2, address rg3, uint256 rg4, uint256 rg5, uint256 rg6, address rg7, uint8 rg8, bytes32 rg9, bytes32 rg10, uint256 rg11) with:
                                 gas gas_remaining - 710 wei
                                args 0, call.data[292] xor 2663505901936468581 << 128, address(call.data[484] xor 0x7ff100a59d8c6e06b2ca53908a13291046ed10b82f895871a5cd2fc5733e7a49), call.data[164] xor 308230970961217877 << 128, call.data[36] xor 10998487 << 128, call.data[68] xor 9035488 << 128, address(call.data[324] xor 0x38f0a9c12a13a157e2ee5df86c3a4262787962b2), call.data[132] xor 7 << 248, call.data[388] xor 0xeaac068e1e14658171be5845aee106e7432e5e101d9acfd984b86ab75d2402f, call.data[452] xor 0x9e61c40f9959f058286000b570ec51354b998556ffb8b4c2e3d1d1b5a1e9a7e8, 1003 * ext_call.return_data[0] / 1000 * uint128(call.data[292] xor 2663505901936468581) / uint128(call.data[164] xor 308230970961217877)
                            require ext_call.success
                            require ext_code.size(stor0)
                            call stor0.trade(address rg1, uint256 rg2, address rg3, uint256 rg4, uint256 rg5, uint256 rg6, address rg7, uint8 rg8, bytes32 rg9, bytes32 rg10, uint256 rg11) with:
                                 gas gas_remaining - 710 wei
                                args address(call.data[484] xor 0x7ff100a59d8c6e06b2ca53908a13291046ed10b82f895871a5cd2fc5733e7a49), call.data[260] xor 5165049298448834125 << 128, 0, call.data[196] xor 3912207194567020360 << 128, call.data[100] xor 3875752 << 128, call.data[4] xor 77825925 << 128, address(call.data[356] xor 0x1cb0018c25ef713474174fa3750cc2812c4cc82a), call.data[228] xor 7 << 248, call.data[516] xor 0x5784c6840f36b505d94d20449d80675b2bc77152abd4bb1025ea9dad5616fd1d, call.data[420] xor 0x4cecc1f9e758dc09a600ee0c1d3ae0637a29e09a760d2dd92b94c1a656ec5550, 1000 * 1003 * ext_call.return_data[0] / 1000 * uint128(call.data[292] xor 2663505901936468581) / uint128(call.data[164] xor 308230970961217877) * uint128(call.data[164] xor 308230970961217877) / uint128(call.data[292] xor 2663505901936468581) / 1003
                            require ext_call.success
            else:
                if ext_call.return_data[0] * uint128(call.data[164] xor 308230970961217877) / uint128(call.data[292] xor 2663505901936468581) <= ext_call.return_data[0]:
                    require uint128(call.data[260] xor 5165049298448834125)
                    if ext_call.return_data[0] * uint128(call.data[164] xor 308230970961217877) / uint128(call.data[292] xor 2663505901936468581) * uint128(call.data[196] xor 3912207194567020360) / uint128(call.data[260] xor 5165049298448834125) < ext_call.return_data[0]:
                        emit 0x51bf8aa8: ext_call.return_data[0], ext_call.return_data[0] * uint128(call.data[164] xor 308230970961217877) / uint128(call.data[292] xor 2663505901936468581)
                    else:
                        if (ext_call.return_data[0] * uint128(call.data[164] xor 308230970961217877) / uint128(call.data[292] xor 2663505901936468581) * uint128(call.data[196] xor 3912207194567020360) / uint128(call.data[260] xor 5165049298448834125)) - ext_call.return_data[0] >= 110000 * block.gasprice:
                            require ext_code.size(stor0)
                            call stor0.trade(address rg1, uint256 rg2, address rg3, uint256 rg4, uint256 rg5, uint256 rg6, address rg7, uint8 rg8, bytes32 rg9, bytes32 rg10, uint256 rg11) with:
                                 gas gas_remaining - 710 wei
                                args 0, call.data[292] xor 2663505901936468581 << 128, address(call.data[484] xor 0x7ff100a59d8c6e06b2ca53908a13291046ed10b82f895871a5cd2fc5733e7a49), call.data[164] xor 308230970961217877 << 128, call.data[36] xor 10998487 << 128, call.data[68] xor 9035488 << 128, address(call.data[324] xor 0x38f0a9c12a13a157e2ee5df86c3a4262787962b2), call.data[132] xor 7 << 248, call.data[388] xor 0xeaac068e1e14658171be5845aee106e7432e5e101d9acfd984b86ab75d2402f, call.data[452] xor 0x9e61c40f9959f058286000b570ec51354b998556ffb8b4c2e3d1d1b5a1e9a7e8, ext_call.return_data[0]
                            require ext_call.success
                            require ext_code.size(stor0)
                            call stor0.trade(address rg1, uint256 rg2, address rg3, uint256 rg4, uint256 rg5, uint256 rg6, address rg7, uint8 rg8, bytes32 rg9, bytes32 rg10, uint256 rg11) with:
                                 gas gas_remaining - 710 wei
                                args address(call.data[484] xor 0x7ff100a59d8c6e06b2ca53908a13291046ed10b82f895871a5cd2fc5733e7a49), call.data[260] xor 5165049298448834125 << 128, 0, call.data[196] xor 3912207194567020360 << 128, call.data[100] xor 3875752 << 128, call.data[4] xor 77825925 << 128, address(call.data[356] xor 0x1cb0018c25ef713474174fa3750cc2812c4cc82a), call.data[228] xor 7 << 248, call.data[516] xor 0x5784c6840f36b505d94d20449d80675b2bc77152abd4bb1025ea9dad5616fd1d, call.data[420] xor 0x4cecc1f9e758dc09a600ee0c1d3ae0637a29e09a760d2dd92b94c1a656ec5550, 1000 * ext_call.return_data[0] * uint128(call.data[164] xor 308230970961217877) / uint128(call.data[292] xor 2663505901936468581) / 1003
                            require ext_call.success
                else:
                    require uint128(call.data[164] xor 308230970961217877)
                    require uint128(call.data[292] xor 2663505901936468581)
                    require uint128(call.data[260] xor 5165049298448834125)
                    if 1003 * ext_call.return_data[0] / 1000 * uint128(call.data[292] xor 2663505901936468581) / uint128(call.data[164] xor 308230970961217877) * uint128(call.data[164] xor 308230970961217877) / uint128(call.data[292] xor 2663505901936468581) * uint128(call.data[196] xor 3912207194567020360) / uint128(call.data[260] xor 5165049298448834125) < 1003 * ext_call.return_data[0] / 1000 * uint128(call.data[292] xor 2663505901936468581) / uint128(call.data[164] xor 308230970961217877):
                        emit 0x51bf8aa8: 1003 * ext_call.return_data[0] / 1000 * uint128(call.data[292] xor 2663505901936468581) / uint128(call.data[164] xor 308230970961217877), 1003 * ext_call.return_data[0] / 1000 * uint128(call.data[292] xor 2663505901936468581) / uint128(call.data[164] xor 308230970961217877) * uint128(call.data[164] xor 308230970961217877) / uint128(call.data[292] xor 2663505901936468581)
                    else:
                        if (1003 * ext_call.return_data[0] / 1000 * uint128(call.data[292] xor 2663505901936468581) / uint128(call.data[164] xor 308230970961217877) * uint128(call.data[164] xor 308230970961217877) / uint128(call.data[292] xor 2663505901936468581) * uint128(call.data[196] xor 3912207194567020360) / uint128(call.data[260] xor 5165049298448834125)) - (1003 * ext_call.return_data[0] / 1000 * uint128(call.data[292] xor 2663505901936468581) / uint128(call.data[164] xor 308230970961217877)) >= 110000 * block.gasprice:
                            require ext_code.size(stor0)
                            call stor0.trade(address rg1, uint256 rg2, address rg3, uint256 rg4, uint256 rg5, uint256 rg6, address rg7, uint8 rg8, bytes32 rg9, bytes32 rg10, uint256 rg11) with:
                                 gas gas_remaining - 710 wei
                                args 0, call.data[292] xor 2663505901936468581 << 128, address(call.data[484] xor 0x7ff100a59d8c6e06b2ca53908a13291046ed10b82f895871a5cd2fc5733e7a49), call.data[164] xor 308230970961217877 << 128, call.data[36] xor 10998487 << 128, call.data[68] xor 9035488 << 128, address(call.data[324] xor 0x38f0a9c12a13a157e2ee5df86c3a4262787962b2), call.data[132] xor 7 << 248, call.data[388] xor 0xeaac068e1e14658171be5845aee106e7432e5e101d9acfd984b86ab75d2402f, call.data[452] xor 0x9e61c40f9959f058286000b570ec51354b998556ffb8b4c2e3d1d1b5a1e9a7e8, 1003 * ext_call.return_data[0] / 1000 * uint128(call.data[292] xor 2663505901936468581) / uint128(call.data[164] xor 308230970961217877)
                            require ext_call.success
                            require ext_code.size(stor0)
                            call stor0.trade(address rg1, uint256 rg2, address rg3, uint256 rg4, uint256 rg5, uint256 rg6, address rg7, uint8 rg8, bytes32 rg9, bytes32 rg10, uint256 rg11) with:
                                 gas gas_remaining - 710 wei
                                args address(call.data[484] xor 0x7ff100a59d8c6e06b2ca53908a13291046ed10b82f895871a5cd2fc5733e7a49), call.data[260] xor 5165049298448834125 << 128, 0, call.data[196] xor 3912207194567020360 << 128, call.data[100] xor 3875752 << 128, call.data[4] xor 77825925 << 128, address(call.data[356] xor 0x1cb0018c25ef713474174fa3750cc2812c4cc82a), call.data[228] xor 7 << 248, call.data[516] xor 0x5784c6840f36b505d94d20449d80675b2bc77152abd4bb1025ea9dad5616fd1d, call.data[420] xor 0x4cecc1f9e758dc09a600ee0c1d3ae0637a29e09a760d2dd92b94c1a656ec5550, 1000 * 1003 * ext_call.return_data[0] / 1000 * uint128(call.data[292] xor 2663505901936468581) / uint128(call.data[164] xor 308230970961217877) * uint128(call.data[164] xor 308230970961217877) / uint128(call.data[292] xor 2663505901936468581) / 1003
                            require ext_call.success
            return 0
        else:
            return 0
    else:
        return 0
}



}

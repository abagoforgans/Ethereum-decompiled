contract main {




// =====================  Runtime code  =====================


mapping of uint8 stor0;
mapping of uint8 stor1;
mapping of uint8 stor2;
uint256 remaining;
uint256 sub_fab49f15;
mapping of struct sub_9020bb82;
address tokenAddress;
address stor7;

function getTokenAddress() payable {
    return tokenAddress
}

function isWhitelisted(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1
    return bool(stor1[address(arg1)])
}

function sub_9020bb82(?) payable {
    require calldata.size - 4 >= 32
    return sub_9020bb82[address(arg1)].field_256
}

function isWhitelistAdmin(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1
    return bool(stor0[address(arg1)])
}

function isTeamMember(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1
    return bool(stor2[address(arg1)])
}

function getRemaining() payable {
    return remaining
}

function sub_ee04d202(?) payable {
    require calldata.size - 4 >= 32
    return sub_9020bb82[address(arg1)].field_512
}

function sub_fab49f15(?) payable {
    return sub_fab49f15
}

function _fallback() payable {
    revert
}

function renounceWhitelisted() payable {
    require msg.sender
    require stor1[address(msg.sender)]
    stor1[address(msg.sender)] = 0
    emit WhitelistedRemoved(msg.sender);
}

function renounceWhitelistAdmin() payable {
    require msg.sender
    require stor0[address(msg.sender)]
    stor0[address(msg.sender)] = 0
    emit WhitelistAdminRemoved(msg.sender);
}

function removeTeam(address arg1) payable {
    require calldata.size - 4 >= 32
    require msg.sender
    require stor0[address(msg.sender)]
    require arg1
    require stor2[address(arg1)]
    stor2[address(arg1)] = 0
    emit 0x113ac15d: arg1
}

function removeWhitelisted(address arg1) payable {
    require calldata.size - 4 >= 32
    require msg.sender
    require stor0[address(msg.sender)]
    require arg1
    require stor1[address(arg1)]
    stor1[address(arg1)] = 0
    emit WhitelistedRemoved(arg1);
}

function addWhitelistAdmin(address arg1) payable {
    require calldata.size - 4 >= 32
    require msg.sender
    require stor0[address(msg.sender)]
    require arg1
    require not stor0[address(arg1)]
    stor0[address(arg1)] = 1
    emit WhitelistAdminAdded(arg1);
}

function sub_77c679fc(?) payable {
    require calldata.size - 4 >= 32
    if 0x26a9f0b85db899237c6f07603475df43eb366f8b != msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    49,
                    0x70737761704d61737465723a206f6e6c792073776170206d61737465722063616e2063616c6c2074686973206d65746869,
                    mem[213 len 15]
    require ext_code.size(stor7)
    call stor7.0x23b872dd with:
         gas gas_remaining wei
        args msg.sender, address(this.address), arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0]
    require ext_code.size(tokenAddress)
    call tokenAddress.0x40c10f19 with:
         gas gas_remaining wei
        args msg.sender, arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    emit 0xdcc77834: arg1
}

function approveSwap(address arg1) payable {
    require calldata.size - 4 >= 32
    require msg.sender
    require stor0[address(msg.sender)]
    if not arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    36,
                    0x6f617070726f7665537761703a20696e76616c6964207377617070657220616464726573,
                    mem[200 len 28]
    require ext_code.size(stor7)
    staticcall stor7.0x70a08231 with:
            gas gas_remaining wei
           args arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if ext_call.return_data[0] <= 0:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    46,
                    0x73617070726f7665537761703a20746865207377617070657220746f6b656e2062616c616e6365206973207a6572,
                    mem[210 len 18]
    if sub_9020bb82[address(arg1)].field_0:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    48,
                    0x77617070726f7665537761703a20746865207573657220616c726561647920737761707065642068697320746f6b656e,
                    mem[212 len 16]
    require arg1
    require not stor1[address(arg1)]
    stor1[address(arg1)] = 1
    emit WhitelistedAdded(arg1);
    sub_9020bb82[address(arg1)].field_0 = 1
    sub_9020bb82[address(arg1)].field_256 = ext_call.return_data[0]
    sub_9020bb82[address(arg1)].field_512 = 0
    emit 0xcdc6794d: address(arg1), ext_call.return_data[0]
}

function sub_e59340d9(?) payable {
    require calldata.size - 4 >= 32
    require msg.sender
    require stor0[address(msg.sender)]
    if not arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    33,
                    0x77617070726f76655465616d3a20696e76616c6964207465616d20616464726573,
                    mem[197 len 31]
    require msg.sender
    require stor0[address(msg.sender)]
    require arg1
    require not stor2[address(arg1)]
    stor2[address(arg1)] = 1
    emit 0xcb5d35f3: arg1
    require msg.sender
    require stor0[address(msg.sender)]
    if not arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    36,
                    0x6f617070726f7665537761703a20696e76616c6964207377617070657220616464726573,
                    mem[200 len 28]
    require ext_code.size(stor7)
    staticcall stor7.0x70a08231 with:
            gas gas_remaining wei
           args arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if ext_call.return_data[0] <= 0:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    46,
                    0x73617070726f7665537761703a20746865207377617070657220746f6b656e2062616c616e6365206973207a6572,
                    mem[210 len 18]
    if sub_9020bb82[address(arg1)].field_0:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    48,
                    0x77617070726f7665537761703a20746865207573657220616c726561647920737761707065642068697320746f6b656e,
                    mem[212 len 16]
    require arg1
    require not stor1[address(arg1)]
    stor1[address(arg1)] = 1
    emit WhitelistedAdded(arg1);
    sub_9020bb82[address(arg1)].field_0 = 1
    sub_9020bb82[address(arg1)].field_256 = ext_call.return_data[0]
    sub_9020bb82[address(arg1)].field_512 = 0
    emit 0xcdc6794d: address(arg1), ext_call.return_data[0]
}

function sub_a2a09c91(?) payable {
    require msg.sender
    require stor2[address(msg.sender)]
    if not sub_9020bb82[address(msg.sender)].field_256:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    38,
                    0xfe737761705465616d3a206e6f20746f6b656e7320617661696c61626c6520666f7220737761,
                    mem[202 len 26]
    if block.timestamp < sub_9020bb82[address(msg.sender)].field_512 + (24 * 3600):
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    50,
                    0x73737761705465616d3a207465616d206d656d6265722063616e206e6f742063616c6c2074686973206d6574686f64206e6f,
                    mem[214 len 14]
    require ext_code.size(stor7)
    staticcall stor7.0x70a08231 with:
            gas gas_remaining wei
           args msg.sender
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(stor7)
    if sub_9020bb82[address(msg.sender)].field_256 <= 30000 * 10^18:
        if sub_9020bb82[address(msg.sender)].field_256 <= ext_call.return_data[0]:
            call stor7.0x23b872dd with:
                 gas gas_remaining wei
                args msg.sender, address(this.address), sub_9020bb82[address(msg.sender)].field_256
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_call.return_data[0]
            require ext_code.size(tokenAddress)
            call tokenAddress.0x40c10f19 with:
                 gas gas_remaining wei
                args msg.sender, sub_9020bb82[address(msg.sender)].field_256
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require sub_9020bb82[address(msg.sender)].field_256 <= sub_9020bb82[address(msg.sender)].field_256
            sub_9020bb82[address(msg.sender)].field_256 = 0
            sub_9020bb82[address(msg.sender)].field_512 = block.timestamp
            emit 0x9ac771f6: msg.sender, sub_9020bb82[address(msg.sender)].field_256
        else:
            staticcall stor7.0x70a08231 with:
                    gas gas_remaining wei
                   args msg.sender
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_code.size(stor7)
            call stor7.0x23b872dd with:
                 gas gas_remaining wei
                args msg.sender, address(this.address), ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_call.return_data[0]
            require ext_code.size(tokenAddress)
            call tokenAddress.0x40c10f19 with:
                 gas gas_remaining wei
                args msg.sender, ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_call.return_data[0] <= sub_9020bb82[address(msg.sender)].field_256
            sub_9020bb82[address(msg.sender)].field_256 -= ext_call.return_data[0]
            sub_9020bb82[address(msg.sender)].field_512 = block.timestamp
            emit 0x9ac771f6: msg.sender, ext_call.return_data[0]
    else:
        if 30000 * 10^18 <= ext_call.return_data[0]:
            call stor7.0x23b872dd with:
                 gas gas_remaining wei
                args msg.sender, address(this.address), 30000 * 10^18
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_call.return_data[0]
            require ext_code.size(tokenAddress)
            call tokenAddress.0x40c10f19 with:
                 gas gas_remaining wei
                args msg.sender, 30000 * 10^18
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require 30000 * 10^18 <= sub_9020bb82[address(msg.sender)].field_256
            sub_9020bb82[address(msg.sender)].field_256 -= 30000 * 10^18
            sub_9020bb82[address(msg.sender)].field_512 = block.timestamp
            emit 0x9ac771f6: msg.sender, 30000 * 10^18
        else:
            staticcall stor7.0x70a08231 with:
                    gas gas_remaining wei
                   args msg.sender
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_code.size(stor7)
            call stor7.0x23b872dd with:
                 gas gas_remaining wei
                args msg.sender, address(this.address), ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_call.return_data[0]
            require ext_code.size(tokenAddress)
            call tokenAddress.0x40c10f19 with:
                 gas gas_remaining wei
                args msg.sender, ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_call.return_data[0] <= sub_9020bb82[address(msg.sender)].field_256
            sub_9020bb82[address(msg.sender)].field_256 -= ext_call.return_data[0]
            sub_9020bb82[address(msg.sender)].field_512 = block.timestamp
            emit 0x9ac771f6: msg.sender, ext_call.return_data[0]
}

function swap() payable {
    require msg.sender
    require stor1[address(msg.sender)]
    if block.timestamp >= sub_fab49f15 + (24 * 3600):
        sub_fab49f15 = block.timestamp
        remaining = 100000 * 10^18
    if not remaining:
        revert with 0, 'swap: no tokens available'
    if not sub_9020bb82[address(msg.sender)].field_256:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    34,
                    0x73737761703a206e6f20746f6b656e7320617661696c61626c6520666f7220737761,
                    mem[198 len 30]
    if block.timestamp < sub_9020bb82[address(msg.sender)].field_512 + (24 * 3600):
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    45,
                    0x64737761703a206d73672e73656e6465722063616e206e6f742063616c6c2074686973206d6574686f64206e6f,
                    mem[209 len 19]
    require ext_code.size(stor7)
    staticcall stor7.0x70a08231 with:
            gas gas_remaining wei
           args msg.sender
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(stor7)
    if sub_9020bb82[address(msg.sender)].field_256 <= 10000 * 10^18:
        if sub_9020bb82[address(msg.sender)].field_256 <= remaining:
            if sub_9020bb82[address(msg.sender)].field_256 <= ext_call.return_data[0]:
                call stor7.0x23b872dd with:
                     gas gas_remaining wei
                    args msg.sender, address(this.address), sub_9020bb82[address(msg.sender)].field_256
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_call.return_data[0]
                require ext_code.size(tokenAddress)
                call tokenAddress.0x40c10f19 with:
                     gas gas_remaining wei
                    args msg.sender, sub_9020bb82[address(msg.sender)].field_256
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require sub_9020bb82[address(msg.sender)].field_256 <= sub_9020bb82[address(msg.sender)].field_256
                sub_9020bb82[address(msg.sender)].field_256 = 0
                sub_9020bb82[address(msg.sender)].field_512 = block.timestamp
                require sub_9020bb82[address(msg.sender)].field_256 <= remaining
                remaining -= sub_9020bb82[address(msg.sender)].field_256
                emit 0x560c2d01: msg.sender, sub_9020bb82[address(msg.sender)].field_256
            else:
                staticcall stor7.0x70a08231 with:
                        gas gas_remaining wei
                       args msg.sender
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_code.size(stor7)
                call stor7.0x23b872dd with:
                     gas gas_remaining wei
                    args msg.sender, address(this.address), ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_call.return_data[0]
                require ext_code.size(tokenAddress)
                call tokenAddress.0x40c10f19 with:
                     gas gas_remaining wei
                    args msg.sender, ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_call.return_data[0] <= sub_9020bb82[address(msg.sender)].field_256
                sub_9020bb82[address(msg.sender)].field_256 -= ext_call.return_data[0]
                sub_9020bb82[address(msg.sender)].field_512 = block.timestamp
                require ext_call.return_data[0] <= remaining
                remaining -= ext_call.return_data[0]
                emit 0x560c2d01: msg.sender, ext_call.return_data[0]
        else:
            if remaining <= ext_call.return_data[0]:
                call stor7.0x23b872dd with:
                     gas gas_remaining wei
                    args msg.sender, address(this.address), remaining
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_call.return_data[0]
                require ext_code.size(tokenAddress)
                call tokenAddress.0x40c10f19 with:
                     gas gas_remaining wei
                    args msg.sender, remaining
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require remaining <= sub_9020bb82[address(msg.sender)].field_256
                sub_9020bb82[address(msg.sender)].field_256 -= remaining
                sub_9020bb82[address(msg.sender)].field_512 = block.timestamp
                require remaining <= remaining
                remaining = 0
                emit 0x560c2d01: msg.sender, remaining
            else:
                staticcall stor7.0x70a08231 with:
                        gas gas_remaining wei
                       args msg.sender
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_code.size(stor7)
                call stor7.0x23b872dd with:
                     gas gas_remaining wei
                    args msg.sender, address(this.address), ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_call.return_data[0]
                require ext_code.size(tokenAddress)
                call tokenAddress.0x40c10f19 with:
                     gas gas_remaining wei
                    args msg.sender, ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_call.return_data[0] <= sub_9020bb82[address(msg.sender)].field_256
                sub_9020bb82[address(msg.sender)].field_256 -= ext_call.return_data[0]
                sub_9020bb82[address(msg.sender)].field_512 = block.timestamp
                require ext_call.return_data[0] <= remaining
                remaining -= ext_call.return_data[0]
                emit 0x560c2d01: msg.sender, ext_call.return_data[0]
    else:
        if 10000 * 10^18 <= remaining:
            if 10000 * 10^18 <= ext_call.return_data[0]:
                call stor7.0x23b872dd with:
                     gas gas_remaining wei
                    args msg.sender, address(this.address), 10000 * 10^18
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_call.return_data[0]
                require ext_code.size(tokenAddress)
                call tokenAddress.0x40c10f19 with:
                     gas gas_remaining wei
                    args msg.sender, 10000 * 10^18
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require 10000 * 10^18 <= sub_9020bb82[address(msg.sender)].field_256
                sub_9020bb82[address(msg.sender)].field_256 -= 10000 * 10^18
                sub_9020bb82[address(msg.sender)].field_512 = block.timestamp
                require 10000 * 10^18 <= remaining
                remaining -= 10000 * 10^18
                emit 0x560c2d01: msg.sender, 10000 * 10^18
            else:
                staticcall stor7.0x70a08231 with:
                        gas gas_remaining wei
                       args msg.sender
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_code.size(stor7)
                call stor7.0x23b872dd with:
                     gas gas_remaining wei
                    args msg.sender, address(this.address), ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_call.return_data[0]
                require ext_code.size(tokenAddress)
                call tokenAddress.0x40c10f19 with:
                     gas gas_remaining wei
                    args msg.sender, ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_call.return_data[0] <= sub_9020bb82[address(msg.sender)].field_256
                sub_9020bb82[address(msg.sender)].field_256 -= ext_call.return_data[0]
                sub_9020bb82[address(msg.sender)].field_512 = block.timestamp
                require ext_call.return_data[0] <= remaining
                remaining -= ext_call.return_data[0]
                emit 0x560c2d01: msg.sender, ext_call.return_data[0]
        else:
            if remaining <= ext_call.return_data[0]:
                call stor7.0x23b872dd with:
                     gas gas_remaining wei
                    args msg.sender, address(this.address), remaining
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_call.return_data[0]
                require ext_code.size(tokenAddress)
                call tokenAddress.0x40c10f19 with:
                     gas gas_remaining wei
                    args msg.sender, remaining
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require remaining <= sub_9020bb82[address(msg.sender)].field_256
                sub_9020bb82[address(msg.sender)].field_256 -= remaining
                sub_9020bb82[address(msg.sender)].field_512 = block.timestamp
                require remaining <= remaining
                remaining = 0
                emit 0x560c2d01: msg.sender, remaining
            else:
                staticcall stor7.0x70a08231 with:
                        gas gas_remaining wei
                       args msg.sender
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_code.size(stor7)
                call stor7.0x23b872dd with:
                     gas gas_remaining wei
                    args msg.sender, address(this.address), ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_call.return_data[0]
                require ext_code.size(tokenAddress)
                call tokenAddress.0x40c10f19 with:
                     gas gas_remaining wei
                    args msg.sender, ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_call.return_data[0] <= sub_9020bb82[address(msg.sender)].field_256
                sub_9020bb82[address(msg.sender)].field_256 -= ext_call.return_data[0]
                sub_9020bb82[address(msg.sender)].field_512 = block.timestamp
                require ext_call.return_data[0] <= remaining
                remaining -= ext_call.return_data[0]
                emit 0x560c2d01: msg.sender, ext_call.return_data[0]
}



}

contract main {




// =====================  Runtime code  =====================


address owner;
uint256 stor1;
address stor2;
address tokenAddress;
uint256 stor4;
uint256 stor5;
uint256 stor6;
uint256 stor7;
uint256 stor8;

function owner() {
    return owner
}

function token() {
    return tokenAddress
}

function _fallback() payable {
    revert
}

function getTokensCount() {
    require ext_code.size(tokenAddress)
    call tokenAddress.0x18160ddd with:
         gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    return (ext_call.return_data[0] / 10^18)
}

function getBalance(address arg1) {
    require msg.sender == owner
    require ext_code.size(tokenAddress)
    call tokenAddress.0x70a08231 with:
         gas gas_remaining wei
        args arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    return (ext_call.return_data[0] / 10^18)
}

function finishMinting() {
    require msg.sender == owner
    require ext_code.size(tokenAddress)
    call tokenAddress.0x18160ddd with:
         gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if not ext_call.return_data[0]:
        require -stor1 + 100 > 0
        require -stor1 + 100
        require ext_code.size(tokenAddress)
        call tokenAddress.mint(address arg1, uint256 arg2) with:
             gas gas_remaining wei
            args stor2, 0 / -stor1 + 100
    else:
        require ext_call.return_data[0]
        require ext_call.return_data[0] * stor1 / ext_call.return_data[0] == stor1
        require -stor1 + 100 > 0
        require -stor1 + 100
        require ext_code.size(tokenAddress)
        call tokenAddress.mint(address arg1, uint256 arg2) with:
             gas gas_remaining wei
            args stor2, ext_call.return_data[0] * stor1 / -stor1 + 100
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(tokenAddress)
    call tokenAddress.0x7d64bcb4 with:
         gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
}

function createTokens(address arg1, uint256 arg2) {
    require msg.sender == owner
    require block.timestamp > stor4
    require block.timestamp < stor5
    require arg1 != owner
    if block.timestamp < stor4:
        if block.timestamp < stor6:
            if block.timestamp < stor7:
                if block.timestamp < stor8:
                    if arg2:
                        require arg2
                        require 10^18 * arg2 / arg2 == 10^18
                        if 10^18 * arg2:
                            require 10^18 * arg2
                            require 10 * 10^18 * arg2 / 10^18 * arg2 == 10
                            require ext_code.size(tokenAddress)
                            call tokenAddress.mint(address arg1, uint256 arg2) with:
                                 gas gas_remaining wei
                                args owner, 10 * 10^18 * arg2 / 10
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            else:
                                require return_data.size >= 32
                                require ext_code.size(tokenAddress)
                                call tokenAddress.0x23b872dd with:
                                     gas gas_remaining wei
                                    args owner, address(arg1), 10 * 10^18 * arg2 / 10
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                else:
                                    require return_data.size >= 32
                        else:
                            require ext_code.size(tokenAddress)
                            call tokenAddress.mint(address arg1, uint256 arg2) with:
                                 gas gas_remaining wei
                                args owner, 0
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            else:
                                require return_data.size >= 32
                                require ext_code.size(tokenAddress)
                                call tokenAddress.0x23b872dd with:
                                     gas gas_remaining wei
                                    args owner, address(arg1), 0
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                else:
                                    require return_data.size >= 32
                    else:
                        require ext_code.size(tokenAddress)
                        call tokenAddress.mint(address arg1, uint256 arg2) with:
                             gas gas_remaining wei
                            args owner, 0
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        else:
                            require return_data.size >= 32
                            require ext_code.size(tokenAddress)
                            call tokenAddress.0x23b872dd with:
                                 gas gas_remaining wei
                                args owner, address(arg1), 0
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            else:
                                require return_data.size >= 32
                else:
                    if block.timestamp >= stor5:
                        if arg2:
                            require arg2
                            require 10^18 * arg2 / arg2 == 10^18
                            if 10^18 * arg2:
                                require 10^18 * arg2
                                require 10 * 10^18 * arg2 / 10^18 * arg2 == 10
                                require ext_code.size(tokenAddress)
                                call tokenAddress.mint(address arg1, uint256 arg2) with:
                                     gas gas_remaining wei
                                    args owner, 10 * 10^18 * arg2 / 10
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                else:
                                    require return_data.size >= 32
                                    require ext_code.size(tokenAddress)
                                    call tokenAddress.0x23b872dd with:
                                         gas gas_remaining wei
                                        args owner, address(arg1), 10 * 10^18 * arg2 / 10
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    else:
                                        require return_data.size >= 32
                            else:
                                require ext_code.size(tokenAddress)
                                call tokenAddress.mint(address arg1, uint256 arg2) with:
                                     gas gas_remaining wei
                                    args owner, 0
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                else:
                                    require return_data.size >= 32
                                    require ext_code.size(tokenAddress)
                                    call tokenAddress.0x23b872dd with:
                                         gas gas_remaining wei
                                        args owner, address(arg1), 0
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    else:
                                        require return_data.size >= 32
                        else:
                            require ext_code.size(tokenAddress)
                            call tokenAddress.mint(address arg1, uint256 arg2) with:
                                 gas gas_remaining wei
                                args owner, 0
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            else:
                                require return_data.size >= 32
                                require ext_code.size(tokenAddress)
                                call tokenAddress.0x23b872dd with:
                                     gas gas_remaining wei
                                    args owner, address(arg1), 0
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                else:
                                    require return_data.size >= 32
                    else:
                        if arg2:
                            require arg2
                            require 10^18 * arg2 / arg2 == 10^18
                            if 10^18 * arg2:
                                require 10^18 * arg2
                                require 10 * 10^18 * arg2 / 10^18 * arg2 == 10
                                require ext_code.size(tokenAddress)
                                call tokenAddress.mint(address arg1, uint256 arg2) with:
                                     gas gas_remaining wei
                                    args owner, 10 * 10^18 * arg2 / 10
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                else:
                                    require return_data.size >= 32
                                    require ext_code.size(tokenAddress)
                                    call tokenAddress.0x23b872dd with:
                                         gas gas_remaining wei
                                        args owner, address(arg1), 10 * 10^18 * arg2 / 10
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    else:
                                        require return_data.size >= 32
                            else:
                                require ext_code.size(tokenAddress)
                                call tokenAddress.mint(address arg1, uint256 arg2) with:
                                     gas gas_remaining wei
                                    args owner, 0
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                else:
                                    require return_data.size >= 32
                                    require ext_code.size(tokenAddress)
                                    call tokenAddress.0x23b872dd with:
                                         gas gas_remaining wei
                                        args owner, address(arg1), 0
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    else:
                                        require return_data.size >= 32
                        else:
                            require ext_code.size(tokenAddress)
                            call tokenAddress.mint(address arg1, uint256 arg2) with:
                                 gas gas_remaining wei
                                args owner, 0
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            else:
                                require return_data.size >= 32
                                require ext_code.size(tokenAddress)
                                call tokenAddress.0x23b872dd with:
                                     gas gas_remaining wei
                                    args owner, address(arg1), 0
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                else:
                                    require return_data.size >= 32
            else:
                if block.timestamp >= stor8:
                    if block.timestamp >= stor5:
                        if arg2:
                            require arg2
                            require 10^18 * arg2 / arg2 == 10^18
                            if 10^18 * arg2:
                                require 10^18 * arg2
                                require 10 * 10^18 * arg2 / 10^18 * arg2 == 10
                                require ext_code.size(tokenAddress)
                                call tokenAddress.mint(address arg1, uint256 arg2) with:
                                     gas gas_remaining wei
                                    args owner, 10 * 10^18 * arg2 / 10
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                else:
                                    require return_data.size >= 32
                                    require ext_code.size(tokenAddress)
                                    call tokenAddress.0x23b872dd with:
                                         gas gas_remaining wei
                                        args owner, address(arg1), 10 * 10^18 * arg2 / 10
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    else:
                                        require return_data.size >= 32
                            else:
                                require ext_code.size(tokenAddress)
                                call tokenAddress.mint(address arg1, uint256 arg2) with:
                                     gas gas_remaining wei
                                    args owner, 0
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                else:
                                    require return_data.size >= 32
                                    require ext_code.size(tokenAddress)
                                    call tokenAddress.0x23b872dd with:
                                         gas gas_remaining wei
                                        args owner, address(arg1), 0
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    else:
                                        require return_data.size >= 32
                        else:
                            require ext_code.size(tokenAddress)
                            call tokenAddress.mint(address arg1, uint256 arg2) with:
                                 gas gas_remaining wei
                                args owner, 0
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            else:
                                require return_data.size >= 32
                                require ext_code.size(tokenAddress)
                                call tokenAddress.0x23b872dd with:
                                     gas gas_remaining wei
                                    args owner, address(arg1), 0
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                else:
                                    require return_data.size >= 32
                    else:
                        if arg2:
                            require arg2
                            require 10^18 * arg2 / arg2 == 10^18
                            if 10^18 * arg2:
                                require 10^18 * arg2
                                require 10 * 10^18 * arg2 / 10^18 * arg2 == 10
                                require ext_code.size(tokenAddress)
                                call tokenAddress.mint(address arg1, uint256 arg2) with:
                                     gas gas_remaining wei
                                    args owner, 10 * 10^18 * arg2 / 10
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                else:
                                    require return_data.size >= 32
                                    require ext_code.size(tokenAddress)
                                    call tokenAddress.0x23b872dd with:
                                         gas gas_remaining wei
                                        args owner, address(arg1), 10 * 10^18 * arg2 / 10
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    else:
                                        require return_data.size >= 32
                            else:
                                require ext_code.size(tokenAddress)
                                call tokenAddress.mint(address arg1, uint256 arg2) with:
                                     gas gas_remaining wei
                                    args owner, 0
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                else:
                                    require return_data.size >= 32
                                    require ext_code.size(tokenAddress)
                                    call tokenAddress.0x23b872dd with:
                                         gas gas_remaining wei
                                        args owner, address(arg1), 0
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    else:
                                        require return_data.size >= 32
                        else:
                            require ext_code.size(tokenAddress)
                            call tokenAddress.mint(address arg1, uint256 arg2) with:
                                 gas gas_remaining wei
                                args owner, 0
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            else:
                                require return_data.size >= 32
                                require ext_code.size(tokenAddress)
                                call tokenAddress.0x23b872dd with:
                                     gas gas_remaining wei
                                    args owner, address(arg1), 0
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                else:
                                    require return_data.size >= 32
                else:
                    if arg2:
                        require arg2
                        require 10^18 * arg2 / arg2 == 10^18
                        if 10^18 * arg2:
                            require 10^18 * arg2
                            require 10 * 10^18 * arg2 / 10^18 * arg2 == 10
                            require ext_code.size(tokenAddress)
                            call tokenAddress.mint(address arg1, uint256 arg2) with:
                                 gas gas_remaining wei
                                args owner, 10 * 10^18 * arg2 / 9
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            else:
                                require return_data.size >= 32
                                require ext_code.size(tokenAddress)
                                call tokenAddress.0x23b872dd with:
                                     gas gas_remaining wei
                                    args owner, address(arg1), 10 * 10^18 * arg2 / 9
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                else:
                                    require return_data.size >= 32
                        else:
                            require ext_code.size(tokenAddress)
                            call tokenAddress.mint(address arg1, uint256 arg2) with:
                                 gas gas_remaining wei
                                args owner, 0
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            else:
                                require return_data.size >= 32
                                require ext_code.size(tokenAddress)
                                call tokenAddress.0x23b872dd with:
                                     gas gas_remaining wei
                                    args owner, address(arg1), 0
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                else:
                                    require return_data.size >= 32
                    else:
                        require ext_code.size(tokenAddress)
                        call tokenAddress.mint(address arg1, uint256 arg2) with:
                             gas gas_remaining wei
                            args owner, 0
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        else:
                            require return_data.size >= 32
                            require ext_code.size(tokenAddress)
                            call tokenAddress.0x23b872dd with:
                                 gas gas_remaining wei
                                args owner, address(arg1), 0
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            else:
                                require return_data.size >= 32
        else:
            if block.timestamp >= stor7:
                if block.timestamp >= stor8:
                    if block.timestamp >= stor5:
                        if arg2:
                            require arg2
                            require 10^18 * arg2 / arg2 == 10^18
                            if 10^18 * arg2:
                                require 10^18 * arg2
                                require 10 * 10^18 * arg2 / 10^18 * arg2 == 10
                                require ext_code.size(tokenAddress)
                                call tokenAddress.mint(address arg1, uint256 arg2) with:
                                     gas gas_remaining wei
                                    args owner, 10 * 10^18 * arg2 / 10
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                else:
                                    require return_data.size >= 32
                                    require ext_code.size(tokenAddress)
                                    call tokenAddress.0x23b872dd with:
                                         gas gas_remaining wei
                                        args owner, address(arg1), 10 * 10^18 * arg2 / 10
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    else:
                                        require return_data.size >= 32
                            else:
                                require ext_code.size(tokenAddress)
                                call tokenAddress.mint(address arg1, uint256 arg2) with:
                                     gas gas_remaining wei
                                    args owner, 0
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                else:
                                    require return_data.size >= 32
                                    require ext_code.size(tokenAddress)
                                    call tokenAddress.0x23b872dd with:
                                         gas gas_remaining wei
                                        args owner, address(arg1), 0
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    else:
                                        require return_data.size >= 32
                        else:
                            require ext_code.size(tokenAddress)
                            call tokenAddress.mint(address arg1, uint256 arg2) with:
                                 gas gas_remaining wei
                                args owner, 0
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            else:
                                require return_data.size >= 32
                                require ext_code.size(tokenAddress)
                                call tokenAddress.0x23b872dd with:
                                     gas gas_remaining wei
                                    args owner, address(arg1), 0
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                else:
                                    require return_data.size >= 32
                    else:
                        if arg2:
                            require arg2
                            require 10^18 * arg2 / arg2 == 10^18
                            if 10^18 * arg2:
                                require 10^18 * arg2
                                require 10 * 10^18 * arg2 / 10^18 * arg2 == 10
                                require ext_code.size(tokenAddress)
                                call tokenAddress.mint(address arg1, uint256 arg2) with:
                                     gas gas_remaining wei
                                    args owner, 10 * 10^18 * arg2 / 10
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                else:
                                    require return_data.size >= 32
                                    require ext_code.size(tokenAddress)
                                    call tokenAddress.0x23b872dd with:
                                         gas gas_remaining wei
                                        args owner, address(arg1), 10 * 10^18 * arg2 / 10
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    else:
                                        require return_data.size >= 32
                            else:
                                require ext_code.size(tokenAddress)
                                call tokenAddress.mint(address arg1, uint256 arg2) with:
                                     gas gas_remaining wei
                                    args owner, 0
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                else:
                                    require return_data.size >= 32
                                    require ext_code.size(tokenAddress)
                                    call tokenAddress.0x23b872dd with:
                                         gas gas_remaining wei
                                        args owner, address(arg1), 0
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    else:
                                        require return_data.size >= 32
                        else:
                            require ext_code.size(tokenAddress)
                            call tokenAddress.mint(address arg1, uint256 arg2) with:
                                 gas gas_remaining wei
                                args owner, 0
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            else:
                                require return_data.size >= 32
                                require ext_code.size(tokenAddress)
                                call tokenAddress.0x23b872dd with:
                                     gas gas_remaining wei
                                    args owner, address(arg1), 0
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                else:
                                    require return_data.size >= 32
                else:
                    if arg2:
                        require arg2
                        require 10^18 * arg2 / arg2 == 10^18
                        if 10^18 * arg2:
                            require 10^18 * arg2
                            require 10 * 10^18 * arg2 / 10^18 * arg2 == 10
                            require ext_code.size(tokenAddress)
                            call tokenAddress.mint(address arg1, uint256 arg2) with:
                                 gas gas_remaining wei
                                args owner, 10 * 10^18 * arg2 / 9
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            else:
                                require return_data.size >= 32
                                require ext_code.size(tokenAddress)
                                call tokenAddress.0x23b872dd with:
                                     gas gas_remaining wei
                                    args owner, address(arg1), 10 * 10^18 * arg2 / 9
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                else:
                                    require return_data.size >= 32
                        else:
                            require ext_code.size(tokenAddress)
                            call tokenAddress.mint(address arg1, uint256 arg2) with:
                                 gas gas_remaining wei
                                args owner, 0
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            else:
                                require return_data.size >= 32
                                require ext_code.size(tokenAddress)
                                call tokenAddress.0x23b872dd with:
                                     gas gas_remaining wei
                                    args owner, address(arg1), 0
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                else:
                                    require return_data.size >= 32
                    else:
                        require ext_code.size(tokenAddress)
                        call tokenAddress.mint(address arg1, uint256 arg2) with:
                             gas gas_remaining wei
                            args owner, 0
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        else:
                            require return_data.size >= 32
                            require ext_code.size(tokenAddress)
                            call tokenAddress.0x23b872dd with:
                                 gas gas_remaining wei
                                args owner, address(arg1), 0
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            else:
                                require return_data.size >= 32
            else:
                if block.timestamp < stor8:
                    if arg2:
                        require arg2
                        require 10^18 * arg2 / arg2 == 10^18
                        if 10^18 * arg2:
                            require 10^18 * arg2
                            require 10 * 10^18 * arg2 / 10^18 * arg2 == 10
                            require ext_code.size(tokenAddress)
                            call tokenAddress.mint(address arg1, uint256 arg2) with:
                                 gas gas_remaining wei
                                args owner, 10 * 10^18 * arg2 / 8
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            else:
                                require return_data.size >= 32
                                require ext_code.size(tokenAddress)
                                call tokenAddress.0x23b872dd with:
                                     gas gas_remaining wei
                                    args owner, address(arg1), 10 * 10^18 * arg2 / 8
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                else:
                                    require return_data.size >= 32
                        else:
                            require ext_code.size(tokenAddress)
                            call tokenAddress.mint(address arg1, uint256 arg2) with:
                                 gas gas_remaining wei
                                args owner, 0
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            else:
                                require return_data.size >= 32
                                require ext_code.size(tokenAddress)
                                call tokenAddress.0x23b872dd with:
                                     gas gas_remaining wei
                                    args owner, address(arg1), 0
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                else:
                                    require return_data.size >= 32
                    else:
                        require ext_code.size(tokenAddress)
                        call tokenAddress.mint(address arg1, uint256 arg2) with:
                             gas gas_remaining wei
                            args owner, 0
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        else:
                            require return_data.size >= 32
                            require ext_code.size(tokenAddress)
                            call tokenAddress.0x23b872dd with:
                                 gas gas_remaining wei
                                args owner, address(arg1), 0
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            else:
                                require return_data.size >= 32
                else:
                    if block.timestamp >= stor5:
                        if arg2:
                            require arg2
                            require 10^18 * arg2 / arg2 == 10^18
                            if 10^18 * arg2:
                                require 10^18 * arg2
                                require 10 * 10^18 * arg2 / 10^18 * arg2 == 10
                                require ext_code.size(tokenAddress)
                                call tokenAddress.mint(address arg1, uint256 arg2) with:
                                     gas gas_remaining wei
                                    args owner, 10 * 10^18 * arg2 / 8
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                else:
                                    require return_data.size >= 32
                                    require ext_code.size(tokenAddress)
                                    call tokenAddress.0x23b872dd with:
                                         gas gas_remaining wei
                                        args owner, address(arg1), 10 * 10^18 * arg2 / 8
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    else:
                                        require return_data.size >= 32
                            else:
                                require ext_code.size(tokenAddress)
                                call tokenAddress.mint(address arg1, uint256 arg2) with:
                                     gas gas_remaining wei
                                    args owner, 0
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                else:
                                    require return_data.size >= 32
                                    require ext_code.size(tokenAddress)
                                    call tokenAddress.0x23b872dd with:
                                         gas gas_remaining wei
                                        args owner, address(arg1), 0
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    else:
                                        require return_data.size >= 32
                        else:
                            require ext_code.size(tokenAddress)
                            call tokenAddress.mint(address arg1, uint256 arg2) with:
                                 gas gas_remaining wei
                                args owner, 0
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            else:
                                require return_data.size >= 32
                                require ext_code.size(tokenAddress)
                                call tokenAddress.0x23b872dd with:
                                     gas gas_remaining wei
                                    args owner, address(arg1), 0
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                else:
                                    require return_data.size >= 32
                    else:
                        if arg2:
                            require arg2
                            require 10^18 * arg2 / arg2 == 10^18
                            if 10^18 * arg2:
                                require 10^18 * arg2
                                require 10 * 10^18 * arg2 / 10^18 * arg2 == 10
                                require ext_code.size(tokenAddress)
                                call tokenAddress.mint(address arg1, uint256 arg2) with:
                                     gas gas_remaining wei
                                    args owner, 10 * 10^18 * arg2 / 10
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                else:
                                    require return_data.size >= 32
                                    require ext_code.size(tokenAddress)
                                    call tokenAddress.0x23b872dd with:
                                         gas gas_remaining wei
                                        args owner, address(arg1), 10 * 10^18 * arg2 / 10
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    else:
                                        require return_data.size >= 32
                            else:
                                require ext_code.size(tokenAddress)
                                call tokenAddress.mint(address arg1, uint256 arg2) with:
                                     gas gas_remaining wei
                                    args owner, 0
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                else:
                                    require return_data.size >= 32
                                    require ext_code.size(tokenAddress)
                                    call tokenAddress.0x23b872dd with:
                                         gas gas_remaining wei
                                        args owner, address(arg1), 0
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    else:
                                        require return_data.size >= 32
                        else:
                            require ext_code.size(tokenAddress)
                            call tokenAddress.mint(address arg1, uint256 arg2) with:
                                 gas gas_remaining wei
                                args owner, 0
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            else:
                                require return_data.size >= 32
                                require ext_code.size(tokenAddress)
                                call tokenAddress.0x23b872dd with:
                                     gas gas_remaining wei
                                    args owner, address(arg1), 0
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                else:
                                    require return_data.size >= 32
    else:
        if block.timestamp >= stor6:
            if block.timestamp >= stor7:
                if block.timestamp >= stor8:
                    if block.timestamp >= stor5:
                        if arg2:
                            require arg2
                            require 10^18 * arg2 / arg2 == 10^18
                            if 10^18 * arg2:
                                require 10^18 * arg2
                                require 10 * 10^18 * arg2 / 10^18 * arg2 == 10
                                require ext_code.size(tokenAddress)
                                call tokenAddress.mint(address arg1, uint256 arg2) with:
                                     gas gas_remaining wei
                                    args owner, 10 * 10^18 * arg2 / 10
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                else:
                                    require return_data.size >= 32
                                    require ext_code.size(tokenAddress)
                                    call tokenAddress.0x23b872dd with:
                                         gas gas_remaining wei
                                        args owner, address(arg1), 10 * 10^18 * arg2 / 10
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    else:
                                        require return_data.size >= 32
                            else:
                                require ext_code.size(tokenAddress)
                                call tokenAddress.mint(address arg1, uint256 arg2) with:
                                     gas gas_remaining wei
                                    args owner, 0
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                else:
                                    require return_data.size >= 32
                                    require ext_code.size(tokenAddress)
                                    call tokenAddress.0x23b872dd with:
                                         gas gas_remaining wei
                                        args owner, address(arg1), 0
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    else:
                                        require return_data.size >= 32
                        else:
                            require ext_code.size(tokenAddress)
                            call tokenAddress.mint(address arg1, uint256 arg2) with:
                                 gas gas_remaining wei
                                args owner, 0
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            else:
                                require return_data.size >= 32
                                require ext_code.size(tokenAddress)
                                call tokenAddress.0x23b872dd with:
                                     gas gas_remaining wei
                                    args owner, address(arg1), 0
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                else:
                                    require return_data.size >= 32
                    else:
                        if arg2:
                            require arg2
                            require 10^18 * arg2 / arg2 == 10^18
                            if 10^18 * arg2:
                                require 10^18 * arg2
                                require 10 * 10^18 * arg2 / 10^18 * arg2 == 10
                                require ext_code.size(tokenAddress)
                                call tokenAddress.mint(address arg1, uint256 arg2) with:
                                     gas gas_remaining wei
                                    args owner, 10 * 10^18 * arg2 / 10
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                else:
                                    require return_data.size >= 32
                                    require ext_code.size(tokenAddress)
                                    call tokenAddress.0x23b872dd with:
                                         gas gas_remaining wei
                                        args owner, address(arg1), 10 * 10^18 * arg2 / 10
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    else:
                                        require return_data.size >= 32
                            else:
                                require ext_code.size(tokenAddress)
                                call tokenAddress.mint(address arg1, uint256 arg2) with:
                                     gas gas_remaining wei
                                    args owner, 0
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                else:
                                    require return_data.size >= 32
                                    require ext_code.size(tokenAddress)
                                    call tokenAddress.0x23b872dd with:
                                         gas gas_remaining wei
                                        args owner, address(arg1), 0
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    else:
                                        require return_data.size >= 32
                        else:
                            require ext_code.size(tokenAddress)
                            call tokenAddress.mint(address arg1, uint256 arg2) with:
                                 gas gas_remaining wei
                                args owner, 0
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            else:
                                require return_data.size >= 32
                                require ext_code.size(tokenAddress)
                                call tokenAddress.0x23b872dd with:
                                     gas gas_remaining wei
                                    args owner, address(arg1), 0
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                else:
                                    require return_data.size >= 32
                else:
                    if arg2:
                        require arg2
                        require 10^18 * arg2 / arg2 == 10^18
                        if 10^18 * arg2:
                            require 10^18 * arg2
                            require 10 * 10^18 * arg2 / 10^18 * arg2 == 10
                            require ext_code.size(tokenAddress)
                            call tokenAddress.mint(address arg1, uint256 arg2) with:
                                 gas gas_remaining wei
                                args owner, 10 * 10^18 * arg2 / 9
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            else:
                                require return_data.size >= 32
                                require ext_code.size(tokenAddress)
                                call tokenAddress.0x23b872dd with:
                                     gas gas_remaining wei
                                    args owner, address(arg1), 10 * 10^18 * arg2 / 9
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                else:
                                    require return_data.size >= 32
                        else:
                            require ext_code.size(tokenAddress)
                            call tokenAddress.mint(address arg1, uint256 arg2) with:
                                 gas gas_remaining wei
                                args owner, 0
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            else:
                                require return_data.size >= 32
                                require ext_code.size(tokenAddress)
                                call tokenAddress.0x23b872dd with:
                                     gas gas_remaining wei
                                    args owner, address(arg1), 0
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                else:
                                    require return_data.size >= 32
                    else:
                        require ext_code.size(tokenAddress)
                        call tokenAddress.mint(address arg1, uint256 arg2) with:
                             gas gas_remaining wei
                            args owner, 0
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        else:
                            require return_data.size >= 32
                            require ext_code.size(tokenAddress)
                            call tokenAddress.0x23b872dd with:
                                 gas gas_remaining wei
                                args owner, address(arg1), 0
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            else:
                                require return_data.size >= 32
            else:
                if block.timestamp < stor8:
                    if arg2:
                        require arg2
                        require 10^18 * arg2 / arg2 == 10^18
                        if 10^18 * arg2:
                            require 10^18 * arg2
                            require 10 * 10^18 * arg2 / 10^18 * arg2 == 10
                            require ext_code.size(tokenAddress)
                            call tokenAddress.mint(address arg1, uint256 arg2) with:
                                 gas gas_remaining wei
                                args owner, 10 * 10^18 * arg2 / 8
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            else:
                                require return_data.size >= 32
                                require ext_code.size(tokenAddress)
                                call tokenAddress.0x23b872dd with:
                                     gas gas_remaining wei
                                    args owner, address(arg1), 10 * 10^18 * arg2 / 8
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                else:
                                    require return_data.size >= 32
                        else:
                            require ext_code.size(tokenAddress)
                            call tokenAddress.mint(address arg1, uint256 arg2) with:
                                 gas gas_remaining wei
                                args owner, 0
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            else:
                                require return_data.size >= 32
                                require ext_code.size(tokenAddress)
                                call tokenAddress.0x23b872dd with:
                                     gas gas_remaining wei
                                    args owner, address(arg1), 0
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                else:
                                    require return_data.size >= 32
                    else:
                        require ext_code.size(tokenAddress)
                        call tokenAddress.mint(address arg1, uint256 arg2) with:
                             gas gas_remaining wei
                            args owner, 0
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        else:
                            require return_data.size >= 32
                            require ext_code.size(tokenAddress)
                            call tokenAddress.0x23b872dd with:
                                 gas gas_remaining wei
                                args owner, address(arg1), 0
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            else:
                                require return_data.size >= 32
                else:
                    if block.timestamp >= stor5:
                        if arg2:
                            require arg2
                            require 10^18 * arg2 / arg2 == 10^18
                            if 10^18 * arg2:
                                require 10^18 * arg2
                                require 10 * 10^18 * arg2 / 10^18 * arg2 == 10
                                require ext_code.size(tokenAddress)
                                call tokenAddress.mint(address arg1, uint256 arg2) with:
                                     gas gas_remaining wei
                                    args owner, 10 * 10^18 * arg2 / 8
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                else:
                                    require return_data.size >= 32
                                    require ext_code.size(tokenAddress)
                                    call tokenAddress.0x23b872dd with:
                                         gas gas_remaining wei
                                        args owner, address(arg1), 10 * 10^18 * arg2 / 8
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    else:
                                        require return_data.size >= 32
                            else:
                                require ext_code.size(tokenAddress)
                                call tokenAddress.mint(address arg1, uint256 arg2) with:
                                     gas gas_remaining wei
                                    args owner, 0
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                else:
                                    require return_data.size >= 32
                                    require ext_code.size(tokenAddress)
                                    call tokenAddress.0x23b872dd with:
                                         gas gas_remaining wei
                                        args owner, address(arg1), 0
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    else:
                                        require return_data.size >= 32
                        else:
                            require ext_code.size(tokenAddress)
                            call tokenAddress.mint(address arg1, uint256 arg2) with:
                                 gas gas_remaining wei
                                args owner, 0
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            else:
                                require return_data.size >= 32
                                require ext_code.size(tokenAddress)
                                call tokenAddress.0x23b872dd with:
                                     gas gas_remaining wei
                                    args owner, address(arg1), 0
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                else:
                                    require return_data.size >= 32
                    else:
                        if arg2:
                            require arg2
                            require 10^18 * arg2 / arg2 == 10^18
                            if 10^18 * arg2:
                                require 10^18 * arg2
                                require 10 * 10^18 * arg2 / 10^18 * arg2 == 10
                                require ext_code.size(tokenAddress)
                                call tokenAddress.mint(address arg1, uint256 arg2) with:
                                     gas gas_remaining wei
                                    args owner, 10 * 10^18 * arg2 / 10
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                else:
                                    require return_data.size >= 32
                                    require ext_code.size(tokenAddress)
                                    call tokenAddress.0x23b872dd with:
                                         gas gas_remaining wei
                                        args owner, address(arg1), 10 * 10^18 * arg2 / 10
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    else:
                                        require return_data.size >= 32
                            else:
                                require ext_code.size(tokenAddress)
                                call tokenAddress.mint(address arg1, uint256 arg2) with:
                                     gas gas_remaining wei
                                    args owner, 0
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                else:
                                    require return_data.size >= 32
                                    require ext_code.size(tokenAddress)
                                    call tokenAddress.0x23b872dd with:
                                         gas gas_remaining wei
                                        args owner, address(arg1), 0
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    else:
                                        require return_data.size >= 32
                        else:
                            require ext_code.size(tokenAddress)
                            call tokenAddress.mint(address arg1, uint256 arg2) with:
                                 gas gas_remaining wei
                                args owner, 0
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            else:
                                require return_data.size >= 32
                                require ext_code.size(tokenAddress)
                                call tokenAddress.0x23b872dd with:
                                     gas gas_remaining wei
                                    args owner, address(arg1), 0
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                else:
                                    require return_data.size >= 32
        else:
            if block.timestamp < stor8:
                if arg2:
                    require arg2
                    require 10^18 * arg2 / arg2 == 10^18
                    if 10^18 * arg2:
                        require 10^18 * arg2
                        require 10 * 10^18 * arg2 / 10^18 * arg2 == 10
                        require ext_code.size(tokenAddress)
                        call tokenAddress.mint(address arg1, uint256 arg2) with:
                             gas gas_remaining wei
                            args owner, 10 * 10^18 * arg2 / 7
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        else:
                            require return_data.size >= 32
                            require ext_code.size(tokenAddress)
                            call tokenAddress.0x23b872dd with:
                                 gas gas_remaining wei
                                args owner, address(arg1), 10 * 10^18 * arg2 / 7
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            else:
                                require return_data.size >= 32
                    else:
                        require ext_code.size(tokenAddress)
                        call tokenAddress.mint(address arg1, uint256 arg2) with:
                             gas gas_remaining wei
                            args owner, 0
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        else:
                            require return_data.size >= 32
                            require ext_code.size(tokenAddress)
                            call tokenAddress.0x23b872dd with:
                                 gas gas_remaining wei
                                args owner, address(arg1), 0
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            else:
                                require return_data.size >= 32
                else:
                    require ext_code.size(tokenAddress)
                    call tokenAddress.mint(address arg1, uint256 arg2) with:
                         gas gas_remaining wei
                        args owner, 0
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    else:
                        require return_data.size >= 32
                        require ext_code.size(tokenAddress)
                        call tokenAddress.0x23b872dd with:
                             gas gas_remaining wei
                            args owner, address(arg1), 0
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        else:
                            require return_data.size >= 32
            else:
                if block.timestamp >= stor5:
                    if arg2:
                        require arg2
                        require 10^18 * arg2 / arg2 == 10^18
                        if 10^18 * arg2:
                            require 10^18 * arg2
                            require 10 * 10^18 * arg2 / 10^18 * arg2 == 10
                            require ext_code.size(tokenAddress)
                            call tokenAddress.mint(address arg1, uint256 arg2) with:
                                 gas gas_remaining wei
                                args owner, 10 * 10^18 * arg2 / 7
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            else:
                                require return_data.size >= 32
                                require ext_code.size(tokenAddress)
                                call tokenAddress.0x23b872dd with:
                                     gas gas_remaining wei
                                    args owner, address(arg1), 10 * 10^18 * arg2 / 7
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                else:
                                    require return_data.size >= 32
                        else:
                            require ext_code.size(tokenAddress)
                            call tokenAddress.mint(address arg1, uint256 arg2) with:
                                 gas gas_remaining wei
                                args owner, 0
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            else:
                                require return_data.size >= 32
                                require ext_code.size(tokenAddress)
                                call tokenAddress.0x23b872dd with:
                                     gas gas_remaining wei
                                    args owner, address(arg1), 0
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                else:
                                    require return_data.size >= 32
                    else:
                        require ext_code.size(tokenAddress)
                        call tokenAddress.mint(address arg1, uint256 arg2) with:
                             gas gas_remaining wei
                            args owner, 0
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        else:
                            require return_data.size >= 32
                            require ext_code.size(tokenAddress)
                            call tokenAddress.0x23b872dd with:
                                 gas gas_remaining wei
                                args owner, address(arg1), 0
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            else:
                                require return_data.size >= 32
                else:
                    if arg2:
                        require arg2
                        require 10^18 * arg2 / arg2 == 10^18
                        if 10^18 * arg2:
                            require 10^18 * arg2
                            require 10 * 10^18 * arg2 / 10^18 * arg2 == 10
                            require ext_code.size(tokenAddress)
                            call tokenAddress.mint(address arg1, uint256 arg2) with:
                                 gas gas_remaining wei
                                args owner, 10 * 10^18 * arg2 / 10
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            else:
                                require return_data.size >= 32
                                require ext_code.size(tokenAddress)
                                call tokenAddress.0x23b872dd with:
                                     gas gas_remaining wei
                                    args owner, address(arg1), 10 * 10^18 * arg2 / 10
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                else:
                                    require return_data.size >= 32
                        else:
                            require ext_code.size(tokenAddress)
                            call tokenAddress.mint(address arg1, uint256 arg2) with:
                                 gas gas_remaining wei
                                args owner, 0
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            else:
                                require return_data.size >= 32
                                require ext_code.size(tokenAddress)
                                call tokenAddress.0x23b872dd with:
                                     gas gas_remaining wei
                                    args owner, address(arg1), 0
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                else:
                                    require return_data.size >= 32
                    else:
                        require ext_code.size(tokenAddress)
                        call tokenAddress.mint(address arg1, uint256 arg2) with:
                             gas gas_remaining wei
                            args owner, 0
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        else:
                            require return_data.size >= 32
                            require ext_code.size(tokenAddress)
                            call tokenAddress.0x23b872dd with:
                                 gas gas_remaining wei
                                args owner, address(arg1), 0
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            else:
                                require return_data.size >= 32
}



}

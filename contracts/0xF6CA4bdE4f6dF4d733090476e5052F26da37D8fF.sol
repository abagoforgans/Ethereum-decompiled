contract main {




// =====================  Runtime code  =====================


const onTransfer(address arg1, address arg2, uint256 arg3) = 0

const onApprove(address arg1, address arg2, uint256 arg3) = 0

const proxyPayment(address arg1) = 0


address owner;
uint256 stor1;
address kroAddr;
address beneficiaryAddress;
uint256 secretHash;
uint8 stor5;

function kroAddr() {
    return kroAddr
}

function isActive() {
    return bool(stor5)
}

function beneficiary() {
    return beneficiaryAddress
}

function owner() {
    return owner
}

function secretHash() {
    return secretHash
}

function setActive(bool arg1) {
    require msg.sender == owner
    stor5 = uint8(arg1)
}

function renounceOwnership() {
    require msg.sender == owner
    emit OwnershipRenounced(owner);
    owner = 0
}

function transferOwnership(address arg1) {
    require msg.sender == owner
    require arg1
    emit OwnershipTransferred(owner, arg1);
    owner = arg1
}

function transferKROContractOwnership(address arg1, string arg2) {
    mem[128 len arg2.length] = arg2[all]
    require msg.sender == owner
    if stor5:
        revert with 0, 'IAO is not over'
    mem[ceil32(arg2.length) + 160 len floor32(arg2.length)] = call.data[arg2 + 36 len floor32(arg2.length)]
    mem[ceil32(arg2.length) + floor32(arg2.length) + -(arg2.length % 32) + 192 len arg2.length % 32] = mem[-(arg2.length % 32) + floor32(arg2.length) + 160 len arg2.length % 32]
    mem[arg2.length + ceil32(arg2.length) + 160 len floor32(arg2.length)] = call.data[arg2 + 36 len floor32(arg2.length)]
    mem[(2 * floor32(arg2.length)) + ceil32(arg2.length) + 192 len arg2.length % 32] = mem[ceil32(arg2.length) + floor32(arg2.length) + -(arg2.length % 32) + 192 len arg2.length % 32]
    if sha3(call.data[arg2 + 36 len floor32(arg2.length)], mem[arg2.length + ceil32(arg2.length) + floor32(arg2.length) + 160 len arg2.length % 32]) != secretHash:
        revert with 0, 'Secret incorrect'
    require ext_code.size(kroAddr)
    call kroAddr.0xf2fde38b with:
         gas gas_remaining wei
        args arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function _fallback() payable {
    require stor1 == 1
    stor1 = 2
    stor1 = 2
    require ext_code.size(0x818e6fecd516ecc3849daf6845e3ec868087b755)
    call 0x818e6fecd516ecc3849daf6845e3ec868087b755.getExpectedRate(address arg1, address arg2, uint256 arg3) with:
         gas gas_remaining wei
        args 0xeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeee, 0x89d24a6b4ccb1b6faa2625fe562bdd9a23260359, msg.value
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 64
    if ext_call.return_data[32] <= 0:
        revert with 0, 'Zero price'
    mem[388 len 0x29589f6100000000000000000000000000000000000000000000000000000000] = 4008636142, msg.value, 0x89d24a6b4ccb1b6faa2625fe562bdd9a23260359, address(this.address), 200 * 10^18, ext_call.return_data[32], beneficiaryAddress, 256, 0x29589f6100000000000000000000000000000000000000000000000000000000, mem[388 len 0x29589f60fffffffffffffffffffffffffffffffffffffffffffffffffffffefc]
    require ext_code.size(0x818e6fecd516ecc3849daf6845e3ec868087b755)
    call 0x818e6fecd516ecc3849daf6845e3ec868087b755.tradeWithHint(address arg1, uint256 arg2, address arg3, address arg4, uint256 arg5, uint256 arg6, address arg7, bytes arg8) with:
       value msg.value wei
         gas gas_remaining wei
        args 0, ext_call.return_data[32], uint32(msg.value), 0x89d24a6b4ccb1b6faa2625fe562bdd9a23260359, address(this.address), 200 * 10^18, ext_call.return_data[32], beneficiaryAddress, 256, 0x29589f6100000000000000000000000000000000000000000000000000000000, mem[388 len 0x29589f6100000000000000000000000000000000000000000000000000000000]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if ext_call.return_data[0] <= 100 * 10^18:
        if not stor5:
            revert with 0, 'IAO is not active'
        if ext_call.return_data[0] <= 0:
            revert with 0, 'Donation out of range'
        if ext_call.return_data[0] > 100 * 10^18:
            revert with 0, 'Donation out of range'
        if not msg.sender:
            revert with 0, 'Can't refer self'
        require ext_code.size(kroAddr)
        call kroAddr.0x70a08231 with:
             gas gas_remaining wei
            args msg.sender
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if ext_call.return_data[0]:
            revert with 0, 'Already joined'
        if not ext_call.return_data[0]:
            require ext_code.size(kroAddr)
            call kroAddr.generateTokens(address arg1, uint256 arg2) with:
                 gas gas_remaining wei
                args msg.sender, 0
        else:
            require 5 * 10^17 * ext_call.return_data[0] / ext_call.return_data[0] == 5 * 10^17
            require ext_code.size(kroAddr)
            call kroAddr.generateTokens(address arg1, uint256 arg2) with:
                 gas gas_remaining wei
                args msg.sender, 5 * 10^17 * ext_call.return_data[0] / 10^18
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if not ext_call.return_data[0]:
            revert with 0, 'Failed minting'
        require ext_code.size(0x89d24a6b4ccb1b6faa2625fe562bdd9a23260359)
        call 0x89d24a6b4ccb1b6faa2625fe562bdd9a23260359.0xa9059cbb with:
             gas gas_remaining wei
            args beneficiaryAddress, ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if not ext_call.return_data[0]:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Failed DAI transfer to beneficiary'
        emit Register(ext_call.return_data[0], msg.sender, block.number);
    else:
        require 100 * 10^18 <= ext_call.return_data[0]
        require ext_code.size(0x89d24a6b4ccb1b6faa2625fe562bdd9a23260359)
        call 0x89d24a6b4ccb1b6faa2625fe562bdd9a23260359.0xa9059cbb with:
             gas gas_remaining wei
            args msg.sender, ext_call.return_data[0] - 100 * 10^18
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if not ext_call.return_data[0]:
            revert with 0, 'Excess DAI transfer failed'
        if not stor5:
            revert with 0, 'IAO is not active'
        if not msg.sender:
            revert with 0, 'Can't refer self'
        require ext_code.size(kroAddr)
        call kroAddr.0x70a08231 with:
             gas gas_remaining wei
            args msg.sender
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if ext_call.return_data[0]:
            revert with 0, 'Already joined'
        require ext_code.size(kroAddr)
        call kroAddr.generateTokens(address arg1, uint256 arg2) with:
             gas gas_remaining wei
            args msg.sender, 50 * 10^18
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if not ext_call.return_data[0]:
            revert with 0, 'Failed minting'
        require ext_code.size(0x89d24a6b4ccb1b6faa2625fe562bdd9a23260359)
        call 0x89d24a6b4ccb1b6faa2625fe562bdd9a23260359.0xa9059cbb with:
             gas gas_remaining wei
            args beneficiaryAddress, 100 * 10^18
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if not ext_call.return_data[0]:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Failed DAI transfer to beneficiary'
        emit Register(100 * 10^18, msg.sender, block.number);
    stor1 = 1
    stor1 = 1
}

function registerWithDAI(uint256 arg1, address arg2) {
    require 1 == stor1
    stor1 = 2
    require ext_code.size(0x89d24a6b4ccb1b6faa2625fe562bdd9a23260359)
    call 0x89d24a6b4ccb1b6faa2625fe562bdd9a23260359.0x23b872dd with:
         gas gas_remaining wei
        args msg.sender, this.address, arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if not ext_call.return_data[0]:
        revert with 0, 'Failed DAI transfer to IAO'
    if not stor5:
        revert with 0, 'IAO is not active'
    if arg1 <= 0:
        revert with 0, 'Donation out of range'
    if arg1 > 100 * 10^18:
        revert with 0, 'Donation out of range'
    if msg.sender == arg2:
        revert with 0, 'Can't refer self'
    require ext_code.size(kroAddr)
    call kroAddr.0x70a08231 with:
         gas gas_remaining wei
        args msg.sender
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if ext_call.return_data[0]:
        revert with 0, 'Already joined'
    if not arg1:
        require ext_code.size(kroAddr)
        call kroAddr.generateTokens(address arg1, uint256 arg2) with:
             gas gas_remaining wei
            args msg.sender, 0
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if not ext_call.return_data[0]:
            revert with 0, 'Failed minting'
        if arg2:
            require ext_code.size(kroAddr)
            call kroAddr.0x70a08231 with:
                 gas gas_remaining wei
                args arg2
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if ext_call.return_data[0] > 0:
                require ext_code.size(kroAddr)
                call kroAddr.generateTokens(address arg1, uint256 arg2) with:
                     gas gas_remaining wei
                    args msg.sender, 0
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                if not ext_call.return_data[0]:
                    revert with 0, 'Failed minting sender bonus'
                require ext_code.size(kroAddr)
                call kroAddr.generateTokens(address arg1, uint256 arg2) with:
                     gas gas_remaining wei
                    args address(arg2), 0
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                if not ext_call.return_data[0]:
                    revert with 0, 'Failed minting referrer bonus'
    else:
        require 5 * 10^17 * arg1 / arg1 == 5 * 10^17
        require ext_code.size(kroAddr)
        call kroAddr.generateTokens(address arg1, uint256 arg2) with:
             gas gas_remaining wei
            args msg.sender, 5 * 10^17 * arg1 / 10^18
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if not ext_call.return_data[0]:
            revert with 0, 'Failed minting'
        if arg2:
            require ext_code.size(kroAddr)
            call kroAddr.0x70a08231 with:
                 gas gas_remaining wei
                args arg2
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if ext_call.return_data[0] > 0:
                if not 5 * 10^17 * arg1 / 10^18:
                    require ext_code.size(kroAddr)
                    call kroAddr.generateTokens(address arg1, uint256 arg2) with:
                         gas gas_remaining wei
                        args msg.sender, 0
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    if not ext_call.return_data[0]:
                        revert with 0, 'Failed minting sender bonus'
                    require ext_code.size(kroAddr)
                    call kroAddr.generateTokens(address arg1, uint256 arg2) with:
                         gas gas_remaining wei
                        args address(arg2), 0
                else:
                    require 10^17 * 5 * 10^17 * arg1 / 10^18 / 5 * 10^17 * arg1 / 10^18 == 10^17
                    require ext_code.size(kroAddr)
                    call kroAddr.generateTokens(address arg1, uint256 arg2) with:
                         gas gas_remaining wei
                        args msg.sender, 10^17 * 5 * 10^17 * arg1 / 10^18 / 10^18
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    if not ext_call.return_data[0]:
                        revert with 0, 'Failed minting sender bonus'
                    require ext_code.size(kroAddr)
                    call kroAddr.generateTokens(address arg1, uint256 arg2) with:
                         gas gas_remaining wei
                        args address(arg2), 10^17 * 5 * 10^17 * arg1 / 10^18 / 10^18
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                if not ext_call.return_data[0]:
                    revert with 0, 'Failed minting referrer bonus'
    require ext_code.size(0x89d24a6b4ccb1b6faa2625fe562bdd9a23260359)
    call 0x89d24a6b4ccb1b6faa2625fe562bdd9a23260359.0xa9059cbb with:
         gas gas_remaining wei
        args beneficiaryAddress, arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if not ext_call.return_data[0]:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Failed DAI transfer to beneficiary'
    emit Register(arg1, msg.sender, block.number);
    stor1 = 1
}

function registerWithETH(address arg1) payable {
    require stor1 == 1
    stor1 = 2
    require ext_code.size(0x818e6fecd516ecc3849daf6845e3ec868087b755)
    call 0x818e6fecd516ecc3849daf6845e3ec868087b755.getExpectedRate(address arg1, address arg2, uint256 arg3) with:
         gas gas_remaining wei
        args 0xeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeee, 0x89d24a6b4ccb1b6faa2625fe562bdd9a23260359, msg.value
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 64
    if ext_call.return_data[32] <= 0:
        revert with 0, 'Zero price'
    mem[388 len 0x29589f6100000000000000000000000000000000000000000000000000000000] = 4008636142, msg.value, 0x89d24a6b4ccb1b6faa2625fe562bdd9a23260359, address(this.address), 200 * 10^18, ext_call.return_data[32], beneficiaryAddress, 256, 0x29589f6100000000000000000000000000000000000000000000000000000000, mem[388 len 0x29589f60fffffffffffffffffffffffffffffffffffffffffffffffffffffefc]
    require ext_code.size(0x818e6fecd516ecc3849daf6845e3ec868087b755)
    call 0x818e6fecd516ecc3849daf6845e3ec868087b755.tradeWithHint(address arg1, uint256 arg2, address arg3, address arg4, uint256 arg5, uint256 arg6, address arg7, bytes arg8) with:
       value msg.value wei
         gas gas_remaining wei
        args 0, ext_call.return_data[32], uint32(msg.value), 0x89d24a6b4ccb1b6faa2625fe562bdd9a23260359, address(this.address), 200 * 10^18, ext_call.return_data[32], beneficiaryAddress, 256, 0x29589f6100000000000000000000000000000000000000000000000000000000, mem[388 len 0x29589f6100000000000000000000000000000000000000000000000000000000]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if ext_call.return_data[0] <= 100 * 10^18:
        if not stor5:
            revert with 0, 'IAO is not active'
        if ext_call.return_data[0] <= 0:
            revert with 0, 'Donation out of range'
        if ext_call.return_data[0] > 100 * 10^18:
            revert with 0, 'Donation out of range'
        if msg.sender == arg1:
            revert with 0, 'Can't refer self'
        require ext_code.size(kroAddr)
        call kroAddr.0x70a08231 with:
             gas gas_remaining wei
            args msg.sender
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if ext_call.return_data[0]:
            revert with 0, 'Already joined'
        if not ext_call.return_data[0]:
            require ext_code.size(kroAddr)
            call kroAddr.generateTokens(address arg1, uint256 arg2) with:
                 gas gas_remaining wei
                args msg.sender, 0
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if not ext_call.return_data[0]:
                revert with 0, 'Failed minting'
            if arg1:
                require ext_code.size(kroAddr)
                call kroAddr.0x70a08231 with:
                     gas gas_remaining wei
                    args arg1
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                if ext_call.return_data[0] > 0:
                    require ext_code.size(kroAddr)
                    call kroAddr.generateTokens(address arg1, uint256 arg2) with:
                         gas gas_remaining wei
                        args msg.sender, 0
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    if not ext_call.return_data[0]:
                        revert with 0, 'Failed minting sender bonus'
                    require ext_code.size(kroAddr)
                    call kroAddr.generateTokens(address arg1, uint256 arg2) with:
                         gas gas_remaining wei
                        args address(arg1), 0
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    if not ext_call.return_data[0]:
                        revert with 0, 'Failed minting referrer bonus'
        else:
            require 5 * 10^17 * ext_call.return_data[0] / ext_call.return_data[0] == 5 * 10^17
            require ext_code.size(kroAddr)
            call kroAddr.generateTokens(address arg1, uint256 arg2) with:
                 gas gas_remaining wei
                args msg.sender, 5 * 10^17 * ext_call.return_data[0] / 10^18
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if not ext_call.return_data[0]:
                revert with 0, 'Failed minting'
            if arg1:
                require ext_code.size(kroAddr)
                call kroAddr.0x70a08231 with:
                     gas gas_remaining wei
                    args arg1
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                if ext_call.return_data[0] > 0:
                    if not 5 * 10^17 * ext_call.return_data[0] / 10^18:
                        require ext_code.size(kroAddr)
                        call kroAddr.generateTokens(address arg1, uint256 arg2) with:
                             gas gas_remaining wei
                            args msg.sender, 0
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        if not ext_call.return_data[0]:
                            revert with 0, 'Failed minting sender bonus'
                        require ext_code.size(kroAddr)
                        call kroAddr.generateTokens(address arg1, uint256 arg2) with:
                             gas gas_remaining wei
                            args address(arg1), 0
                    else:
                        require 10^17 * 5 * 10^17 * ext_call.return_data[0] / 10^18 / 5 * 10^17 * ext_call.return_data[0] / 10^18 == 10^17
                        require ext_code.size(kroAddr)
                        call kroAddr.generateTokens(address arg1, uint256 arg2) with:
                             gas gas_remaining wei
                            args msg.sender, 10^17 * 5 * 10^17 * ext_call.return_data[0] / 10^18 / 10^18
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        if not ext_call.return_data[0]:
                            revert with 0, 'Failed minting sender bonus'
                        require ext_code.size(kroAddr)
                        call kroAddr.generateTokens(address arg1, uint256 arg2) with:
                             gas gas_remaining wei
                            args address(arg1), 10^17 * 5 * 10^17 * ext_call.return_data[0] / 10^18 / 10^18
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    if not ext_call.return_data[0]:
                        revert with 0, 'Failed minting referrer bonus'
        require ext_code.size(0x89d24a6b4ccb1b6faa2625fe562bdd9a23260359)
        call 0x89d24a6b4ccb1b6faa2625fe562bdd9a23260359.0xa9059cbb with:
             gas gas_remaining wei
            args beneficiaryAddress, ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if not ext_call.return_data[0]:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Failed DAI transfer to beneficiary'
        emit Register(ext_call.return_data[0], msg.sender, block.number);
    else:
        require 100 * 10^18 <= ext_call.return_data[0]
        require ext_code.size(0x89d24a6b4ccb1b6faa2625fe562bdd9a23260359)
        call 0x89d24a6b4ccb1b6faa2625fe562bdd9a23260359.0xa9059cbb with:
             gas gas_remaining wei
            args msg.sender, ext_call.return_data[0] - 100 * 10^18
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if not ext_call.return_data[0]:
            revert with 0, 'Excess DAI transfer failed'
        if not stor5:
            revert with 0, 'IAO is not active'
        if msg.sender == arg1:
            revert with 0, 'Can't refer self'
        require ext_code.size(kroAddr)
        call kroAddr.0x70a08231 with:
             gas gas_remaining wei
            args msg.sender
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if ext_call.return_data[0]:
            revert with 0, 'Already joined'
        require ext_code.size(kroAddr)
        call kroAddr.generateTokens(address arg1, uint256 arg2) with:
             gas gas_remaining wei
            args msg.sender, 50 * 10^18
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if not ext_call.return_data[0]:
            revert with 0, 'Failed minting'
        if arg1:
            require ext_code.size(kroAddr)
            call kroAddr.0x70a08231 with:
                 gas gas_remaining wei
                args arg1
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if ext_call.return_data[0] > 0:
                require ext_code.size(kroAddr)
                call kroAddr.generateTokens(address arg1, uint256 arg2) with:
                     gas gas_remaining wei
                    args msg.sender, 5 * 10^18
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                if not ext_call.return_data[0]:
                    revert with 0, 'Failed minting sender bonus'
                require ext_code.size(kroAddr)
                call kroAddr.generateTokens(address arg1, uint256 arg2) with:
                     gas gas_remaining wei
                    args address(arg1), 5 * 10^18
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                if not ext_call.return_data[0]:
                    revert with 0, 'Failed minting referrer bonus'
        require ext_code.size(0x89d24a6b4ccb1b6faa2625fe562bdd9a23260359)
        call 0x89d24a6b4ccb1b6faa2625fe562bdd9a23260359.0xa9059cbb with:
             gas gas_remaining wei
            args beneficiaryAddress, 100 * 10^18
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if not ext_call.return_data[0]:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Failed DAI transfer to beneficiary'
        emit Register(100 * 10^18, msg.sender, block.number);
    stor1 = 1
}

function registerWithToken(address arg1, uint256 arg2, address arg3) {
    require stor1 == 1
    stor1 = 2
    if not arg1:
        revert with 0, 'Invalid token'
    if 0xeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeee == arg1:
        revert with 0, 'Invalid token'
    if 0x89d24a6b4ccb1b6faa2625fe562bdd9a23260359 == arg1:
        revert with 0, 'Invalid token'
    require ext_code.size(arg1)
    call arg1.0x18160ddd with:
         gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if ext_call.return_data[0] <= 0:
        revert with 0, 'Zero token supply'
    require ext_code.size(arg1)
    call arg1.0x23b872dd with:
         gas gas_remaining wei
        args msg.sender, this.address, arg2
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if not ext_call.return_data[0]:
        revert with 0, 'Failed token transfer to IAO'
    require ext_code.size(0x818e6fecd516ecc3849daf6845e3ec868087b755)
    call 0x818e6fecd516ecc3849daf6845e3ec868087b755.getExpectedRate(address arg1, address arg2, uint256 arg3) with:
         gas gas_remaining wei
        args address(arg1), 0x89d24a6b4ccb1b6faa2625fe562bdd9a23260359, arg2
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 64
    if ext_call.return_data[32] <= 0:
        revert with 0, 'Zero price'
    require ext_code.size(arg1)
    call arg1.approve(address arg1, uint256 arg2) with:
         gas gas_remaining wei
        args 0x818e6fecd516ecc3849daf6845e3ec868087b755, 0
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if not ext_call.return_data[0]:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Token allowance prezeroing failed'
    require ext_code.size(arg1)
    call arg1.approve(address arg1, uint256 arg2) with:
         gas gas_remaining wei
        args 0x818e6fecd516ecc3849daf6845e3ec868087b755, arg2
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if not ext_call.return_data[0]:
        revert with 0, 'Token approval failed'
    mem[388 len 0x29589f6100000000000000000000000000000000000000000000000000000000] = 0, arg2, 0x89d24a6b4ccb1b6faa2625fe562bdd9a23260359, address(this.address), 200 * 10^18, ext_call.return_data[32], beneficiaryAddress, 256, 0x29589f6100000000000000000000000000000000000000000000000000000000, mem[388 len 0x29589f60fffffffffffffffffffffffffffffffffffffffffffffffffffffefc]
    require ext_code.size(0x818e6fecd516ecc3849daf6845e3ec868087b755)
    call 0x818e6fecd516ecc3849daf6845e3ec868087b755.tradeWithHint(address arg1, uint256 arg2, address arg3, address arg4, uint256 arg5, uint256 arg6, address arg7, bytes arg8) with:
         gas gas_remaining wei
        args 0, ext_call.return_data[32], uint32(arg2), 0x89d24a6b4ccb1b6faa2625fe562bdd9a23260359, address(this.address), 200 * 10^18, ext_call.return_data[32], beneficiaryAddress, 256, 0x29589f6100000000000000000000000000000000000000000000000000000000, mem[388 len 0x29589f6100000000000000000000000000000000000000000000000000000000]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(arg1)
    call arg1.approve(address arg1, uint256 arg2) with:
         gas gas_remaining wei
        args 0x818e6fecd516ecc3849daf6845e3ec868087b755, 0
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if not ext_call.return_data[0]:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Token allowance postzeroing failed'
    if ext_call.return_data[0] <= 100 * 10^18:
        if not stor5:
            revert with 0, 'IAO is not active'
        if ext_call.return_data[0] <= 0:
            revert with 0, 'Donation out of range'
        if ext_call.return_data[0] > 100 * 10^18:
            revert with 0, 'Donation out of range'
        if msg.sender == arg3:
            revert with 0, 'Can't refer self'
        require ext_code.size(kroAddr)
        call kroAddr.0x70a08231 with:
             gas gas_remaining wei
            args msg.sender
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if ext_call.return_data[0]:
            revert with 0, 'Already joined'
        if not ext_call.return_data[0]:
            require ext_code.size(kroAddr)
            call kroAddr.generateTokens(address arg1, uint256 arg2) with:
                 gas gas_remaining wei
                args msg.sender, 0
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if not ext_call.return_data[0]:
                revert with 0, 'Failed minting'
            if arg3:
                require ext_code.size(kroAddr)
                call kroAddr.0x70a08231 with:
                     gas gas_remaining wei
                    args arg3
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                if ext_call.return_data[0] > 0:
                    require ext_code.size(kroAddr)
                    call kroAddr.generateTokens(address arg1, uint256 arg2) with:
                         gas gas_remaining wei
                        args msg.sender, 0
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    if not ext_call.return_data[0]:
                        revert with 0, 'Failed minting sender bonus'
                    require ext_code.size(kroAddr)
                    call kroAddr.generateTokens(address arg1, uint256 arg2) with:
                         gas gas_remaining wei
                        args address(arg3), 0
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    if not ext_call.return_data[0]:
                        revert with 0, 'Failed minting referrer bonus'
        else:
            require 5 * 10^17 * ext_call.return_data[0] / ext_call.return_data[0] == 5 * 10^17
            require ext_code.size(kroAddr)
            call kroAddr.generateTokens(address arg1, uint256 arg2) with:
                 gas gas_remaining wei
                args msg.sender, 5 * 10^17 * ext_call.return_data[0] / 10^18
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if not ext_call.return_data[0]:
                revert with 0, 'Failed minting'
            if arg3:
                require ext_code.size(kroAddr)
                call kroAddr.0x70a08231 with:
                     gas gas_remaining wei
                    args arg3
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                if ext_call.return_data[0] > 0:
                    if not 5 * 10^17 * ext_call.return_data[0] / 10^18:
                        require ext_code.size(kroAddr)
                        call kroAddr.generateTokens(address arg1, uint256 arg2) with:
                             gas gas_remaining wei
                            args msg.sender, 0
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        if not ext_call.return_data[0]:
                            revert with 0, 'Failed minting sender bonus'
                        require ext_code.size(kroAddr)
                        call kroAddr.generateTokens(address arg1, uint256 arg2) with:
                             gas gas_remaining wei
                            args address(arg3), 0
                    else:
                        require 10^17 * 5 * 10^17 * ext_call.return_data[0] / 10^18 / 5 * 10^17 * ext_call.return_data[0] / 10^18 == 10^17
                        require ext_code.size(kroAddr)
                        call kroAddr.generateTokens(address arg1, uint256 arg2) with:
                             gas gas_remaining wei
                            args msg.sender, 10^17 * 5 * 10^17 * ext_call.return_data[0] / 10^18 / 10^18
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        if not ext_call.return_data[0]:
                            revert with 0, 'Failed minting sender bonus'
                        require ext_code.size(kroAddr)
                        call kroAddr.generateTokens(address arg1, uint256 arg2) with:
                             gas gas_remaining wei
                            args address(arg3), 10^17 * 5 * 10^17 * ext_call.return_data[0] / 10^18 / 10^18
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    if not ext_call.return_data[0]:
                        revert with 0, 'Failed minting referrer bonus'
        require ext_code.size(0x89d24a6b4ccb1b6faa2625fe562bdd9a23260359)
        call 0x89d24a6b4ccb1b6faa2625fe562bdd9a23260359.0xa9059cbb with:
             gas gas_remaining wei
            args beneficiaryAddress, ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if not ext_call.return_data[0]:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Failed DAI transfer to beneficiary'
        emit Register(ext_call.return_data[0], msg.sender, block.number);
    else:
        require 100 * 10^18 <= ext_call.return_data[0]
        require ext_code.size(0x89d24a6b4ccb1b6faa2625fe562bdd9a23260359)
        call 0x89d24a6b4ccb1b6faa2625fe562bdd9a23260359.0xa9059cbb with:
             gas gas_remaining wei
            args msg.sender, ext_call.return_data[0] - 100 * 10^18
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if not ext_call.return_data[0]:
            revert with 0, 'Excess DAI transfer failed'
        if not stor5:
            revert with 0, 'IAO is not active'
        if msg.sender == arg3:
            revert with 0, 'Can't refer self'
        require ext_code.size(kroAddr)
        call kroAddr.0x70a08231 with:
             gas gas_remaining wei
            args msg.sender
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if ext_call.return_data[0]:
            revert with 0, 'Already joined'
        require ext_code.size(kroAddr)
        call kroAddr.generateTokens(address arg1, uint256 arg2) with:
             gas gas_remaining wei
            args msg.sender, 50 * 10^18
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if not ext_call.return_data[0]:
            revert with 0, 'Failed minting'
        if arg3:
            require ext_code.size(kroAddr)
            call kroAddr.0x70a08231 with:
                 gas gas_remaining wei
                args arg3
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if ext_call.return_data[0] > 0:
                require ext_code.size(kroAddr)
                call kroAddr.generateTokens(address arg1, uint256 arg2) with:
                     gas gas_remaining wei
                    args msg.sender, 5 * 10^18
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                if not ext_call.return_data[0]:
                    revert with 0, 'Failed minting sender bonus'
                require ext_code.size(kroAddr)
                call kroAddr.generateTokens(address arg1, uint256 arg2) with:
                     gas gas_remaining wei
                    args address(arg3), 5 * 10^18
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                if not ext_call.return_data[0]:
                    revert with 0, 'Failed minting referrer bonus'
        require ext_code.size(0x89d24a6b4ccb1b6faa2625fe562bdd9a23260359)
        call 0x89d24a6b4ccb1b6faa2625fe562bdd9a23260359.0xa9059cbb with:
             gas gas_remaining wei
            args beneficiaryAddress, 100 * 10^18
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if not ext_call.return_data[0]:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Failed DAI transfer to beneficiary'
        emit Register(100 * 10^18, msg.sender, block.number);
    stor1 = 1
}



}

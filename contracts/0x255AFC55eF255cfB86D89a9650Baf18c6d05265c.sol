contract main {




// =====================  Runtime code  =====================


address owner;
mapping of struct beneficiaries;
array of address addresses;
address tokenAddress;
uint256 totalVested;
uint256 totalReleased;

function beneficiaries(address arg1) {
    mem[128] = beneficiaries[arg1].field_0
    idx = 128
    s = 0
    while beneficiaries[arg1].length + 96 > idx:
        mem[idx + 32] = beneficiaries[arg1][s].field_256
        idx = idx + 32
        s = s + 1
        continue 
    return Array(len=beneficiaries[arg1].length, data=mem[128 len beneficiaries[arg1].length]), 
           beneficiaries[arg1].field_256,
           beneficiaries[arg1].field_512,
           beneficiaries[arg1].field_768,
           beneficiaries[arg1].field_1024,
           beneficiaries[arg1].field_1280,
           bool(uint8(beneficiaries[arg1].field_1536)),
           bool(uint8(beneficiaries[arg1].field_1544)),
           bool(uint8(beneficiaries[arg1].field_1552))
}

function totalVested() {
    return totalVested
}

function owner() {
    return owner
}

function beneficiariesLength() {
    return addresses.length
}

function totalReleased() {
    return totalReleased
}

function addresses(uint256 arg1) {
    require arg1 < addresses.length
    return address(addresses[arg1])
}

function token() {
    return tokenAddress
}

function destroy() {
    require msg.sender == owner
    require ext_code.size(tokenAddress)
    call tokenAddress.0x70a08231 with:
         gas gas_remaining wei
        args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(tokenAddress)
    call tokenAddress.0xa9059cbb with:
         gas gas_remaining wei
        args owner, ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    selfdestruct(owner)
}

function transferOwnership(address arg1) {
    require msg.sender == owner
    require arg1
    emit OwnershipTransferred(owner, arg1);
    owner = arg1
}

function flushEth() {
    require msg.sender == owner
    call owner with:
       value eth.balance(this.address) wei
         gas 2300 * is_zero(value) wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function Balance() {
    require ext_code.size(tokenAddress)
    call tokenAddress.0x70a08231 with:
         gas gas_remaining wei
        args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    return ext_call.return_data[0]
}

function addBeneficiary(address arg1, uint256 arg2, uint256 arg3, uint256 arg4, uint256 arg5, bool arg6, string arg7) {
    require msg.sender == owner
    require not uint8(beneficiaries[address(arg1)].field_1552)
    require arg1
    require arg4 >= arg3
    require totalReleased <= totalVested
    require arg2 >= 0
    require ext_code.size(tokenAddress)
    call tokenAddress.0x70a08231 with:
         gas gas_remaining wei
        args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] >= totalVested - totalReleased + arg2
    beneficiaries[address(arg1)][].field_0 = Array(len=arg7.length, data=arg7[all])
    beneficiaries[address(arg1)].field_256 = arg2
    beneficiaries[address(arg1)].field_512 = 0
    beneficiaries[address(arg1)].field_768 = arg3
    beneficiaries[address(arg1)].field_1024 = arg4
    beneficiaries[address(arg1)].field_1280 = arg5
    uint8(beneficiaries[address(arg1)].field_1536) = 0
    Mask(248, 0, beneficiaries[address(arg1)].field_1544) = Mask(248, 0, arg6)
    Mask(240, 0, beneficiaries[address(arg1)].field_1552) = 1
    require totalVested + arg2 >= totalVested
    totalVested += arg2
    addresses.length++
    address(addresses[addresses.length]) = arg1
    emit NewBeneficiary(arg1);
}

function vestedAmount(address arg1) {
    if block.timestamp < beneficiaries[address(arg1)].field_1024:
        return 0
    require beneficiaries[address(arg1)].field_768 + beneficiaries[address(arg1)].field_1280 >= beneficiaries[address(arg1)].field_768
    if block.timestamp >= beneficiaries[address(arg1)].field_768 + beneficiaries[address(arg1)].field_1280:
        return beneficiaries[address(arg1)].field_256
    if uint8(beneficiaries[address(arg1)].field_1536):
        return beneficiaries[address(arg1)].field_256
    require beneficiaries[address(arg1)].field_768 <= block.timestamp
    if not beneficiaries[address(arg1)].field_256:
        if beneficiaries[address(arg1)].field_1280:
            return (0 / beneficiaries[address(arg1)].field_1280)
    else:
        if beneficiaries[address(arg1)].field_256:
            if (block.timestamp * beneficiaries[address(arg1)].field_256) - (beneficiaries[address(arg1)].field_768 * beneficiaries[address(arg1)].field_256) / beneficiaries[address(arg1)].field_256 == block.timestamp - beneficiaries[address(arg1)].field_768:
                if beneficiaries[address(arg1)].field_1280:
                    return ((block.timestamp * beneficiaries[address(arg1)].field_256) - (beneficiaries[address(arg1)].field_768 * beneficiaries[address(arg1)].field_256) / beneficiaries[address(arg1)].field_1280)
    revert
}

function destroyBeneficiary(address arg1) {
    require msg.sender == owner
    require beneficiaries[address(arg1)].field_512 <= beneficiaries[address(arg1)].field_256
    require ext_code.size(tokenAddress)
    call tokenAddress.0xa9059cbb with:
         gas gas_remaining wei
        args owner, beneficiaries[address(arg1)].field_256 - beneficiaries[address(arg1)].field_512
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require totalReleased + beneficiaries[address(arg1)].field_256 - beneficiaries[address(arg1)].field_512 >= totalReleased
    totalReleased = totalReleased + beneficiaries[address(arg1)].field_256 - beneficiaries[address(arg1)].field_512
    Mask(240, 0, beneficiaries[address(arg1)].field_1552) = 0
    require beneficiaries[address(arg1)].field_256 >= beneficiaries[address(arg1)].field_512
    beneficiaries[address(arg1)].field_512 = beneficiaries[address(arg1)].field_256
    idx = 0
    while idx < addresses.length - 1:
        mem[0] = 2
        if address(addresses[idx]) != arg1:
            idx = idx + 1
            continue 
        require addresses.length - 1 < addresses.length
        require idx < addresses.length
        address(addresses[idx]) = address(addresses[addresses.length])
        addresses.length--
        if addresses.length > addresses.length - 1:
            idx = sha3(2) + addresses.length - 1
            while sha3(2) + addresses.length > idx:
                stor[idx] = 0
                idx = idx + 1
                continue 
        emit BeneficiaryDestroyed(arg1);
    addresses.length--
    if addresses.length > addresses.length - 1:
        idx = addresses.length - 1
        while addresses.length > idx:
            uint256(addresses[idx]) = 0
            idx = idx + 1
            continue 
    emit BeneficiaryDestroyed(arg1);
}

function clearAll() payable {
    mem[64] = 96
    require not msg.value
    require msg.sender == owner
    require ext_code.size(tokenAddress)
    call tokenAddress.0x70a08231 with:
         gas gas_remaining wei
        args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    mem[96] = 0xa9059cbb00000000000000000000000000000000000000000000000000000000
    mem[100] = owner
    mem[132] = ext_call.return_data[0]
    require ext_code.size(tokenAddress)
    call tokenAddress.0xa9059cbb with:
         gas gas_remaining wei
        args owner, ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    s = 0
    idx = 0
    while idx < addresses.length:
        mem[0] = address(addresses[idx])
        mem[32] = 1
        Mask(240, 0, beneficiaries[address(stor2[idx])].field_1552) = 0
        beneficiaries[address(stor2[idx])].field_512 = 0
        beneficiaries[address(stor2[idx])].field_256 = 0
        beneficiaries[address(stor2[idx])].field_768 = 0
        beneficiaries[address(stor2[idx])].field_1024 = 0
        beneficiaries[address(stor2[idx])].field_1280 = 0
        uint8(beneficiaries[address(stor2[idx])].field_1536) = 0
        Mask(248, 0, beneficiaries[address(stor2[idx])].field_1544) = 0
        _17 = mem[64]
        mem[64] = mem[64] + 32
        mem[_17] = 0
        mem[0] = sha3(address(addresses[idx]), 1)
        bool(beneficiaries[address(stor2[idx])].field_0) = 0
        uint255(beneficiaries[address(stor2[idx])].field_1) = 0
        Mask(248, 0, beneficiaries[address(stor2[idx])].field_8) = mem[_17 + 32 len 31]
        s = sha3(sha3(address(addresses[idx]), 1))
        while sha3(sha3(address(addresses[idx]), 1)) + (beneficiaries[address(stor2[idx])].length + 31 / 32) > s:
            stor[s] = 0
            s = s + 1
            continue 
        s = sha3(address(addresses[idx]), 1)
        idx = idx + 1
        continue 
    addresses.length = 0
    if addresses.length > 0:
        idx = 0
        while addresses.length > idx:
            uint256(addresses[idx]) = 0
            idx = idx + 1
            continue 
}

function releasableAmount(address arg1) {
    if block.timestamp < beneficiaries[address(arg1)].field_1024:
        if beneficiaries[address(arg1)].field_512 <= 0:
            return -beneficiaries[address(arg1)].field_512
    else:
        if beneficiaries[address(arg1)].field_768 + beneficiaries[address(arg1)].field_1280 >= beneficiaries[address(arg1)].field_768:
            if block.timestamp >= beneficiaries[address(arg1)].field_768 + beneficiaries[address(arg1)].field_1280:
                if beneficiaries[address(arg1)].field_512 <= beneficiaries[address(arg1)].field_256:
                    return (beneficiaries[address(arg1)].field_256 - beneficiaries[address(arg1)].field_512)
            else:
                if uint8(beneficiaries[address(arg1)].field_1536):
                    if beneficiaries[address(arg1)].field_512 <= beneficiaries[address(arg1)].field_256:
                        return (beneficiaries[address(arg1)].field_256 - beneficiaries[address(arg1)].field_512)
                else:
                    if beneficiaries[address(arg1)].field_768 <= block.timestamp:
                        if not beneficiaries[address(arg1)].field_256:
                            if beneficiaries[address(arg1)].field_1280:
                                if beneficiaries[address(arg1)].field_512 <= 0 / beneficiaries[address(arg1)].field_1280:
                                    return ((0 / beneficiaries[address(arg1)].field_1280) - beneficiaries[address(arg1)].field_512)
                        else:
                            if beneficiaries[address(arg1)].field_256:
                                if (block.timestamp * beneficiaries[address(arg1)].field_256) - (beneficiaries[address(arg1)].field_768 * beneficiaries[address(arg1)].field_256) / beneficiaries[address(arg1)].field_256 == block.timestamp - beneficiaries[address(arg1)].field_768:
                                    if beneficiaries[address(arg1)].field_1280:
                                        if beneficiaries[address(arg1)].field_512 <= (block.timestamp * beneficiaries[address(arg1)].field_256) - (beneficiaries[address(arg1)].field_768 * beneficiaries[address(arg1)].field_256) / beneficiaries[address(arg1)].field_1280:
                                            return (((block.timestamp * beneficiaries[address(arg1)].field_256) - (beneficiaries[address(arg1)].field_768 * beneficiaries[address(arg1)].field_256) / beneficiaries[address(arg1)].field_1280) - beneficiaries[address(arg1)].field_512)
    revert
}

function revoke(address arg1) {
    require msg.sender == owner
    require uint8(beneficiaries[address(arg1)].field_1544)
    require not uint8(beneficiaries[address(arg1)].field_1536)
    require beneficiaries[address(arg1)].field_512 <= beneficiaries[address(arg1)].field_256
    if block.timestamp < beneficiaries[address(arg1)].field_1024:
        require beneficiaries[address(arg1)].field_512 <= 0
        require -beneficiaries[address(arg1)].field_512 <= beneficiaries[address(arg1)].field_256 - beneficiaries[address(arg1)].field_512
        require ext_code.size(tokenAddress)
        call tokenAddress.0xa9059cbb with:
             gas gas_remaining wei
            args owner, beneficiaries[address(arg1)].field_256
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require totalReleased + beneficiaries[address(arg1)].field_256 >= totalReleased
        totalReleased += beneficiaries[address(arg1)].field_256
        uint8(beneficiaries[address(arg1)].field_1536) = 1
        require beneficiaries[address(arg1)].field_256 + beneficiaries[address(arg1)].field_512 >= beneficiaries[address(arg1)].field_512
        beneficiaries[address(arg1)].field_512 += beneficiaries[address(arg1)].field_256
    else:
        require beneficiaries[address(arg1)].field_768 + beneficiaries[address(arg1)].field_1280 >= beneficiaries[address(arg1)].field_768
        if block.timestamp >= beneficiaries[address(arg1)].field_768 + beneficiaries[address(arg1)].field_1280:
            require beneficiaries[address(arg1)].field_512 <= beneficiaries[address(arg1)].field_256
            require ext_code.size(tokenAddress)
            call tokenAddress.0xa9059cbb with:
                 gas gas_remaining wei
                args owner, 0
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require totalReleased >= totalReleased
            uint8(beneficiaries[address(arg1)].field_1536) = 1
            require beneficiaries[address(arg1)].field_512 >= beneficiaries[address(arg1)].field_512
        else:
            if uint8(beneficiaries[address(arg1)].field_1536):
                require beneficiaries[address(arg1)].field_512 <= beneficiaries[address(arg1)].field_256
                require ext_code.size(tokenAddress)
                call tokenAddress.0xa9059cbb with:
                     gas gas_remaining wei
                    args owner, 0
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require totalReleased >= totalReleased
                uint8(beneficiaries[address(arg1)].field_1536) = 1
                require beneficiaries[address(arg1)].field_512 >= beneficiaries[address(arg1)].field_512
            else:
                require beneficiaries[address(arg1)].field_768 <= block.timestamp
                if not beneficiaries[address(arg1)].field_256:
                    require beneficiaries[address(arg1)].field_1280
                    require beneficiaries[address(arg1)].field_512 <= 0 / beneficiaries[address(arg1)].field_1280
                    require 0 / beneficiaries[address(arg1)].field_1280 <= beneficiaries[address(arg1)].field_256
                    require ext_code.size(tokenAddress)
                    call tokenAddress.0xa9059cbb with:
                         gas gas_remaining wei
                        args owner, beneficiaries[address(arg1)].field_256 - (0 / beneficiaries[address(arg1)].field_1280)
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require totalReleased + beneficiaries[address(arg1)].field_256 - (0 / beneficiaries[address(arg1)].field_1280) >= totalReleased
                    totalReleased = totalReleased + beneficiaries[address(arg1)].field_256 - (0 / beneficiaries[address(arg1)].field_1280)
                    uint8(beneficiaries[address(arg1)].field_1536) = 1
                    require beneficiaries[address(arg1)].field_256 - (0 / beneficiaries[address(arg1)].field_1280) + beneficiaries[address(arg1)].field_512 >= beneficiaries[address(arg1)].field_512
                    beneficiaries[address(arg1)].field_512 = beneficiaries[address(arg1)].field_256 - (0 / beneficiaries[address(arg1)].field_1280) + beneficiaries[address(arg1)].field_512
                else:
                    require beneficiaries[address(arg1)].field_256
                    require (block.timestamp * beneficiaries[address(arg1)].field_256) - (beneficiaries[address(arg1)].field_768 * beneficiaries[address(arg1)].field_256) / beneficiaries[address(arg1)].field_256 == block.timestamp - beneficiaries[address(arg1)].field_768
                    require beneficiaries[address(arg1)].field_1280
                    require beneficiaries[address(arg1)].field_512 <= (block.timestamp * beneficiaries[address(arg1)].field_256) - (beneficiaries[address(arg1)].field_768 * beneficiaries[address(arg1)].field_256) / beneficiaries[address(arg1)].field_1280
                    require (block.timestamp * beneficiaries[address(arg1)].field_256) - (beneficiaries[address(arg1)].field_768 * beneficiaries[address(arg1)].field_256) / beneficiaries[address(arg1)].field_1280 <= beneficiaries[address(arg1)].field_256
                    require ext_code.size(tokenAddress)
                    call tokenAddress.0xa9059cbb with:
                         gas gas_remaining wei
                        args owner, beneficiaries[address(arg1)].field_256 - ((block.timestamp * beneficiaries[address(arg1)].field_256) - (beneficiaries[address(arg1)].field_768 * beneficiaries[address(arg1)].field_256) / beneficiaries[address(arg1)].field_1280)
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require totalReleased + beneficiaries[address(arg1)].field_256 - ((block.timestamp * beneficiaries[address(arg1)].field_256) - (beneficiaries[address(arg1)].field_768 * beneficiaries[address(arg1)].field_256) / beneficiaries[address(arg1)].field_1280) >= totalReleased
                    totalReleased = totalReleased + beneficiaries[address(arg1)].field_256 - ((block.timestamp * beneficiaries[address(arg1)].field_256) - (beneficiaries[address(arg1)].field_768 * beneficiaries[address(arg1)].field_256) / beneficiaries[address(arg1)].field_1280)
                    uint8(beneficiaries[address(arg1)].field_1536) = 1
                    require beneficiaries[address(arg1)].field_256 - ((block.timestamp * beneficiaries[address(arg1)].field_256) - (beneficiaries[address(arg1)].field_768 * beneficiaries[address(arg1)].field_256) / beneficiaries[address(arg1)].field_1280) + beneficiaries[address(arg1)].field_512 >= beneficiaries[address(arg1)].field_512
                    beneficiaries[address(arg1)].field_512 = beneficiaries[address(arg1)].field_256 - ((block.timestamp * beneficiaries[address(arg1)].field_256) - (beneficiaries[address(arg1)].field_768 * beneficiaries[address(arg1)].field_256) / beneficiaries[address(arg1)].field_1280) + beneficiaries[address(arg1)].field_512
    emit Revoked(arg1);
}

function releaseTo(address arg1) {
    require msg.sender == owner
    require uint8(beneficiaries[address(arg1)].field_1552)
    if block.timestamp < beneficiaries[address(arg1)].field_1024:
        require beneficiaries[address(arg1)].field_512 <= 0
        require -beneficiaries[address(arg1)].field_512 > 0
        require 0 >= beneficiaries[address(arg1)].field_512
        beneficiaries[address(arg1)].field_512 = 0
        require totalReleased - beneficiaries[address(arg1)].field_512 >= totalReleased
        totalReleased -= beneficiaries[address(arg1)].field_512
        require ext_code.size(tokenAddress)
        call tokenAddress.0xa9059cbb with:
             gas gas_remaining wei
            args address(arg1), -beneficiaries[address(arg1)].field_512
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        if not beneficiaries[address(arg1)].field_256 - beneficiaries[address(arg1)].field_512:
            Mask(240, 0, beneficiaries[address(arg1)].field_1552) = 0
        emit Released(address(arg1), -beneficiaries[address(arg1)].field_512);
    else:
        require beneficiaries[address(arg1)].field_768 + beneficiaries[address(arg1)].field_1280 >= beneficiaries[address(arg1)].field_768
        if block.timestamp >= beneficiaries[address(arg1)].field_768 + beneficiaries[address(arg1)].field_1280:
            require beneficiaries[address(arg1)].field_512 <= beneficiaries[address(arg1)].field_256
            require beneficiaries[address(arg1)].field_256 - beneficiaries[address(arg1)].field_512 > 0
            require beneficiaries[address(arg1)].field_256 >= beneficiaries[address(arg1)].field_512
            beneficiaries[address(arg1)].field_512 = beneficiaries[address(arg1)].field_256
            require totalReleased + beneficiaries[address(arg1)].field_256 - beneficiaries[address(arg1)].field_512 >= totalReleased
            totalReleased = totalReleased + beneficiaries[address(arg1)].field_256 - beneficiaries[address(arg1)].field_512
            require ext_code.size(tokenAddress)
            call tokenAddress.0xa9059cbb with:
                 gas gas_remaining wei
                args address(arg1), beneficiaries[address(arg1)].field_256 - beneficiaries[address(arg1)].field_512
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            if not beneficiaries[address(arg1)].field_256 - beneficiaries[address(arg1)].field_512:
                Mask(240, 0, beneficiaries[address(arg1)].field_1552) = 0
            emit Released(address(arg1), beneficiaries[address(arg1)].field_256 - beneficiaries[address(arg1)].field_512);
        else:
            if uint8(beneficiaries[address(arg1)].field_1536):
                require beneficiaries[address(arg1)].field_512 <= beneficiaries[address(arg1)].field_256
                require beneficiaries[address(arg1)].field_256 - beneficiaries[address(arg1)].field_512 > 0
                require beneficiaries[address(arg1)].field_256 >= beneficiaries[address(arg1)].field_512
                beneficiaries[address(arg1)].field_512 = beneficiaries[address(arg1)].field_256
                require totalReleased + beneficiaries[address(arg1)].field_256 - beneficiaries[address(arg1)].field_512 >= totalReleased
                totalReleased = totalReleased + beneficiaries[address(arg1)].field_256 - beneficiaries[address(arg1)].field_512
                require ext_code.size(tokenAddress)
                call tokenAddress.0xa9059cbb with:
                     gas gas_remaining wei
                    args address(arg1), beneficiaries[address(arg1)].field_256 - beneficiaries[address(arg1)].field_512
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                if not beneficiaries[address(arg1)].field_256 - beneficiaries[address(arg1)].field_512:
                    Mask(240, 0, beneficiaries[address(arg1)].field_1552) = 0
                emit Released(address(arg1), beneficiaries[address(arg1)].field_256 - beneficiaries[address(arg1)].field_512);
            else:
                require beneficiaries[address(arg1)].field_768 <= block.timestamp
                if not beneficiaries[address(arg1)].field_256:
                    require beneficiaries[address(arg1)].field_1280
                    require beneficiaries[address(arg1)].field_512 <= 0 / beneficiaries[address(arg1)].field_1280
                    require (0 / beneficiaries[address(arg1)].field_1280) - beneficiaries[address(arg1)].field_512 > 0
                    require 0 / beneficiaries[address(arg1)].field_1280 >= beneficiaries[address(arg1)].field_512
                    beneficiaries[address(arg1)].field_512 = 0 / beneficiaries[address(arg1)].field_1280
                    require totalReleased + (0 / beneficiaries[address(arg1)].field_1280) - beneficiaries[address(arg1)].field_512 >= totalReleased
                    totalReleased = totalReleased + (0 / beneficiaries[address(arg1)].field_1280) - beneficiaries[address(arg1)].field_512
                    require ext_code.size(tokenAddress)
                    call tokenAddress.0xa9059cbb with:
                         gas gas_remaining wei
                        args address(arg1), (0 / beneficiaries[address(arg1)].field_1280) - beneficiaries[address(arg1)].field_512
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    if not beneficiaries[address(arg1)].field_256 - beneficiaries[address(arg1)].field_512:
                        Mask(240, 0, beneficiaries[address(arg1)].field_1552) = 0
                    emit Released(address(arg1), (0 / beneficiaries[address(arg1)].field_1280) - beneficiaries[address(arg1)].field_512);
                else:
                    require beneficiaries[address(arg1)].field_256
                    require (block.timestamp * beneficiaries[address(arg1)].field_256) - (beneficiaries[address(arg1)].field_768 * beneficiaries[address(arg1)].field_256) / beneficiaries[address(arg1)].field_256 == block.timestamp - beneficiaries[address(arg1)].field_768
                    require beneficiaries[address(arg1)].field_1280
                    require beneficiaries[address(arg1)].field_512 <= (block.timestamp * beneficiaries[address(arg1)].field_256) - (beneficiaries[address(arg1)].field_768 * beneficiaries[address(arg1)].field_256) / beneficiaries[address(arg1)].field_1280
                    require ((block.timestamp * beneficiaries[address(arg1)].field_256) - (beneficiaries[address(arg1)].field_768 * beneficiaries[address(arg1)].field_256) / beneficiaries[address(arg1)].field_1280) - beneficiaries[address(arg1)].field_512 > 0
                    require (block.timestamp * beneficiaries[address(arg1)].field_256) - (beneficiaries[address(arg1)].field_768 * beneficiaries[address(arg1)].field_256) / beneficiaries[address(arg1)].field_1280 >= beneficiaries[address(arg1)].field_512
                    beneficiaries[address(arg1)].field_512 = (block.timestamp * beneficiaries[address(arg1)].field_256) - (beneficiaries[address(arg1)].field_768 * beneficiaries[address(arg1)].field_256) / beneficiaries[address(arg1)].field_1280
                    require totalReleased + ((block.timestamp * beneficiaries[address(arg1)].field_256) - (beneficiaries[address(arg1)].field_768 * beneficiaries[address(arg1)].field_256) / beneficiaries[address(arg1)].field_1280) - beneficiaries[address(arg1)].field_512 >= totalReleased
                    totalReleased = totalReleased + ((block.timestamp * beneficiaries[address(arg1)].field_256) - (beneficiaries[address(arg1)].field_768 * beneficiaries[address(arg1)].field_256) / beneficiaries[address(arg1)].field_1280) - beneficiaries[address(arg1)].field_512
                    require ext_code.size(tokenAddress)
                    call tokenAddress.0xa9059cbb with:
                         gas gas_remaining wei
                        args address(arg1), ((block.timestamp * beneficiaries[address(arg1)].field_256) - (beneficiaries[address(arg1)].field_768 * beneficiaries[address(arg1)].field_256) / beneficiaries[address(arg1)].field_1280) - beneficiaries[address(arg1)].field_512
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    if not beneficiaries[address(arg1)].field_256 - beneficiaries[address(arg1)].field_512:
                        Mask(240, 0, beneficiaries[address(arg1)].field_1552) = 0
                    emit Released(address(arg1), ((block.timestamp * beneficiaries[address(arg1)].field_256) - (beneficiaries[address(arg1)].field_768 * beneficiaries[address(arg1)].field_256) / beneficiaries[address(arg1)].field_1280) - beneficiaries[address(arg1)].field_512);
}

function release() {
    require uint8(beneficiaries[address(msg.sender)].field_1552)
    if block.timestamp < beneficiaries[address(msg.sender)].field_1024:
        require beneficiaries[address(msg.sender)].field_512 <= 0
        require -beneficiaries[address(msg.sender)].field_512 > 0
        require 0 >= beneficiaries[address(msg.sender)].field_512
        beneficiaries[address(msg.sender)].field_512 = 0
        require totalReleased - beneficiaries[address(msg.sender)].field_512 >= totalReleased
        totalReleased -= beneficiaries[address(msg.sender)].field_512
        require ext_code.size(tokenAddress)
        call tokenAddress.0xa9059cbb with:
             gas gas_remaining wei
            args msg.sender, -beneficiaries[address(msg.sender)].field_512
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        if not beneficiaries[address(msg.sender)].field_256 - beneficiaries[address(msg.sender)].field_512:
            Mask(240, 0, beneficiaries[address(msg.sender)].field_1552) = 0
        emit Released(msg.sender, -beneficiaries[address(msg.sender)].field_512);
    else:
        require beneficiaries[address(msg.sender)].field_768 + beneficiaries[address(msg.sender)].field_1280 >= beneficiaries[address(msg.sender)].field_768
        if block.timestamp >= beneficiaries[address(msg.sender)].field_768 + beneficiaries[address(msg.sender)].field_1280:
            require beneficiaries[address(msg.sender)].field_512 <= beneficiaries[address(msg.sender)].field_256
            require beneficiaries[address(msg.sender)].field_256 - beneficiaries[address(msg.sender)].field_512 > 0
            require beneficiaries[address(msg.sender)].field_256 >= beneficiaries[address(msg.sender)].field_512
            beneficiaries[address(msg.sender)].field_512 = beneficiaries[address(msg.sender)].field_256
            require totalReleased + beneficiaries[address(msg.sender)].field_256 - beneficiaries[address(msg.sender)].field_512 >= totalReleased
            totalReleased = totalReleased + beneficiaries[address(msg.sender)].field_256 - beneficiaries[address(msg.sender)].field_512
            require ext_code.size(tokenAddress)
            call tokenAddress.0xa9059cbb with:
                 gas gas_remaining wei
                args msg.sender, beneficiaries[address(msg.sender)].field_256 - beneficiaries[address(msg.sender)].field_512
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            if not beneficiaries[address(msg.sender)].field_256 - beneficiaries[address(msg.sender)].field_512:
                Mask(240, 0, beneficiaries[address(msg.sender)].field_1552) = 0
            emit Released(msg.sender, beneficiaries[address(msg.sender)].field_256 - beneficiaries[address(msg.sender)].field_512);
        else:
            if uint8(beneficiaries[address(msg.sender)].field_1536):
                require beneficiaries[address(msg.sender)].field_512 <= beneficiaries[address(msg.sender)].field_256
                require beneficiaries[address(msg.sender)].field_256 - beneficiaries[address(msg.sender)].field_512 > 0
                require beneficiaries[address(msg.sender)].field_256 >= beneficiaries[address(msg.sender)].field_512
                beneficiaries[address(msg.sender)].field_512 = beneficiaries[address(msg.sender)].field_256
                require totalReleased + beneficiaries[address(msg.sender)].field_256 - beneficiaries[address(msg.sender)].field_512 >= totalReleased
                totalReleased = totalReleased + beneficiaries[address(msg.sender)].field_256 - beneficiaries[address(msg.sender)].field_512
                require ext_code.size(tokenAddress)
                call tokenAddress.0xa9059cbb with:
                     gas gas_remaining wei
                    args msg.sender, beneficiaries[address(msg.sender)].field_256 - beneficiaries[address(msg.sender)].field_512
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                if not beneficiaries[address(msg.sender)].field_256 - beneficiaries[address(msg.sender)].field_512:
                    Mask(240, 0, beneficiaries[address(msg.sender)].field_1552) = 0
                emit Released(msg.sender, beneficiaries[address(msg.sender)].field_256 - beneficiaries[address(msg.sender)].field_512);
            else:
                require beneficiaries[address(msg.sender)].field_768 <= block.timestamp
                if not beneficiaries[address(msg.sender)].field_256:
                    require beneficiaries[address(msg.sender)].field_1280
                    require beneficiaries[address(msg.sender)].field_512 <= 0 / beneficiaries[address(msg.sender)].field_1280
                    require (0 / beneficiaries[address(msg.sender)].field_1280) - beneficiaries[address(msg.sender)].field_512 > 0
                    require 0 / beneficiaries[address(msg.sender)].field_1280 >= beneficiaries[address(msg.sender)].field_512
                    beneficiaries[address(msg.sender)].field_512 = 0 / beneficiaries[address(msg.sender)].field_1280
                    require totalReleased + (0 / beneficiaries[address(msg.sender)].field_1280) - beneficiaries[address(msg.sender)].field_512 >= totalReleased
                    totalReleased = totalReleased + (0 / beneficiaries[address(msg.sender)].field_1280) - beneficiaries[address(msg.sender)].field_512
                    require ext_code.size(tokenAddress)
                    call tokenAddress.0xa9059cbb with:
                         gas gas_remaining wei
                        args msg.sender, (0 / beneficiaries[address(msg.sender)].field_1280) - beneficiaries[address(msg.sender)].field_512
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    if not beneficiaries[address(msg.sender)].field_256 - beneficiaries[address(msg.sender)].field_512:
                        Mask(240, 0, beneficiaries[address(msg.sender)].field_1552) = 0
                    emit Released(msg.sender, (0 / beneficiaries[address(msg.sender)].field_1280) - beneficiaries[address(msg.sender)].field_512);
                else:
                    require beneficiaries[address(msg.sender)].field_256
                    require (block.timestamp * beneficiaries[address(msg.sender)].field_256) - (beneficiaries[address(msg.sender)].field_768 * beneficiaries[address(msg.sender)].field_256) / beneficiaries[address(msg.sender)].field_256 == block.timestamp - beneficiaries[address(msg.sender)].field_768
                    require beneficiaries[address(msg.sender)].field_1280
                    require beneficiaries[address(msg.sender)].field_512 <= (block.timestamp * beneficiaries[address(msg.sender)].field_256) - (beneficiaries[address(msg.sender)].field_768 * beneficiaries[address(msg.sender)].field_256) / beneficiaries[address(msg.sender)].field_1280
                    require ((block.timestamp * beneficiaries[address(msg.sender)].field_256) - (beneficiaries[address(msg.sender)].field_768 * beneficiaries[address(msg.sender)].field_256) / beneficiaries[address(msg.sender)].field_1280) - beneficiaries[address(msg.sender)].field_512 > 0
                    require (block.timestamp * beneficiaries[address(msg.sender)].field_256) - (beneficiaries[address(msg.sender)].field_768 * beneficiaries[address(msg.sender)].field_256) / beneficiaries[address(msg.sender)].field_1280 >= beneficiaries[address(msg.sender)].field_512
                    beneficiaries[address(msg.sender)].field_512 = (block.timestamp * beneficiaries[address(msg.sender)].field_256) - (beneficiaries[address(msg.sender)].field_768 * beneficiaries[address(msg.sender)].field_256) / beneficiaries[address(msg.sender)].field_1280
                    require totalReleased + ((block.timestamp * beneficiaries[address(msg.sender)].field_256) - (beneficiaries[address(msg.sender)].field_768 * beneficiaries[address(msg.sender)].field_256) / beneficiaries[address(msg.sender)].field_1280) - beneficiaries[address(msg.sender)].field_512 >= totalReleased
                    totalReleased = totalReleased + ((block.timestamp * beneficiaries[address(msg.sender)].field_256) - (beneficiaries[address(msg.sender)].field_768 * beneficiaries[address(msg.sender)].field_256) / beneficiaries[address(msg.sender)].field_1280) - beneficiaries[address(msg.sender)].field_512
                    require ext_code.size(tokenAddress)
                    call tokenAddress.0xa9059cbb with:
                         gas gas_remaining wei
                        args msg.sender, ((block.timestamp * beneficiaries[address(msg.sender)].field_256) - (beneficiaries[address(msg.sender)].field_768 * beneficiaries[address(msg.sender)].field_256) / beneficiaries[address(msg.sender)].field_1280) - beneficiaries[address(msg.sender)].field_512
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    if not beneficiaries[address(msg.sender)].field_256 - beneficiaries[address(msg.sender)].field_512:
                        Mask(240, 0, beneficiaries[address(msg.sender)].field_1552) = 0
                    emit Released(msg.sender, ((block.timestamp * beneficiaries[address(msg.sender)].field_256) - (beneficiaries[address(msg.sender)].field_768 * beneficiaries[address(msg.sender)].field_256) / beneficiaries[address(msg.sender)].field_1280) - beneficiaries[address(msg.sender)].field_512);
}

function _fallback() payable {
    require uint8(beneficiaries[address(msg.sender)].field_1552)
    if block.timestamp < beneficiaries[address(msg.sender)].field_1024:
        require beneficiaries[address(msg.sender)].field_512 <= 0
        require -beneficiaries[address(msg.sender)].field_512 > 0
        require 0 >= beneficiaries[address(msg.sender)].field_512
        beneficiaries[address(msg.sender)].field_512 = 0
        require totalReleased - beneficiaries[address(msg.sender)].field_512 >= totalReleased
        totalReleased -= beneficiaries[address(msg.sender)].field_512
        require ext_code.size(tokenAddress)
        call tokenAddress.0xa9059cbb with:
             gas gas_remaining wei
            args msg.sender, -beneficiaries[address(msg.sender)].field_512
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        if not beneficiaries[address(msg.sender)].field_256 - beneficiaries[address(msg.sender)].field_512:
            Mask(240, 0, beneficiaries[address(msg.sender)].field_1552) = 0
        emit Released(msg.sender, -beneficiaries[address(msg.sender)].field_512);
    else:
        require beneficiaries[address(msg.sender)].field_768 + beneficiaries[address(msg.sender)].field_1280 >= beneficiaries[address(msg.sender)].field_768
        if block.timestamp >= beneficiaries[address(msg.sender)].field_768 + beneficiaries[address(msg.sender)].field_1280:
            require beneficiaries[address(msg.sender)].field_512 <= beneficiaries[address(msg.sender)].field_256
            require beneficiaries[address(msg.sender)].field_256 - beneficiaries[address(msg.sender)].field_512 > 0
            require beneficiaries[address(msg.sender)].field_256 >= beneficiaries[address(msg.sender)].field_512
            beneficiaries[address(msg.sender)].field_512 = beneficiaries[address(msg.sender)].field_256
            require totalReleased + beneficiaries[address(msg.sender)].field_256 - beneficiaries[address(msg.sender)].field_512 >= totalReleased
            totalReleased = totalReleased + beneficiaries[address(msg.sender)].field_256 - beneficiaries[address(msg.sender)].field_512
            require ext_code.size(tokenAddress)
            call tokenAddress.0xa9059cbb with:
                 gas gas_remaining wei
                args msg.sender, beneficiaries[address(msg.sender)].field_256 - beneficiaries[address(msg.sender)].field_512
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            if not beneficiaries[address(msg.sender)].field_256 - beneficiaries[address(msg.sender)].field_512:
                Mask(240, 0, beneficiaries[address(msg.sender)].field_1552) = 0
            emit Released(msg.sender, beneficiaries[address(msg.sender)].field_256 - beneficiaries[address(msg.sender)].field_512);
        else:
            if uint8(beneficiaries[address(msg.sender)].field_1536):
                require beneficiaries[address(msg.sender)].field_512 <= beneficiaries[address(msg.sender)].field_256
                require beneficiaries[address(msg.sender)].field_256 - beneficiaries[address(msg.sender)].field_512 > 0
                require beneficiaries[address(msg.sender)].field_256 >= beneficiaries[address(msg.sender)].field_512
                beneficiaries[address(msg.sender)].field_512 = beneficiaries[address(msg.sender)].field_256
                require totalReleased + beneficiaries[address(msg.sender)].field_256 - beneficiaries[address(msg.sender)].field_512 >= totalReleased
                totalReleased = totalReleased + beneficiaries[address(msg.sender)].field_256 - beneficiaries[address(msg.sender)].field_512
                require ext_code.size(tokenAddress)
                call tokenAddress.0xa9059cbb with:
                     gas gas_remaining wei
                    args msg.sender, beneficiaries[address(msg.sender)].field_256 - beneficiaries[address(msg.sender)].field_512
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                if not beneficiaries[address(msg.sender)].field_256 - beneficiaries[address(msg.sender)].field_512:
                    Mask(240, 0, beneficiaries[address(msg.sender)].field_1552) = 0
                emit Released(msg.sender, beneficiaries[address(msg.sender)].field_256 - beneficiaries[address(msg.sender)].field_512);
            else:
                require beneficiaries[address(msg.sender)].field_768 <= block.timestamp
                if not beneficiaries[address(msg.sender)].field_256:
                    require beneficiaries[address(msg.sender)].field_1280
                    require beneficiaries[address(msg.sender)].field_512 <= 0 / beneficiaries[address(msg.sender)].field_1280
                    require (0 / beneficiaries[address(msg.sender)].field_1280) - beneficiaries[address(msg.sender)].field_512 > 0
                    require 0 / beneficiaries[address(msg.sender)].field_1280 >= beneficiaries[address(msg.sender)].field_512
                    beneficiaries[address(msg.sender)].field_512 = 0 / beneficiaries[address(msg.sender)].field_1280
                    require totalReleased + (0 / beneficiaries[address(msg.sender)].field_1280) - beneficiaries[address(msg.sender)].field_512 >= totalReleased
                    totalReleased = totalReleased + (0 / beneficiaries[address(msg.sender)].field_1280) - beneficiaries[address(msg.sender)].field_512
                    require ext_code.size(tokenAddress)
                    call tokenAddress.0xa9059cbb with:
                         gas gas_remaining wei
                        args msg.sender, (0 / beneficiaries[address(msg.sender)].field_1280) - beneficiaries[address(msg.sender)].field_512
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    if not beneficiaries[address(msg.sender)].field_256 - beneficiaries[address(msg.sender)].field_512:
                        Mask(240, 0, beneficiaries[address(msg.sender)].field_1552) = 0
                    emit Released(msg.sender, (0 / beneficiaries[address(msg.sender)].field_1280) - beneficiaries[address(msg.sender)].field_512);
                else:
                    require beneficiaries[address(msg.sender)].field_256
                    require (block.timestamp * beneficiaries[address(msg.sender)].field_256) - (beneficiaries[address(msg.sender)].field_768 * beneficiaries[address(msg.sender)].field_256) / beneficiaries[address(msg.sender)].field_256 == block.timestamp - beneficiaries[address(msg.sender)].field_768
                    require beneficiaries[address(msg.sender)].field_1280
                    require beneficiaries[address(msg.sender)].field_512 <= (block.timestamp * beneficiaries[address(msg.sender)].field_256) - (beneficiaries[address(msg.sender)].field_768 * beneficiaries[address(msg.sender)].field_256) / beneficiaries[address(msg.sender)].field_1280
                    require ((block.timestamp * beneficiaries[address(msg.sender)].field_256) - (beneficiaries[address(msg.sender)].field_768 * beneficiaries[address(msg.sender)].field_256) / beneficiaries[address(msg.sender)].field_1280) - beneficiaries[address(msg.sender)].field_512 > 0
                    require (block.timestamp * beneficiaries[address(msg.sender)].field_256) - (beneficiaries[address(msg.sender)].field_768 * beneficiaries[address(msg.sender)].field_256) / beneficiaries[address(msg.sender)].field_1280 >= beneficiaries[address(msg.sender)].field_512
                    beneficiaries[address(msg.sender)].field_512 = (block.timestamp * beneficiaries[address(msg.sender)].field_256) - (beneficiaries[address(msg.sender)].field_768 * beneficiaries[address(msg.sender)].field_256) / beneficiaries[address(msg.sender)].field_1280
                    require totalReleased + ((block.timestamp * beneficiaries[address(msg.sender)].field_256) - (beneficiaries[address(msg.sender)].field_768 * beneficiaries[address(msg.sender)].field_256) / beneficiaries[address(msg.sender)].field_1280) - beneficiaries[address(msg.sender)].field_512 >= totalReleased
                    totalReleased = totalReleased + ((block.timestamp * beneficiaries[address(msg.sender)].field_256) - (beneficiaries[address(msg.sender)].field_768 * beneficiaries[address(msg.sender)].field_256) / beneficiaries[address(msg.sender)].field_1280) - beneficiaries[address(msg.sender)].field_512
                    require ext_code.size(tokenAddress)
                    call tokenAddress.0xa9059cbb with:
                         gas gas_remaining wei
                        args msg.sender, ((block.timestamp * beneficiaries[address(msg.sender)].field_256) - (beneficiaries[address(msg.sender)].field_768 * beneficiaries[address(msg.sender)].field_256) / beneficiaries[address(msg.sender)].field_1280) - beneficiaries[address(msg.sender)].field_512
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    if not beneficiaries[address(msg.sender)].field_256 - beneficiaries[address(msg.sender)].field_512:
                        Mask(240, 0, beneficiaries[address(msg.sender)].field_1552) = 0
                    emit Released(msg.sender, ((block.timestamp * beneficiaries[address(msg.sender)].field_256) - (beneficiaries[address(msg.sender)].field_768 * beneficiaries[address(msg.sender)].field_256) / beneficiaries[address(msg.sender)].field_1280) - beneficiaries[address(msg.sender)].field_512);
}



}

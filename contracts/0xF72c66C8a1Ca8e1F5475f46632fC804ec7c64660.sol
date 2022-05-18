contract main {




// =====================  Runtime code  =====================


uint256 verificationFee;
mapping of uint256 verificationFeeBalances;
address owner;
address authorityContractAddress;
address paymentContractAddress;
mapping of struct records;

function paymentContractAddress() {
    return paymentContractAddress
}

function records(address arg1) {
    return bool(records[arg1].field_0), records[arg1].field_0, records[arg1].field_256, records[arg1].field_512
}

function owner() {
    return owner
}

function verificationFeeBalances(address arg1) {
    return verificationFeeBalances[arg1]
}

function verificationFee() {
    return verificationFee
}

function authorityContractAddress() {
    return authorityContractAddress
}

function _fallback() payable {
    revert
}

function changeOwner(address arg1) {
    require msg.sender == owner
    owner = arg1
}

function setFee(uint256 arg1) {
    require msg.sender == owner
    verificationFee = arg1
}

function setPaymentContractAddress(address arg1) {
    require msg.sender == owner
    paymentContractAddress = arg1
}

function setAuthorityContractAddress(address arg1) {
    require msg.sender == owner
    authorityContractAddress = arg1
}

function verifiedAttributes(address arg1) {
    require ext_code.size(this.address)
    call this.address.0xe9653482 with:
         gas gas_remaining wei
        args arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if ext_call.return_data[0]:
        return records[address(arg1)].field_512
    else:
        return 0
}

function hasVerifiedAttributeValue(address arg1, uint256 arg2) {
    require ext_code.size(this.address)
    call this.address.0xe9653482 with:
         gas gas_remaining wei
        args arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if ext_call.return_data[0]:
        return (records[address(arg1)].field_512 and arg2 == arg2)
    else:
        return 0
}

function hasVerifiedAttributeIndex(address arg1, uint256 arg2) {
    require ext_code.size(this.address)
    call this.address.0xe9653482 with:
         gas gas_remaining wei
        args arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if ext_call.return_data[0]:
        return (records[address(arg1)].field_512 and 2^arg2 == 2^arg2)
    else:
        return 0
}

function hasValidProfile(address arg1) {
    if records[address(arg1)].field_0:
        require ext_code.size(authorityContractAddress)
        call authorityContractAddress.0x9d09390b with:
             gas gas_remaining wei
            args records[address(arg1)].field_0, records[address(arg1)].field_256
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if ext_call.return_data[0]:
            return 1
        else:
            return 0
    else:
        return 0
}

function withdrawFee() {
    require ext_code.size(authorityContractAddress)
    call authorityContractAddress.0x9d09390b with:
         gas gas_remaining wei
        args msg.sender, block.number
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0]
    require paymentContractAddress
    require verificationFeeBalances[address(msg.sender)] > 0
    verificationFeeBalances[address(msg.sender)] = 0
    require ext_code.size(paymentContractAddress)
    call paymentContractAddress.0xa9059cbb with:
         gas gas_remaining wei
        args msg.sender, verificationFeeBalances[address(msg.sender)]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0]
}

function revoke(address arg1) {
    require ext_code.size(authorityContractAddress)
    call authorityContractAddress.0x9d09390b with:
         gas gas_remaining wei
        args msg.sender, block.number
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0]
    if records[address(arg1)].field_8:
        if records[address(arg1)].field_8 != msg.sender:
            require ext_code.size(authorityContractAddress)
            call authorityContractAddress.0x9d09390b with:
                 gas gas_remaining wei
                args records[address(arg1)].field_0, block.number
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require not ext_call.return_data[0]
    records[address(arg1)].field_0 = 0
    records[address(arg1)].field_8 = msg.sender
    records[address(arg1)].field_256 = block.number
    records[address(arg1)].field_512 = 0
}

function approve(address arg1, uint256 arg2) {
    require ext_code.size(authorityContractAddress)
    call authorityContractAddress.0x9d09390b with:
         gas gas_remaining wei
        args msg.sender, block.number
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0]
    if records[address(arg1)].field_8:
        if records[address(arg1)].field_8 != msg.sender:
            require ext_code.size(authorityContractAddress)
            call authorityContractAddress.0x9d09390b with:
                 gas gas_remaining wei
                args records[address(arg1)].field_0, block.number
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require not ext_call.return_data[0]
    records[address(arg1)].field_0 = 1
    records[address(arg1)].field_8 = msg.sender
    records[address(arg1)].field_256 = block.number
    records[address(arg1)].field_512 = arg2
}

function claim(address arg1, uint256 arg2, uint256 arg3, uint8 arg4, bytes32 arg5, bytes32 arg6) {
    require ext_code.size(authorityContractAddress)
    call authorityContractAddress.0x9d09390b with:
         gas gas_remaining wei
        args address(arg1), block.number
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0]
    if not records[address(msg.sender)].field_8:
        if verificationFee <= 0:
            hash = sha256hash(this.address, msg.sender, arg2, arg3) 
            if not sha256hash.result:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            signer = erecover(sha3(uint32(arg2), Mask(192, 32, '\x19Ethereum Signed Message:\n32') >> 32, hash), arg4 << 248, arg5, arg6) 
        else:
            require ext_code.size(paymentContractAddress)
            call paymentContractAddress.0x23b872dd with:
                 gas gas_remaining wei
                args msg.sender, address(this.address), verificationFee
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_call.return_data[0]
            require verificationFeeBalances[address(arg1)] + verificationFee >= verificationFeeBalances[address(arg1)]
            require verificationFeeBalances[address(arg1)] + verificationFee >= verificationFee
            verificationFeeBalances[address(arg1)] += verificationFee
            hash = sha256hash(this.address, msg.sender, arg2, arg3) 
            if not sha256hash.result:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            signer = erecover(sha3(uint64(arg2), Mask(160, 96, arg3) >> 96, hash), arg4 << 248, arg5, arg6) 
    else:
        if records[address(msg.sender)].field_8 != arg1:
            require ext_code.size(authorityContractAddress)
            call authorityContractAddress.0x9d09390b with:
                 gas gas_remaining wei
                args records[address(msg.sender)].field_0, block.number
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require not ext_call.return_data[0]
        if verificationFee > 0:
            require ext_code.size(paymentContractAddress)
            call paymentContractAddress.0x23b872dd with:
                 gas gas_remaining wei
                args msg.sender, address(this.address), verificationFee
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_call.return_data[0]
            require verificationFeeBalances[address(arg1)] + verificationFee >= verificationFeeBalances[address(arg1)]
            require verificationFeeBalances[address(arg1)] + verificationFee >= verificationFee
            verificationFeeBalances[address(arg1)] += verificationFee
        hash = sha256hash(this.address, msg.sender, arg2, arg3) 
        if not sha256hash.result:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        signer = erecover(sha3(uint64(arg2), Mask(160, 96, arg3) >> 96, hash), arg4 << 248, arg5, arg6) 
    if not erecover.result:
        revert with ext_call.return_data[0 len return_data.size]
    require address(signer) == arg1
    require block.number <= arg3
    records[address(msg.sender)].field_0 = 1
    records[address(msg.sender)].field_8 = arg1
    records[address(msg.sender)].field_256 = block.number
    records[address(msg.sender)].field_512 = arg2
}



}

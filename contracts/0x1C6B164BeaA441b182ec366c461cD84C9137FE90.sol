contract main {




// =====================  Runtime code  =====================


address sub_ba9da211Address;
mapping of struct match;
uint256 sub_175c55f9;

function sub_175c55f9(?) payable {
    return sub_175c55f9
}

function getMatch(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    return match[arg1].field_256, 
           match[arg1].field_512,
           match[arg1].field_768,
           match[arg1].field_1024,
           bool(match[arg1].field_1280)
}

function sub_43005a49(?) payable {
    require calldata.size - 4 >= 64
    return match[arg1][arg2 << 248].field_512
}

function sub_4802ee1e(?) payable {
    require calldata.size - 4 >= 96
    return match[arg1][arg2 << 248][address(arg3)].field_0
}

function collateralAddress() payable {
    return sub_ba9da211Address
}

function sub_82df3457(?) payable {
    require calldata.size - 4 >= 64
    return match[arg1][arg2 << 248].field_256
}

function sub_ba9da211(?) payable {
    return sub_ba9da211Address
}

function _fallback() payable {
    revert
}

function sub_f5af8390(?) payable {
    require calldata.size - 4 >= 96
    if not match[stor2].field_1280:
        revert with 0, 'Match still active'
    sub_175c55f9++
    match[stor2 + 1].field_1024 = arg3
    match[stor2].field_264 = arg1
    match[stor2].field_512 = arg2
    emit 0xc21a199f: arg2, sub_175c55f9
    return 1
}

function sub_2a22481d(?) payable {
    require calldata.size - 4 >= 64
    require match[arg1][arg2 << 248].field_512 + 1 >= match[arg1][arg2 << 248].field_512
    if not match[arg1][arg2 << 248].field_512 + 1:
        require match[arg1][arg2 << 248].field_256 <= 0
        return -match[arg1][arg2 << 248].field_256
    require (10^18 * match[arg1][arg2 << 248].field_512) + 10^18 / match[arg1][arg2 << 248].field_512 + 1 == 10^18
    require match[arg1].field_1024 * ((10^18 * match[arg1][arg2 << 248].field_512) + 10^18)^2 / 2 >= match[arg1].field_1024 * ((10^18 * match[arg1][arg2 << 248].field_512) + 10^18)^2 / 2
    require match[arg1][arg2 << 248].field_256 <= match[arg1].field_1024 * ((10^18 * match[arg1][arg2 << 248].field_512) + 10^18)^2 / 2 / 10^18
    return ((match[arg1].field_1024 * ((10^18 * match[arg1][arg2 << 248].field_512) + 10^18)^2 / 2 / 10^18) - match[arg1][arg2 << 248].field_256)
}

function sub_b724a951(?) payable {
    require calldata.size - 4 >= 64
    if not match[arg1][arg2 << 248].field_512:
        return 0
    require 1 <= match[arg1][arg2 << 248].field_512
    if not match[arg1][arg2 << 248].field_512 - 1:
        require 0 <= match[arg1][arg2 << 248].field_256
        return match[arg1][arg2 << 248].field_256
    require (10^18 * match[arg1][arg2 << 248].field_512) - 10^18 / match[arg1][arg2 << 248].field_512 - 1 == 10^18
    require match[arg1].field_1024 * ((10^18 * match[arg1][arg2 << 248].field_512) - 10^18)^2 / 2 >= match[arg1].field_1024 * ((10^18 * match[arg1][arg2 << 248].field_512) - 10^18)^2 / 2
    require match[arg1].field_1024 * ((10^18 * match[arg1][arg2 << 248].field_512) - 10^18)^2 / 2 / 10^18 <= match[arg1][arg2 << 248].field_256
    return (match[arg1][arg2 << 248].field_256 - (match[arg1].field_1024 * ((10^18 * match[arg1][arg2 << 248].field_512) - 10^18)^2 / 2 / 10^18))
}

function claimWinnings(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    if not match[arg1].field_1280:
        revert with 0, 'Match not ended'
    if match[arg1][match[arg1].field_256][msg.sender].field_0 <= 0:
        revert with 0, 'No prizes available'
    match[arg1][match[arg1].field_256][msg.sender].field_0 = 0
    require match[arg1].field_512 > 0
    require match[arg1].field_512
    if not match[arg1].field_768 / match[arg1].field_512:
        require ext_code.size(sub_ba9da211Address)
        call sub_ba9da211Address.0xa9059cbb with:
             gas gas_remaining wei
            args msg.sender, 0
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if not ext_call.return_data[0]:
            revert with 0, 'Transfer failed'
        emit 0x6256309d: match[arg1][match[arg1].field_256][msg.sender].field_0, 0, arg1, msg.sender
    else:
        require match[arg1][match[arg1].field_256][msg.sender].field_0 * match[arg1].field_768 / match[arg1].field_512 / match[arg1].field_768 / match[arg1].field_512 == match[arg1][match[arg1].field_256][msg.sender].field_0
        require ext_code.size(sub_ba9da211Address)
        call sub_ba9da211Address.0xa9059cbb with:
             gas gas_remaining wei
            args msg.sender, match[arg1][match[arg1].field_256][msg.sender].field_0 * match[arg1].field_768 / match[arg1].field_512
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if not ext_call.return_data[0]:
            revert with 0, 'Transfer failed'
        emit 0x6256309d: match[arg1][match[arg1].field_256][msg.sender].field_0, match[arg1][match[arg1].field_256][msg.sender].field_0 * match[arg1].field_768 / match[arg1].field_512, arg1, msg.sender
    return 0
}

function sub_cac0b9e4(?) payable {
    require calldata.size - 4 >= 32
    if arg1 >= match[stor2].field_264:
        revert with 0, 'Invalid Team'
    require match[stor2][arg1 << 248].field_512 + 1 >= match[stor2][arg1 << 248].field_512
    if not match[stor2][arg1 << 248].field_512 + 1:
        require match[stor2][arg1 << 248].field_256 <= 0
        require ext_code.size(sub_ba9da211Address)
        call sub_ba9da211Address.0x23b872dd with:
             gas gas_remaining wei
            args msg.sender, this.address, -match[stor2][arg1 << 248].field_256
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if not ext_call.return_data[0]:
            revert with 0, 'Transfer failed'
        require 0 >= match[stor2][arg1 << 248].field_256
        match[stor2][arg1 << 248].field_256 = 0
        require -match[stor2][arg1 << 248].field_256 + match[stor2].field_768 >= match[stor2].field_768
        match[stor2].field_768 -= match[stor2][arg1 << 248].field_256
        match[stor2][arg1 << 248][msg.sender].field_0++
        match[stor2][arg1 << 248].field_512++
        emit 0xe44651b5: -match[stor2][arg1 << 248].field_256, sub_175c55f9, msg.sender
    else:
        require (10^18 * match[stor2][arg1 << 248].field_512) + 10^18 / match[stor2][arg1 << 248].field_512 + 1 == 10^18
        require match[stor2].field_1024 * ((10^18 * match[stor2][arg1 << 248].field_512) + 10^18)^2 / 2 >= match[stor2].field_1024 * ((10^18 * match[stor2][arg1 << 248].field_512) + 10^18)^2 / 2
        require match[stor2][arg1 << 248].field_256 <= match[stor2].field_1024 * ((10^18 * match[stor2][arg1 << 248].field_512) + 10^18)^2 / 2 / 10^18
        require ext_code.size(sub_ba9da211Address)
        call sub_ba9da211Address.0x23b872dd with:
             gas gas_remaining wei
            args msg.sender, this.address, (match[stor2].field_1024 * ((10^18 * match[stor2][arg1 << 248].field_512) + 10^18)^2 / 2 / 10^18) - match[stor2][arg1 << 248].field_256
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if not ext_call.return_data[0]:
            revert with 0, 'Transfer failed'
        require match[stor2].field_1024 * ((10^18 * match[stor2][arg1 << 248].field_512) + 10^18)^2 / 2 / 10^18 >= match[stor2][arg1 << 248].field_256
        match[stor2][arg1 << 248].field_256 = match[stor2].field_1024 * ((10^18 * match[stor2][arg1 << 248].field_512) + 10^18)^2 / 2 / 10^18
        require (match[stor2].field_1024 * ((10^18 * match[stor2][arg1 << 248].field_512) + 10^18)^2 / 2 / 10^18) - match[stor2][arg1 << 248].field_256 + match[stor2].field_768 >= match[stor2].field_768
        match[stor2].field_768 = (match[stor2].field_1024 * ((10^18 * match[stor2][arg1 << 248].field_512) + 10^18)^2 / 2 / 10^18) - match[stor2][arg1 << 248].field_256 + match[stor2].field_768
        match[stor2][arg1 << 248][msg.sender].field_0++
        match[stor2][arg1 << 248].field_512++
        emit 0xe44651b5: ((match[stor2].field_1024 * ((10^18 * match[stor2][arg1 << 248].field_512) + 10^18)^2 / 2 / 10^18) - match[stor2][arg1 << 248].field_256), sub_175c55f9, msg.sender
    if match[stor2][arg1 << 248].field_512 == match[stor2].field_512:
        match[stor2].field_256 = arg1
        match[stor2].field_1280 = 1
        emit 0x8361531b: sub_175c55f9, arg1
    return 1
}

function sub_1aee8521(?) payable {
    require calldata.size - 4 >= 32
    if arg1 >= match[stor2].field_264:
        revert with 0, 'Invalid Team'
    if match[stor2][arg1 << 248][msg.sender].field_0 <= 0:
        revert with 0, 'User has no tokens remaining'
    if not match[stor2][arg1 << 248].field_512:
        match[stor2][arg1 << 248][msg.sender].field_0--
        match[stor2][arg1 << 248].field_512--
        require 0 <= match[stor2][arg1 << 248].field_256
        require 0 <= match[stor2].field_768
        require ext_code.size(sub_ba9da211Address)
        call sub_ba9da211Address.0xa9059cbb with:
             gas gas_remaining wei
            args msg.sender, 0
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if not ext_call.return_data[0]:
            revert with 0, 'Transfer failed'
        emit TokenSold(0, sub_175c55f9, msg.sender);
    else:
        require 1 <= match[stor2][arg1 << 248].field_512
        if not match[stor2][arg1 << 248].field_512 - 1:
            require 0 <= match[stor2][arg1 << 248].field_256
            match[stor2][arg1 << 248][msg.sender].field_0--
            match[stor2][arg1 << 248].field_512--
            require match[stor2][arg1 << 248].field_256 <= match[stor2][arg1 << 248].field_256
            match[stor2][arg1 << 248].field_256 = 0
            require match[stor2][arg1 << 248].field_256 <= match[stor2].field_768
            match[stor2].field_768 -= match[stor2][arg1 << 248].field_256
            require ext_code.size(sub_ba9da211Address)
            call sub_ba9da211Address.0xa9059cbb with:
                 gas gas_remaining wei
                args msg.sender, match[stor2][arg1 << 248].field_256
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if not ext_call.return_data[0]:
                revert with 0, 'Transfer failed'
            emit TokenSold(match[stor2][arg1 << 248].field_256, sub_175c55f9, msg.sender);
        else:
            require (10^18 * match[stor2][arg1 << 248].field_512) - 10^18 / match[stor2][arg1 << 248].field_512 - 1 == 10^18
            require match[stor2].field_1024 * ((10^18 * match[stor2][arg1 << 248].field_512) - 10^18)^2 / 2 >= match[stor2].field_1024 * ((10^18 * match[stor2][arg1 << 248].field_512) - 10^18)^2 / 2
            require match[stor2].field_1024 * ((10^18 * match[stor2][arg1 << 248].field_512) - 10^18)^2 / 2 / 10^18 <= match[stor2][arg1 << 248].field_256
            match[stor2][arg1 << 248][msg.sender].field_0--
            match[stor2][arg1 << 248].field_512--
            require match[stor2][arg1 << 248].field_256 - (match[stor2].field_1024 * ((10^18 * match[stor2][arg1 << 248].field_512) - 10^18)^2 / 2 / 10^18) <= match[stor2][arg1 << 248].field_256
            match[stor2][arg1 << 248].field_256 = match[stor2].field_1024 * ((10^18 * match[stor2][arg1 << 248].field_512) - 10^18)^2 / 2 / 10^18
            require match[stor2][arg1 << 248].field_256 - (match[stor2].field_1024 * ((10^18 * match[stor2][arg1 << 248].field_512) - 10^18)^2 / 2 / 10^18) <= match[stor2].field_768
            match[stor2].field_768 = match[stor2].field_768 - match[stor2][arg1 << 248].field_256 + (match[stor2].field_1024 * ((10^18 * match[stor2][arg1 << 248].field_512) - 10^18)^2 / 2 / 10^18)
            require ext_code.size(sub_ba9da211Address)
            call sub_ba9da211Address.0xa9059cbb with:
                 gas gas_remaining wei
                args msg.sender, match[stor2][arg1 << 248].field_256 - (match[stor2].field_1024 * ((10^18 * match[stor2][arg1 << 248].field_512) - 10^18)^2 / 2 / 10^18)
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if not ext_call.return_data[0]:
                revert with 0, 'Transfer failed'
            emit TokenSold((match[stor2][arg1 << 248].field_256 - (match[stor2].field_1024 * ((10^18 * match[stor2][arg1 << 248].field_512) - 10^18)^2 / 2 / 10^18)), sub_175c55f9, msg.sender);
    return 1
}



}

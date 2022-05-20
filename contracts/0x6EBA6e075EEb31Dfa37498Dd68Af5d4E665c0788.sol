contract main {




// =====================  Runtime code  =====================


address coordinatorAddress;
uint256 rewardAmount;
uint256 depositAmount;
uint256 sub_62d24ae9;
uint256 sub_ddf8b612;
uint256 sub_3627e52b;
uint256 votingPeriod;
uint256 sub_e94058ff;
uint256 sub_845f3cca;
mapping of struct stor9;
mapping of uint8 stor10;
mapping of struct sub_c32fdf34;

function votingPeriod() {
    return votingPeriod
}

function coordinator() {
    return coordinatorAddress
}

function sub_3627e52b(?) {
    return sub_3627e52b
}

function depositAmount() {
    return depositAmount
}

function sub_62d24ae9(?) {
    return sub_62d24ae9
}

function sub_845f3cca(?) {
    return sub_845f3cca
}

function sub_c32fdf34(?) {
    return sub_c32fdf34[arg1].field_0, sub_c32fdf34[arg1].field_256, sub_c32fdf34[arg1].field_512
}

function sub_ddf8b612(?) {
    return sub_ddf8b612
}

function sub_e94058ff(?) {
    return sub_e94058ff
}

function rewardAmount() {
    return rewardAmount
}

function kill() {
    require ext_code.size(coordinatorAddress)
    call coordinatorAddress.0x21f8a721 with:
         gas gas_remaining wei
        args 0xaa6d756c746953696741646d696e000000000000000000000000000000000000
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require msg.sender == ext_call.return_data[12 len 20]
    require ext_code.size(coordinatorAddress)
    call coordinatorAddress.0x21f8a721 with:
         gas gas_remaining wei
        args 0x746f6b656e000000000000000000000000000000000000000000000000000000
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(coordinatorAddress)
    call coordinatorAddress.0x21f8a721 with:
         gas gas_remaining wei
        args 0xaa6d756c746953696741646d696e000000000000000000000000000000000000
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(coordinatorAddress)
    call coordinatorAddress.0x21f8a721 with:
         gas gas_remaining wei
        args 0x746f6b656e000000000000000000000000000000000000000000000000000000
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(address(ext_call.return_data[0]))
    call address(ext_call.return_data[0]).0x70a08231 with:
         gas gas_remaining wei
        args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(address(ext_call.return_data[0]))
    call address(ext_call.return_data[0]).0xa9059cbb with:
         gas gas_remaining wei
        args address(ext_call.return_data[0]), ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0]
    require ext_code.size(coordinatorAddress)
    call coordinatorAddress.0x21f8a721 with:
         gas gas_remaining wei
        args 0xaa6d756c746953696741646d696e000000000000000000000000000000000000
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    selfdestruct(ext_call.return_data[12 len 20])
}

function _fallback() payable {
    revert
}

function sub_75b0f611(?) {
    require ext_code.size(coordinatorAddress)
    call coordinatorAddress.0x21f8a721 with:
         gas gas_remaining wei
        args 0xaa6d756c746953696741646d696e000000000000000000000000000000000000
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require msg.sender == ext_call.return_data[12 len 20]
    sub_62d24ae9 = arg1
    emit 0x42a2e1d5: arg1
}

function sub_9cf0f0ec(?) {
    require ext_code.size(coordinatorAddress)
    call coordinatorAddress.0x21f8a721 with:
         gas gas_remaining wei
        args 0xaa6d756c746953696741646d696e000000000000000000000000000000000000
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require msg.sender == ext_call.return_data[12 len 20]
    sub_845f3cca = arg1
    emit 0xc3974896: arg1
}

function sub_e7e41f2d(?) {
    require ext_code.size(coordinatorAddress)
    call coordinatorAddress.0x21f8a721 with:
         gas gas_remaining wei
        args 0xaa6d756c746953696741646d696e000000000000000000000000000000000000
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require msg.sender == ext_call.return_data[12 len 20]
    depositAmount = arg1
    emit 0x934c2162: arg1
}

function setCoordinator(address arg1) {
    require ext_code.size(coordinatorAddress)
    call coordinatorAddress.0x21f8a721 with:
         gas gas_remaining wei
        args 0xaa6d756c746953696741646d696e000000000000000000000000000000000000
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require msg.sender == ext_call.return_data[12 len 20]
    require arg1
    coordinatorAddress = arg1
}

function updateRewardAmount(uint256 arg1) {
    require ext_code.size(coordinatorAddress)
    call coordinatorAddress.0x21f8a721 with:
         gas gas_remaining wei
        args 0xaa6d756c746953696741646d696e000000000000000000000000000000000000
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require msg.sender == ext_call.return_data[12 len 20]
    rewardAmount = arg1
    emit 0x694305e4: arg1
}

function sub_b30ee3b0(?) {
    require ext_code.size(coordinatorAddress)
    call coordinatorAddress.0x21f8a721 with:
         gas gas_remaining wei
        args 0xaa6d756c746953696741646d696e000000000000000000000000000000000000
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require msg.sender == ext_call.return_data[12 len 20]
    sub_3627e52b = arg1
    votingPeriod = arg2
    sub_e94058ff = arg3
}

function sub_08fe0bad(?) {
    require ext_code.size(coordinatorAddress)
    call coordinatorAddress.0x21f8a721 with:
         gas gas_remaining wei
        args 0xaa6d756c746953696741646d696e000000000000000000000000000000000000
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require msg.sender == ext_call.return_data[12 len 20]
    require arg1 > 0
    require arg1 < 100
    sub_ddf8b612 = arg1
    emit 0x3812b2e8: arg1
}

function sub_2132935d(?) {
    require stor9[arg1].field_512
    require msg.sender == stor9[arg1].field_0
    require not stor9[arg1].field_2048
    stor9[arg1].field_0 = 0
    stor9[arg1].field_256 = 0
    stor9[arg1].field_512 = 0
    stor9[arg1].field_768 = 0
    stor9[arg1].field_1280 = 0
    stor9[arg1].field_1536 = 0
    stor9[arg1].field_2048 = 0
    stor9[arg1].field_2304 = 0
    stor9[arg1].field_2560 = 0
    stor9[arg1].field_2816 = 0
    require 1 <= sub_c32fdf34[msg.sender].field_512
    sub_c32fdf34[msg.sender].field_512--
    emit 0xf9ecde96: arg1, 1, msg.sender, 0
}

function sub_74c8d386(?) {
    require ext_code.size(coordinatorAddress)
    call coordinatorAddress.0x21f8a721 with:
         gas gas_remaining wei
        args 'ownerPool'
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(address(ext_call.return_data[0]))
    call address(ext_call.return_data[0]).ownerStatus(address arg1) with:
         gas gas_remaining wei
        args msg.sender
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 64
    require ext_call.return_data[32] <= 2
    require 2 == ext_call.return_data[32]
    idx = 0
    while idx < ('cd', 4).length:
        mem[0] = address(cd[((32 * idx) + cd[4] + 36)])
        mem[32] = 11
        sub_c32fdf34[address(cd[((32 * idx) + cd[4] + 36)])].field_0 = 0
        sub_c32fdf34[address(cd[((32 * idx) + cd[4] + 36)])].field_256 = 0
        sub_c32fdf34[address(cd[((32 * idx) + cd[4] + 36)])].field_512 = 0
        idx = idx + 1
        continue 
}

function withdraw(address arg1, uint256 arg2) {
    require ext_code.size(coordinatorAddress)
    call coordinatorAddress.0x21f8a721 with:
         gas gas_remaining wei
        args 0xaa6d756c746953696741646d696e000000000000000000000000000000000000
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require msg.sender == ext_call.return_data[12 len 20]
    require ext_code.size(coordinatorAddress)
    call coordinatorAddress.0x21f8a721 with:
         gas gas_remaining wei
        args 0x746f6b656e000000000000000000000000000000000000000000000000000000
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(address(ext_call.return_data[0]))
    call address(ext_call.return_data[0]).0xa9059cbb with:
         gas gas_remaining wei
        args address(arg1), arg2
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0]
}

function sub_91d5c021(?) {
    require ext_code.size(coordinatorAddress)
    call coordinatorAddress.0x21f8a721 with:
         gas gas_remaining wei
        args 'subscription'
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(address(ext_call.return_data[0]))
    call address(ext_call.return_data[0]).0xa1c5c871 with:
         gas gas_remaining wei
        args msg.sender
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0]
    require arg2 >= depositAmount
    require not stor10[arg1]
    stor9[arg1].field_0 = msg.sender or Mask(96, 160, stor9[arg1].field_0)
    stor9[arg1].field_512 = arg1
    stor9[arg1].field_768 = block.timestamp
    require ext_code.size(coordinatorAddress)
    call coordinatorAddress.0x21f8a721 with:
         gas gas_remaining wei
        args 0x726174696e6700000000000000000000000000000000000000000000000000
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(address(ext_call.return_data[0]))
    call address(ext_call.return_data[0]).0x1a36017a with:
         gas gas_remaining wei
        args msg.sender
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    stor10[arg1] = 1
    require sub_c32fdf34[msg.sender].field_512 + 1 >= sub_c32fdf34[msg.sender].field_512
    sub_c32fdf34[msg.sender].field_512++
    emit 0xf9ecde96: arg1, 0, msg.sender, 0
}

function sub_47bcac57(?) {
    require stor9[arg1].field_512
    require msg.sender == stor9[arg1].field_0
    require not stor9[arg1].field_2048
    if sub_3627e52b:
        require sub_3627e52b
        require 24 * 3600 * sub_3627e52b / sub_3627e52b == 24 * 3600
    require stor9[arg1].field_768 <= block.timestamp
    require block.timestamp - stor9[arg1].field_768 > 24 * 3600 * sub_3627e52b
    stor9[arg1].field_0 = 0
    stor9[arg1].field_256 = 0
    stor9[arg1].field_512 = 0
    stor9[arg1].field_768 = 0
    stor9[arg1].field_1280 = 0
    stor9[arg1].field_1536 = 0
    stor9[arg1].field_2048 = 0
    stor9[arg1].field_2304 = 0
    stor9[arg1].field_2560 = 0
    stor9[arg1].field_2816 = 0
    require ext_code.size(coordinatorAddress)
    call coordinatorAddress.0x21f8a721 with:
         gas gas_remaining wei
        args 0x726174696e6700000000000000000000000000000000000000000000000000
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(address(ext_call.return_data[0]))
    call address(ext_call.return_data[0]).0xbb00397c with:
         gas gas_remaining wei
        args msg.sender, 100
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require ext_code.size(coordinatorAddress)
    call coordinatorAddress.0x21f8a721 with:
         gas gas_remaining wei
        args 0x746f6b656e000000000000000000000000000000000000000000000000000000
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(address(ext_call.return_data[0]))
    call address(ext_call.return_data[0]).0xa9059cbb with:
         gas gas_remaining wei
        args msg.sender, rewardAmount
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0]
    emit 0xf9ecde96: arg1, 2, msg.sender, rewardAmount
}

function sub_7734457f(?) {
    require stor9[arg1].field_512
    require ext_code.size(coordinatorAddress)
    call coordinatorAddress.0x21f8a721 with:
         gas gas_remaining wei
        args 'subscription'
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(address(ext_call.return_data[0]))
    call address(ext_call.return_data[0]).0xa1c5c871 with:
         gas gas_remaining wei
        args msg.sender
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0]
    require stor9[arg1].field_0 != msg.sender
    require stor9[arg1].field_512
    require not stor9[arg1].field_2048
    if sub_3627e52b:
        require sub_3627e52b
        require 24 * 3600 * sub_3627e52b / sub_3627e52b == 24 * 3600
    require stor9[arg1].field_768 <= block.timestamp
    require block.timestamp - stor9[arg1].field_768 <= 24 * 3600 * sub_3627e52b
    require arg2 >= depositAmount
    require sub_c32fdf34[msg.sender].field_0 < sub_845f3cca
    stor9[arg1].field_2560 = block.timestamp
    stor9[arg1].field_256 = msg.sender or Mask(96, 160, stor9[arg1].field_256)
    require sub_c32fdf34[msg.sender].field_0 + 1 >= sub_c32fdf34[msg.sender].field_0
    sub_c32fdf34[msg.sender].field_0++
    stor9[arg1][7][msg.sender].field_0 = 1
    stor9[arg1][4][stor9[arg1].field_0].field_0 = 1
    stor9[arg1].field_2048 = 1
    stor9[arg1].field_1280 = 1
    require ext_code.size(coordinatorAddress)
    call coordinatorAddress.0x21f8a721 with:
         gas gas_remaining wei
        args 0x726174696e6700000000000000000000000000000000000000000000000000
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(address(ext_call.return_data[0]))
    call address(ext_call.return_data[0]).0x1a36017a with:
         gas gas_remaining wei
        args msg.sender
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    emit 0xf9ecde96: arg1, 4, msg.sender, 0
}

function sub_48f364aa(?) {
    require stor9[arg1].field_512
    if votingPeriod:
        require votingPeriod
        require 24 * 3600 * votingPeriod / votingPeriod == 24 * 3600
    require stor9[arg1].field_2560 <= block.timestamp
    require block.timestamp - stor9[arg1].field_2560 > 24 * 3600 * votingPeriod
    require stor9[arg1].field_2816 <= 3
    if stor9[arg1].field_2816 != 3:
        if stor9[arg1].field_1280 > stor9[arg1].field_2048:
            stor9[arg1].field_2816 = 1
            if votingPeriod:
                require votingPeriod
                require 24 * 3600 * votingPeriod / votingPeriod == 24 * 3600
            require stor9[arg1].field_2560 <= block.timestamp
            require block.timestamp - stor9[arg1].field_2560 > 24 * 3600 * votingPeriod
        else:
            if stor9[arg1].field_1280 >= stor9[arg1].field_2048:
                stor9[arg1].field_2816 = 3
                if sub_e94058ff + votingPeriod:
                    require sub_e94058ff + votingPeriod
                    require (24 * 3600 * sub_e94058ff) + (24 * 3600 * votingPeriod) / sub_e94058ff + votingPeriod == 24 * 3600
                require stor9[arg1].field_2560 <= block.timestamp
                require block.timestamp - stor9[arg1].field_2560 > (24 * 3600 * sub_e94058ff) + (24 * 3600 * votingPeriod)
            else:
                stor9[arg1].field_2816 = 2
                if votingPeriod:
                    require votingPeriod
                    require 24 * 3600 * votingPeriod / votingPeriod == 24 * 3600
                require stor9[arg1].field_2560 <= block.timestamp
                require block.timestamp - stor9[arg1].field_2560 > 24 * 3600 * votingPeriod
    else:
        if sub_e94058ff + votingPeriod:
            require sub_e94058ff + votingPeriod
            require (24 * 3600 * sub_e94058ff) + (24 * 3600 * votingPeriod) / sub_e94058ff + votingPeriod == 24 * 3600
        require stor9[arg1].field_2560 <= block.timestamp
        if block.timestamp - stor9[arg1].field_2560 <= (24 * 3600 * sub_e94058ff) + (24 * 3600 * votingPeriod):
            if sub_e94058ff + votingPeriod:
                require sub_e94058ff + votingPeriod
                require (24 * 3600 * sub_e94058ff) + (24 * 3600 * votingPeriod) / sub_e94058ff + votingPeriod == 24 * 3600
            require stor9[arg1].field_2560 <= block.timestamp
            require block.timestamp - stor9[arg1].field_2560 > (24 * 3600 * sub_e94058ff) + (24 * 3600 * votingPeriod)
        else:
            if stor9[arg1].field_1280 > stor9[arg1].field_2048:
                stor9[arg1].field_2816 = 1
                if votingPeriod:
                    require votingPeriod
                    require 24 * 3600 * votingPeriod / votingPeriod == 24 * 3600
                require stor9[arg1].field_2560 <= block.timestamp
                require block.timestamp - stor9[arg1].field_2560 > 24 * 3600 * votingPeriod
            else:
                if stor9[arg1].field_1280 >= stor9[arg1].field_2048:
                    stor9[arg1].field_2816 = 3
                    if sub_e94058ff + votingPeriod:
                        require sub_e94058ff + votingPeriod
                        require (24 * 3600 * sub_e94058ff) + (24 * 3600 * votingPeriod) / sub_e94058ff + votingPeriod == 24 * 3600
                    require stor9[arg1].field_2560 <= block.timestamp
                    require block.timestamp - stor9[arg1].field_2560 > (24 * 3600 * sub_e94058ff) + (24 * 3600 * votingPeriod)
                else:
                    stor9[arg1].field_2816 = 2
                    if votingPeriod:
                        require votingPeriod
                        require 24 * 3600 * votingPeriod / votingPeriod == 24 * 3600
                    require stor9[arg1].field_2560 <= block.timestamp
                    require block.timestamp - stor9[arg1].field_2560 > 24 * 3600 * votingPeriod
    return stor9[arg1].field_2048
}

function sub_d8add3f9(?) {
    require stor9[arg1].field_512
    if votingPeriod:
        require votingPeriod
        require 24 * 3600 * votingPeriod / votingPeriod == 24 * 3600
    require stor9[arg1].field_2560 <= block.timestamp
    require block.timestamp - stor9[arg1].field_2560 > 24 * 3600 * votingPeriod
    require stor9[arg1].field_2816 <= 3
    if stor9[arg1].field_2816 != 3:
        if stor9[arg1].field_1280 > stor9[arg1].field_2048:
            stor9[arg1].field_2816 = 1
            if votingPeriod:
                require votingPeriod
                require 24 * 3600 * votingPeriod / votingPeriod == 24 * 3600
            require stor9[arg1].field_2560 <= block.timestamp
            require block.timestamp - stor9[arg1].field_2560 > 24 * 3600 * votingPeriod
        else:
            if stor9[arg1].field_1280 >= stor9[arg1].field_2048:
                stor9[arg1].field_2816 = 3
                if sub_e94058ff + votingPeriod:
                    require sub_e94058ff + votingPeriod
                    require (24 * 3600 * sub_e94058ff) + (24 * 3600 * votingPeriod) / sub_e94058ff + votingPeriod == 24 * 3600
                require stor9[arg1].field_2560 <= block.timestamp
                require block.timestamp - stor9[arg1].field_2560 > (24 * 3600 * sub_e94058ff) + (24 * 3600 * votingPeriod)
            else:
                stor9[arg1].field_2816 = 2
                if votingPeriod:
                    require votingPeriod
                    require 24 * 3600 * votingPeriod / votingPeriod == 24 * 3600
                require stor9[arg1].field_2560 <= block.timestamp
                require block.timestamp - stor9[arg1].field_2560 > 24 * 3600 * votingPeriod
    else:
        if sub_e94058ff + votingPeriod:
            require sub_e94058ff + votingPeriod
            require (24 * 3600 * sub_e94058ff) + (24 * 3600 * votingPeriod) / sub_e94058ff + votingPeriod == 24 * 3600
        require stor9[arg1].field_2560 <= block.timestamp
        if block.timestamp - stor9[arg1].field_2560 <= (24 * 3600 * sub_e94058ff) + (24 * 3600 * votingPeriod):
            if sub_e94058ff + votingPeriod:
                require sub_e94058ff + votingPeriod
                require (24 * 3600 * sub_e94058ff) + (24 * 3600 * votingPeriod) / sub_e94058ff + votingPeriod == 24 * 3600
            require stor9[arg1].field_2560 <= block.timestamp
            require block.timestamp - stor9[arg1].field_2560 > (24 * 3600 * sub_e94058ff) + (24 * 3600 * votingPeriod)
        else:
            if stor9[arg1].field_1280 > stor9[arg1].field_2048:
                stor9[arg1].field_2816 = 1
                if votingPeriod:
                    require votingPeriod
                    require 24 * 3600 * votingPeriod / votingPeriod == 24 * 3600
                require stor9[arg1].field_2560 <= block.timestamp
                require block.timestamp - stor9[arg1].field_2560 > 24 * 3600 * votingPeriod
            else:
                if stor9[arg1].field_1280 >= stor9[arg1].field_2048:
                    stor9[arg1].field_2816 = 3
                    if sub_e94058ff + votingPeriod:
                        require sub_e94058ff + votingPeriod
                        require (24 * 3600 * sub_e94058ff) + (24 * 3600 * votingPeriod) / sub_e94058ff + votingPeriod == 24 * 3600
                    require stor9[arg1].field_2560 <= block.timestamp
                    require block.timestamp - stor9[arg1].field_2560 > (24 * 3600 * sub_e94058ff) + (24 * 3600 * votingPeriod)
                else:
                    stor9[arg1].field_2816 = 2
                    if votingPeriod:
                        require votingPeriod
                        require 24 * 3600 * votingPeriod / votingPeriod == 24 * 3600
                    require stor9[arg1].field_2560 <= block.timestamp
                    require block.timestamp - stor9[arg1].field_2560 > 24 * 3600 * votingPeriod
    return stor9[arg1].field_1280
}

function sub_7b665b97(?) {
    require stor9[arg1].field_2048
    if sub_e94058ff + votingPeriod:
        require sub_e94058ff + votingPeriod
        require (24 * 3600 * sub_e94058ff) + (24 * 3600 * votingPeriod) / sub_e94058ff + votingPeriod == 24 * 3600
    require stor9[arg1].field_2560 <= block.timestamp
    require block.timestamp - stor9[arg1].field_2560 > (24 * 3600 * sub_e94058ff) + (24 * 3600 * votingPeriod)
    if votingPeriod:
        require votingPeriod
        require 24 * 3600 * votingPeriod / votingPeriod == 24 * 3600
    require stor9[arg1].field_2560 <= block.timestamp
    require block.timestamp - stor9[arg1].field_2560 > 24 * 3600 * votingPeriod
    require stor9[arg1].field_2816 <= 3
    if stor9[arg1].field_2816 != 3:
        if stor9[arg1].field_1280 > stor9[arg1].field_2048:
            stor9[arg1].field_2816 = 1
            revert
        if stor9[arg1].field_1280 < stor9[arg1].field_2048:
            stor9[arg1].field_2816 = 2
            revert
        stor9[arg1].field_2816 = 3
    else:
        if sub_e94058ff + votingPeriod:
            require sub_e94058ff + votingPeriod
            require (24 * 3600 * sub_e94058ff) + (24 * 3600 * votingPeriod) / sub_e94058ff + votingPeriod == 24 * 3600
        require stor9[arg1].field_2560 <= block.timestamp
        if block.timestamp - stor9[arg1].field_2560 > (24 * 3600 * sub_e94058ff) + (24 * 3600 * votingPeriod):
            if stor9[arg1].field_1280 > stor9[arg1].field_2048:
                stor9[arg1].field_2816 = 1
                revert
            if stor9[arg1].field_1280 < stor9[arg1].field_2048:
                stor9[arg1].field_2816 = 2
                revert
            stor9[arg1].field_2816 = 3
    require stor9[arg1][4][msg.sender].field_0 <= 2
    if stor9[arg1][4][msg.sender].field_0 != 1:
        require stor9[arg1][7][msg.sender].field_0 <= 2
        require stor9[arg1][7][msg.sender].field_0 == 1
    require stor9[arg1][4][msg.sender].field_0 <= 2
    if stor9[arg1][4][msg.sender].field_0 != 1:
        stor9[arg1][7][msg.sender].field_0 = 2
    else:
        stor9[arg1][4][msg.sender].field_0 = 2
    require stor9[arg1].field_1536 + 1 >= stor9[arg1].field_1536
    if stor9[arg1].field_1536 == stor9[arg1].field_1280 + stor9[arg1].field_2048:
        stor9[arg1].field_0 = 0
        stor9[arg1].field_256 = 0
        stor9[arg1].field_512 = 0
        stor9[arg1].field_768 = 0
        stor9[arg1].field_1280 = 0
        stor9[arg1].field_1536 = 0
        stor9[arg1].field_2048 = 0
        stor9[arg1].field_2304 = 0
        stor9[arg1].field_2560 = 0
        stor9[arg1].field_2816 = 0
    require ext_code.size(coordinatorAddress)
    call coordinatorAddress.0x21f8a721 with:
         gas gas_remaining wei
        args 0x746f6b656e000000000000000000000000000000000000000000000000000000
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(address(ext_call.return_data[0]))
    if msg.sender == stor9[arg1].field_0:
        call address(ext_call.return_data[0]).0xa9059cbb with:
             gas gas_remaining wei
            args msg.sender, depositAmount
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0]
        emit 0xf9ecde96: arg1, 2, msg.sender, depositAmount
    else:
        if stor9[arg1].field_256 != msg.sender:
            call address(ext_call.return_data[0]).0xa9059cbb with:
                 gas gas_remaining wei
                args msg.sender, sub_62d24ae9
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_call.return_data[0]
            emit 0xf9ecde96: arg1, 2, msg.sender, sub_62d24ae9
        else:
            call address(ext_call.return_data[0]).0xa9059cbb with:
                 gas gas_remaining wei
                args msg.sender, depositAmount
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_call.return_data[0]
            emit 0xf9ecde96: arg1, 2, msg.sender, depositAmount
}

function sub_650f659c(?) {
    require stor9[arg1].field_2048
    if votingPeriod:
        require votingPeriod
        require 24 * 3600 * votingPeriod / votingPeriod == 24 * 3600
    require stor9[arg1].field_2560 <= block.timestamp
    require block.timestamp - stor9[arg1].field_2560 > 24 * 3600 * votingPeriod
    require stor9[arg1].field_2816 <= 3
    if stor9[arg1].field_2816 == 3:
        if sub_e94058ff + votingPeriod:
            require sub_e94058ff + votingPeriod
            require (24 * 3600 * sub_e94058ff) + (24 * 3600 * votingPeriod) / sub_e94058ff + votingPeriod == 24 * 3600
        require stor9[arg1].field_2560 <= block.timestamp
        require block.timestamp - stor9[arg1].field_2560 > (24 * 3600 * sub_e94058ff) + (24 * 3600 * votingPeriod)
    if stor9[arg1].field_1280 <= stor9[arg1].field_2048:
        if stor9[arg1].field_1280 >= stor9[arg1].field_2048:
            stor9[arg1].field_2816 = 3
        else:
            stor9[arg1].field_2816 = 2
        revert
    stor9[arg1].field_2816 = 1
    require stor9[arg1][4][msg.sender].field_0 <= 2
    require stor9[arg1][4][msg.sender].field_0 == 1
    require 1 <= stor9[arg1].field_2048
    require 1 <= stor9[arg1].field_1280
    if msg.sender == stor9[arg1].field_0:
        if rewardAmount:
            require rewardAmount
            require sub_ddf8b612 * rewardAmount / rewardAmount == sub_ddf8b612
        stor9[arg1][4][msg.sender].field_0 = 2
        require ext_code.size(coordinatorAddress)
        call coordinatorAddress.0x21f8a721 with:
             gas gas_remaining wei
            args 0x726174696e6700000000000000000000000000000000000000000000000000
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_code.size(address(ext_call.return_data[0]))
        call address(ext_call.return_data[0]).0xbb00397c with:
             gas gas_remaining wei
            args msg.sender, 100
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require ext_code.size(coordinatorAddress)
        call coordinatorAddress.0x21f8a721 with:
             gas gas_remaining wei
            args 0x746f6b656e000000000000000000000000000000000000000000000000000000
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_code.size(address(ext_call.return_data[0]))
        call address(ext_call.return_data[0]).0xa9059cbb with:
             gas gas_remaining wei
            args msg.sender, sub_ddf8b612 * rewardAmount / 100
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0]
        emit 0xf9ecde96: arg1, 2, msg.sender, sub_ddf8b612 * rewardAmount / 100
    else:
        require sub_ddf8b612 <= 100
        if rewardAmount:
            require rewardAmount
            require (100 * rewardAmount) - (sub_ddf8b612 * rewardAmount) / rewardAmount == -sub_ddf8b612 + 100
        require stor9[arg1].field_1280 - 1
        require stor9[arg1].field_1280 - 2 >= -1
        if sub_62d24ae9:
            require sub_62d24ae9
            require (-2 * sub_62d24ae9) + (stor9[arg1].field_1280 * sub_62d24ae9) + (stor9[arg1].field_2048 * sub_62d24ae9) / sub_62d24ae9 == stor9[arg1].field_1280 + stor9[arg1].field_2048 - 2
        require stor9[arg1].field_1280 - 1
        require ((100 * rewardAmount) - (sub_ddf8b612 * rewardAmount) / 100 / stor9[arg1].field_1280 - 1) + ((-2 * sub_62d24ae9) + (stor9[arg1].field_1280 * sub_62d24ae9) + (stor9[arg1].field_2048 * sub_62d24ae9) / stor9[arg1].field_1280 - 1) >= (-2 * sub_62d24ae9) + (stor9[arg1].field_1280 * sub_62d24ae9) + (stor9[arg1].field_2048 * sub_62d24ae9) / stor9[arg1].field_1280 - 1
        stor9[arg1][4][msg.sender].field_0 = 2
        require ext_code.size(coordinatorAddress)
        call coordinatorAddress.0x21f8a721 with:
             gas gas_remaining wei
            args 0x726174696e6700000000000000000000000000000000000000000000000000
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_code.size(address(ext_call.return_data[0]))
        call address(ext_call.return_data[0]).0xbb00397c with:
             gas gas_remaining wei
            args msg.sender, 100
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require ext_code.size(coordinatorAddress)
        call coordinatorAddress.0x21f8a721 with:
             gas gas_remaining wei
            args 0x746f6b656e000000000000000000000000000000000000000000000000000000
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_code.size(address(ext_call.return_data[0]))
        call address(ext_call.return_data[0]).0xa9059cbb with:
             gas gas_remaining wei
            args msg.sender, ((100 * rewardAmount) - (sub_ddf8b612 * rewardAmount) / 100 / stor9[arg1].field_1280 - 1) + ((-2 * sub_62d24ae9) + (stor9[arg1].field_1280 * sub_62d24ae9) + (stor9[arg1].field_2048 * sub_62d24ae9) / stor9[arg1].field_1280 - 1)
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0]
        emit 0xf9ecde96: arg1, 2, msg.sender, ((100 * rewardAmount) - (sub_ddf8b612 * rewardAmount) / 100 / stor9[arg1].field_1280 - 1) + ((-2 * sub_62d24ae9) + (stor9[arg1].field_1280 * sub_62d24ae9) + (stor9[arg1].field_2048 * sub_62d24ae9) / stor9[arg1].field_1280 - 1)
}

function sub_6a132a36(?) {
    require stor9[arg1].field_2048
    if votingPeriod:
        require votingPeriod
        require 24 * 3600 * votingPeriod / votingPeriod == 24 * 3600
    require stor9[arg1].field_2560 <= block.timestamp
    require block.timestamp - stor9[arg1].field_2560 > 24 * 3600 * votingPeriod
    require stor9[arg1].field_2816 <= 3
    if stor9[arg1].field_2816 == 3:
        if sub_e94058ff + votingPeriod:
            require sub_e94058ff + votingPeriod
            require (24 * 3600 * sub_e94058ff) + (24 * 3600 * votingPeriod) / sub_e94058ff + votingPeriod == 24 * 3600
        require stor9[arg1].field_2560 <= block.timestamp
        require block.timestamp - stor9[arg1].field_2560 > (24 * 3600 * sub_e94058ff) + (24 * 3600 * votingPeriod)
    if stor9[arg1].field_1280 > stor9[arg1].field_2048:
        stor9[arg1].field_2816 = 1
        revert
    if stor9[arg1].field_1280 >= stor9[arg1].field_2048:
        stor9[arg1].field_2816 = 3
        revert
    stor9[arg1].field_2816 = 2
    require stor9[arg1][7][msg.sender].field_0 <= 2
    require stor9[arg1][7][msg.sender].field_0 == 1
    require 1 <= stor9[arg1].field_2048
    require 1 <= stor9[arg1].field_1280
    if msg.sender == stor9[arg1].field_256:
        if rewardAmount:
            require rewardAmount
            require sub_ddf8b612 / 100 * rewardAmount / rewardAmount == sub_ddf8b612 / 100
        stor9[arg1][7][msg.sender].field_0 = 2
        require ext_code.size(coordinatorAddress)
        call coordinatorAddress.0x21f8a721 with:
             gas gas_remaining wei
            args 0x726174696e6700000000000000000000000000000000000000000000000000
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_code.size(address(ext_call.return_data[0]))
        call address(ext_call.return_data[0]).0xbb00397c with:
             gas gas_remaining wei
            args msg.sender, 100
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require ext_code.size(coordinatorAddress)
        call coordinatorAddress.0x21f8a721 with:
             gas gas_remaining wei
            args 0x746f6b656e000000000000000000000000000000000000000000000000000000
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_code.size(address(ext_call.return_data[0]))
        call address(ext_call.return_data[0]).0xa9059cbb with:
             gas gas_remaining wei
            args msg.sender, sub_ddf8b612 / 100 * rewardAmount
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0]
        emit 0xf9ecde96: arg1, 2, msg.sender, sub_ddf8b612 / 100 * rewardAmount
    else:
        require sub_ddf8b612 <= 100
        if rewardAmount:
            require rewardAmount
            require (100 * rewardAmount) - (sub_ddf8b612 * rewardAmount) / rewardAmount == -sub_ddf8b612 + 100
        require stor9[arg1].field_2048 - 1
        require stor9[arg1].field_1280 - 2 >= -1
        if sub_62d24ae9:
            require sub_62d24ae9
            require (-2 * sub_62d24ae9) + (stor9[arg1].field_1280 * sub_62d24ae9) + (stor9[arg1].field_2048 * sub_62d24ae9) / sub_62d24ae9 == stor9[arg1].field_1280 + stor9[arg1].field_2048 - 2
        require stor9[arg1].field_2048 - 1
        require ((100 * rewardAmount) - (sub_ddf8b612 * rewardAmount) / 100 / stor9[arg1].field_2048 - 1) + ((-2 * sub_62d24ae9) + (stor9[arg1].field_1280 * sub_62d24ae9) + (stor9[arg1].field_2048 * sub_62d24ae9) / stor9[arg1].field_2048 - 1) >= (-2 * sub_62d24ae9) + (stor9[arg1].field_1280 * sub_62d24ae9) + (stor9[arg1].field_2048 * sub_62d24ae9) / stor9[arg1].field_2048 - 1
        stor9[arg1][7][msg.sender].field_0 = 2
        require ext_code.size(coordinatorAddress)
        call coordinatorAddress.0x21f8a721 with:
             gas gas_remaining wei
            args 0x726174696e6700000000000000000000000000000000000000000000000000
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_code.size(address(ext_call.return_data[0]))
        call address(ext_call.return_data[0]).0xbb00397c with:
             gas gas_remaining wei
            args msg.sender, 100
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require ext_code.size(coordinatorAddress)
        call coordinatorAddress.0x21f8a721 with:
             gas gas_remaining wei
            args 0x746f6b656e000000000000000000000000000000000000000000000000000000
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_code.size(address(ext_call.return_data[0]))
        call address(ext_call.return_data[0]).0xa9059cbb with:
             gas gas_remaining wei
            args msg.sender, ((100 * rewardAmount) - (sub_ddf8b612 * rewardAmount) / 100 / stor9[arg1].field_2048 - 1) + ((-2 * sub_62d24ae9) + (stor9[arg1].field_1280 * sub_62d24ae9) + (stor9[arg1].field_2048 * sub_62d24ae9) / stor9[arg1].field_2048 - 1)
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0]
        emit 0xf9ecde96: arg1, 2, msg.sender, ((100 * rewardAmount) - (sub_ddf8b612 * rewardAmount) / 100 / stor9[arg1].field_2048 - 1) + ((-2 * sub_62d24ae9) + (stor9[arg1].field_1280 * sub_62d24ae9) + (stor9[arg1].field_2048 * sub_62d24ae9) / stor9[arg1].field_2048 - 1)
}

function sub_5ac7f0d8(?) {
    require stor9[arg1].field_512
    require ext_code.size(coordinatorAddress)
    call coordinatorAddress.0x21f8a721 with:
         gas gas_remaining wei
        args 'subscription'
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(address(ext_call.return_data[0]))
    call address(ext_call.return_data[0]).0xa1c5c871 with:
         gas gas_remaining wei
        args msg.sender
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0]
    require sub_c32fdf34[msg.sender].field_256 < sub_845f3cca
    if msg.sender == stor9[arg1].field_0:
        require stor9[arg1].field_256 != msg.sender
    if votingPeriod:
        require votingPeriod
        require 24 * 3600 * votingPeriod / votingPeriod == 24 * 3600
    require stor9[arg1].field_2560 <= block.timestamp
    if votingPeriod:
        require votingPeriod
        require 24 * 3600 * votingPeriod / votingPeriod == 24 * 3600
    require stor9[arg1].field_2560 <= block.timestamp
    if block.timestamp - stor9[arg1].field_2560 <= 24 * 3600 * votingPeriod:
        require block.timestamp - stor9[arg1].field_2560 <= 24 * 3600 * votingPeriod
    else:
        require block.timestamp - stor9[arg1].field_2560 > 24 * 3600 * votingPeriod
        require stor9[arg1].field_2816 <= 3
        if stor9[arg1].field_2816 != 3:
            if stor9[arg1].field_1280 > stor9[arg1].field_2048:
                stor9[arg1].field_2816 = 1
                if votingPeriod:
                    require votingPeriod
                    require 24 * 3600 * votingPeriod / votingPeriod == 24 * 3600
                require stor9[arg1].field_2560 <= block.timestamp
                require block.timestamp - stor9[arg1].field_2560 <= 24 * 3600 * votingPeriod
            else:
                if stor9[arg1].field_1280 >= stor9[arg1].field_2048:
                    stor9[arg1].field_2816 = 3
                    if sub_e94058ff + votingPeriod:
                        require sub_e94058ff + votingPeriod
                        require (24 * 3600 * sub_e94058ff) + (24 * 3600 * votingPeriod) / sub_e94058ff + votingPeriod == 24 * 3600
                    require stor9[arg1].field_2560 <= block.timestamp
                    require block.timestamp - stor9[arg1].field_2560 <= (24 * 3600 * sub_e94058ff) + (24 * 3600 * votingPeriod)
                else:
                    stor9[arg1].field_2816 = 2
                    if votingPeriod:
                        require votingPeriod
                        require 24 * 3600 * votingPeriod / votingPeriod == 24 * 3600
                    require stor9[arg1].field_2560 <= block.timestamp
                    require block.timestamp - stor9[arg1].field_2560 <= 24 * 3600 * votingPeriod
        else:
            if sub_e94058ff + votingPeriod:
                require sub_e94058ff + votingPeriod
                require (24 * 3600 * sub_e94058ff) + (24 * 3600 * votingPeriod) / sub_e94058ff + votingPeriod == 24 * 3600
            require stor9[arg1].field_2560 <= block.timestamp
            if block.timestamp - stor9[arg1].field_2560 <= (24 * 3600 * sub_e94058ff) + (24 * 3600 * votingPeriod):
                if sub_e94058ff + votingPeriod:
                    require sub_e94058ff + votingPeriod
                    require (24 * 3600 * sub_e94058ff) + (24 * 3600 * votingPeriod) / sub_e94058ff + votingPeriod == 24 * 3600
                require stor9[arg1].field_2560 <= block.timestamp
                require block.timestamp - stor9[arg1].field_2560 <= (24 * 3600 * sub_e94058ff) + (24 * 3600 * votingPeriod)
            else:
                if stor9[arg1].field_1280 > stor9[arg1].field_2048:
                    stor9[arg1].field_2816 = 1
                    if votingPeriod:
                        require votingPeriod
                        require 24 * 3600 * votingPeriod / votingPeriod == 24 * 3600
                    require stor9[arg1].field_2560 <= block.timestamp
                    require block.timestamp - stor9[arg1].field_2560 <= 24 * 3600 * votingPeriod
                else:
                    if stor9[arg1].field_1280 >= stor9[arg1].field_2048:
                        stor9[arg1].field_2816 = 3
                        if sub_e94058ff + votingPeriod:
                            require sub_e94058ff + votingPeriod
                            require (24 * 3600 * sub_e94058ff) + (24 * 3600 * votingPeriod) / sub_e94058ff + votingPeriod == 24 * 3600
                        require stor9[arg1].field_2560 <= block.timestamp
                        require block.timestamp - stor9[arg1].field_2560 <= (24 * 3600 * sub_e94058ff) + (24 * 3600 * votingPeriod)
                    else:
                        stor9[arg1].field_2816 = 2
                        if votingPeriod:
                            require votingPeriod
                            require 24 * 3600 * votingPeriod / votingPeriod == 24 * 3600
                        require stor9[arg1].field_2560 <= block.timestamp
                        require block.timestamp - stor9[arg1].field_2560 <= 24 * 3600 * votingPeriod
    require arg2 >= sub_62d24ae9
    require 0 < stor9[arg1].field_2048
    require stor9[arg1][7][msg.sender].field_0 <= 2
    require not stor9[arg1][7][msg.sender].field_0
    require stor9[arg1][4][msg.sender].field_0 <= 2
    require not stor9[arg1][4][msg.sender].field_0
    require sub_c32fdf34[msg.sender].field_256 + 1 >= sub_c32fdf34[msg.sender].field_256
    sub_c32fdf34[msg.sender].field_256++
    stor9[arg1][7][msg.sender].field_0 = 1
    stor9[arg1].field_2048++
    require ext_code.size(coordinatorAddress)
    call coordinatorAddress.0x21f8a721 with:
         gas gas_remaining wei
        args 0x726174696e6700000000000000000000000000000000000000000000000000
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(address(ext_call.return_data[0]))
    call address(ext_call.return_data[0]).0x1a36017a with:
         gas gas_remaining wei
        args msg.sender
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    emit 0xf9ecde96: arg1, 3, msg.sender, 0
}

function sub_b4dce259(?) {
    require stor9[arg1].field_512
    require ext_code.size(coordinatorAddress)
    call coordinatorAddress.0x21f8a721 with:
         gas gas_remaining wei
        args 'subscription'
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(address(ext_call.return_data[0]))
    call address(ext_call.return_data[0]).0xa1c5c871 with:
         gas gas_remaining wei
        args msg.sender
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0]
    require sub_c32fdf34[msg.sender].field_256 < sub_845f3cca
    if msg.sender == stor9[arg1].field_0:
        require stor9[arg1].field_256 != msg.sender
    if votingPeriod:
        require votingPeriod
        require 24 * 3600 * votingPeriod / votingPeriod == 24 * 3600
    require stor9[arg1].field_2560 <= block.timestamp
    if votingPeriod:
        require votingPeriod
        require 24 * 3600 * votingPeriod / votingPeriod == 24 * 3600
    require stor9[arg1].field_2560 <= block.timestamp
    if block.timestamp - stor9[arg1].field_2560 <= 24 * 3600 * votingPeriod:
        require block.timestamp - stor9[arg1].field_2560 <= 24 * 3600 * votingPeriod
    else:
        require block.timestamp - stor9[arg1].field_2560 > 24 * 3600 * votingPeriod
        require stor9[arg1].field_2816 <= 3
        if stor9[arg1].field_2816 != 3:
            if stor9[arg1].field_1280 > stor9[arg1].field_2048:
                stor9[arg1].field_2816 = 1
                if votingPeriod:
                    require votingPeriod
                    require 24 * 3600 * votingPeriod / votingPeriod == 24 * 3600
                require stor9[arg1].field_2560 <= block.timestamp
                require block.timestamp - stor9[arg1].field_2560 <= 24 * 3600 * votingPeriod
            else:
                if stor9[arg1].field_1280 >= stor9[arg1].field_2048:
                    stor9[arg1].field_2816 = 3
                    if sub_e94058ff + votingPeriod:
                        require sub_e94058ff + votingPeriod
                        require (24 * 3600 * sub_e94058ff) + (24 * 3600 * votingPeriod) / sub_e94058ff + votingPeriod == 24 * 3600
                    require stor9[arg1].field_2560 <= block.timestamp
                    require block.timestamp - stor9[arg1].field_2560 <= (24 * 3600 * sub_e94058ff) + (24 * 3600 * votingPeriod)
                else:
                    stor9[arg1].field_2816 = 2
                    if votingPeriod:
                        require votingPeriod
                        require 24 * 3600 * votingPeriod / votingPeriod == 24 * 3600
                    require stor9[arg1].field_2560 <= block.timestamp
                    require block.timestamp - stor9[arg1].field_2560 <= 24 * 3600 * votingPeriod
        else:
            if sub_e94058ff + votingPeriod:
                require sub_e94058ff + votingPeriod
                require (24 * 3600 * sub_e94058ff) + (24 * 3600 * votingPeriod) / sub_e94058ff + votingPeriod == 24 * 3600
            require stor9[arg1].field_2560 <= block.timestamp
            if block.timestamp - stor9[arg1].field_2560 <= (24 * 3600 * sub_e94058ff) + (24 * 3600 * votingPeriod):
                if sub_e94058ff + votingPeriod:
                    require sub_e94058ff + votingPeriod
                    require (24 * 3600 * sub_e94058ff) + (24 * 3600 * votingPeriod) / sub_e94058ff + votingPeriod == 24 * 3600
                require stor9[arg1].field_2560 <= block.timestamp
                require block.timestamp - stor9[arg1].field_2560 <= (24 * 3600 * sub_e94058ff) + (24 * 3600 * votingPeriod)
            else:
                if stor9[arg1].field_1280 > stor9[arg1].field_2048:
                    stor9[arg1].field_2816 = 1
                    if votingPeriod:
                        require votingPeriod
                        require 24 * 3600 * votingPeriod / votingPeriod == 24 * 3600
                    require stor9[arg1].field_2560 <= block.timestamp
                    require block.timestamp - stor9[arg1].field_2560 <= 24 * 3600 * votingPeriod
                else:
                    if stor9[arg1].field_1280 >= stor9[arg1].field_2048:
                        stor9[arg1].field_2816 = 3
                        if sub_e94058ff + votingPeriod:
                            require sub_e94058ff + votingPeriod
                            require (24 * 3600 * sub_e94058ff) + (24 * 3600 * votingPeriod) / sub_e94058ff + votingPeriod == 24 * 3600
                        require stor9[arg1].field_2560 <= block.timestamp
                        require block.timestamp - stor9[arg1].field_2560 <= (24 * 3600 * sub_e94058ff) + (24 * 3600 * votingPeriod)
                    else:
                        stor9[arg1].field_2816 = 2
                        if votingPeriod:
                            require votingPeriod
                            require 24 * 3600 * votingPeriod / votingPeriod == 24 * 3600
                        require stor9[arg1].field_2560 <= block.timestamp
                        require block.timestamp - stor9[arg1].field_2560 <= 24 * 3600 * votingPeriod
    require arg2 >= sub_62d24ae9
    require 0 < stor9[arg1].field_1280
    require stor9[arg1][4][msg.sender].field_0 <= 2
    require not stor9[arg1][4][msg.sender].field_0
    require stor9[arg1][7][msg.sender].field_0 <= 2
    require not stor9[arg1][7][msg.sender].field_0
    require sub_c32fdf34[msg.sender].field_256 + 1 >= sub_c32fdf34[msg.sender].field_256
    sub_c32fdf34[msg.sender].field_256++
    stor9[arg1][4][msg.sender].field_0 = 1
    stor9[arg1].field_1280++
    require ext_code.size(coordinatorAddress)
    call coordinatorAddress.0x21f8a721 with:
         gas gas_remaining wei
        args 0x726174696e6700000000000000000000000000000000000000000000000000
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(address(ext_call.return_data[0]))
    call address(ext_call.return_data[0]).0x1a36017a with:
         gas gas_remaining wei
        args msg.sender
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    emit 0xf9ecde96: arg1, 3, msg.sender, 0
}



}

contract main {




// =====================  Runtime code  =====================


address founderAddress;
uint256 prevCourse;
uint256 nextCourse;
address prevTokenAddress;
address nextTokenAddress;

function prevTokenAddress() {
    return prevTokenAddress
}

function nextCourse() {
    return nextCourse
}

function founder() {
    return founderAddress
}

function prevCourse() {
    return prevCourse
}

function nextTokenAddress() {
    return nextTokenAddress
}

function _fallback() payable {
    revert
}

function changeFounder(address arg1) {
    require msg.sender == founderAddress
    founderAddress = arg1
    return 1
}

function changeCourse(uint256 arg1, uint256 arg2) {
    require msg.sender == founderAddress
    prevCourse = arg1
    nextCourse = arg2
}

function exchange(address arg1, uint256 arg2) {
    require msg.sender == prevTokenAddress
    require ext_code.size(prevTokenAddress)
    call prevTokenAddress.0x70a08231 with:
         gas gas_remaining wei
        args arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] >= arg2
    require prevCourse
    if not arg2 / prevCourse:
        require ext_code.size(prevTokenAddress)
        call prevTokenAddress.burnTokens(address arg1, uint256 arg2) with:
             gas gas_remaining wei
            args address(arg1), arg2 / prevCourse * prevCourse
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if ext_call.return_data[0]:
            if not arg2 / prevCourse:
                require ext_code.size(nextTokenAddress)
                call nextTokenAddress.issueTokens(address arg1, uint256 arg2) with:
                     gas gas_remaining wei
                    args address(arg1), arg2 / prevCourse * nextCourse
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                if ext_call.return_data[0]:
                    return 1
            else:
                if arg2 / prevCourse:
                    if arg2 / prevCourse * nextCourse / arg2 / prevCourse == nextCourse:
                        require ext_code.size(nextTokenAddress)
                        call nextTokenAddress.issueTokens(address arg1, uint256 arg2) with:
                             gas gas_remaining wei
                            args address(arg1), arg2 / prevCourse * nextCourse
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        if ext_call.return_data[0]:
                            return 1
    else:
        if arg2 / prevCourse:
            if arg2 / prevCourse * prevCourse / arg2 / prevCourse == prevCourse:
                require ext_code.size(prevTokenAddress)
                call prevTokenAddress.burnTokens(address arg1, uint256 arg2) with:
                     gas gas_remaining wei
                    args address(arg1), arg2 / prevCourse * prevCourse
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                if ext_call.return_data[0]:
                    if not arg2 / prevCourse:
                        require ext_code.size(nextTokenAddress)
                        call nextTokenAddress.issueTokens(address arg1, uint256 arg2) with:
                             gas gas_remaining wei
                            args address(arg1), arg2 / prevCourse * nextCourse
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        if ext_call.return_data[0]:
                            return 1
                    else:
                        if arg2 / prevCourse:
                            if arg2 / prevCourse * nextCourse / arg2 / prevCourse == nextCourse:
                                require ext_code.size(nextTokenAddress)
                                call nextTokenAddress.issueTokens(address arg1, uint256 arg2) with:
                                     gas gas_remaining wei
                                    args address(arg1), arg2 / prevCourse * nextCourse
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                if ext_call.return_data[0]:
                                    return 1
    revert
}



}

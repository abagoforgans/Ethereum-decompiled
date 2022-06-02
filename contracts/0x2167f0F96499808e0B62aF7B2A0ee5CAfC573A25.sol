contract main {




// =====================  Runtime code  =====================


const sub_bc751507(?) = 0x97a121027a529b96f1a71135457ab8e353060811

const start = (428244 * 3600)


mapping of uint256 invested;
mapping of uint256 stor1;
mapping of uint256 stor2;
uint256 sub_5e7dc7c1;
uint256 investorsCount;

function investorsCount() {
    return investorsCount
}

function sub_5e7dc7c1(?) {
    return sub_5e7dc7c1
}

function invested(address arg1) {
    return invested[arg1]
}

function sub_07c23e02(?) {
    if invested[address(arg1)] < 10^18:
        return (222 * invested[address(arg1)] / 10000)
    if 10^18 > invested[address(arg1)]:
        return (288 * invested[address(arg1)] / 10000)
    if invested[address(arg1)] >= 5 * 10^18:
        return (288 * invested[address(arg1)] / 10000)
    return (255 * invested[address(arg1)] / 10000)
}

function availableWithdraw(address arg1) {
    if 428244 * 3600 >= block.timestamp:
        return 0
    if not invested[address(arg1)]:
        return 0
    if invested[address(arg1)] < 10^18:
        if invested[address(arg1)] - (15 * invested[address(arg1)] / 100) >= stor2[address(arg1)] + ((block.timestamp * 222 * invested[address(arg1)] / 10000) - (stor1[address(arg1)] * 222 * invested[address(arg1)] / 10000) / 24 * 3600):
            return (invested[address(arg1)] - (15 * invested[address(arg1)] / 100))
        return (stor2[address(arg1)] + ((block.timestamp * 222 * invested[address(arg1)] / 10000) - (stor1[address(arg1)] * 222 * invested[address(arg1)] / 10000) / 24 * 3600))
    if 10^18 > invested[address(arg1)]:
        if invested[address(arg1)] - (15 * invested[address(arg1)] / 100) >= stor2[address(arg1)] + ((block.timestamp * 288 * invested[address(arg1)] / 10000) - (stor1[address(arg1)] * 288 * invested[address(arg1)] / 10000) / 24 * 3600):
            return (invested[address(arg1)] - (15 * invested[address(arg1)] / 100))
        return (stor2[address(arg1)] + ((block.timestamp * 288 * invested[address(arg1)] / 10000) - (stor1[address(arg1)] * 288 * invested[address(arg1)] / 10000) / 24 * 3600))
    if invested[address(arg1)] >= 5 * 10^18:
        if invested[address(arg1)] - (15 * invested[address(arg1)] / 100) >= stor2[address(arg1)] + ((block.timestamp * 288 * invested[address(arg1)] / 10000) - (stor1[address(arg1)] * 288 * invested[address(arg1)] / 10000) / 24 * 3600):
            return (invested[address(arg1)] - (15 * invested[address(arg1)] / 100))
        return (stor2[address(arg1)] + ((block.timestamp * 288 * invested[address(arg1)] / 10000) - (stor1[address(arg1)] * 288 * invested[address(arg1)] / 10000) / 24 * 3600))
    if invested[address(arg1)] - (15 * invested[address(arg1)] / 100) >= stor2[address(arg1)] + ((block.timestamp * 255 * invested[address(arg1)] / 10000) - (stor1[address(arg1)] * 255 * invested[address(arg1)] / 10000) / 24 * 3600):
        return (invested[address(arg1)] - (15 * invested[address(arg1)] / 100))
    return (stor2[address(arg1)] + ((block.timestamp * 255 * invested[address(arg1)] / 10000) - (stor1[address(arg1)] * 255 * invested[address(arg1)] / 10000) / 24 * 3600))
}

function _fallback() payable {
    if msg.value <= 0:
        if 428244 * 3600 < block.timestamp:
            if invested[address(msg.sender)]:
                if invested[address(msg.sender)] < 10^18:
                    if invested[address(msg.sender)] - (15 * invested[address(msg.sender)] / 100) >= stor2[address(msg.sender)] + ((block.timestamp * 222 * invested[address(msg.sender)] / 10000) - (stor1[address(msg.sender)] * 222 * invested[address(msg.sender)] / 10000) / 24 * 3600):
                        if invested[address(msg.sender)] - (15 * invested[address(msg.sender)] / 100):
                            emit withdraw(msg.sender, invested[address(msg.sender)] - (15 * invested[address(msg.sender)] / 100), invested[address(msg.sender)]);
                            call msg.sender with:
                               value invested[address(msg.sender)] - (15 * invested[address(msg.sender)] / 100) wei
                                 gas 2300 * is_zero(value) wei
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            stor1[address(msg.sender)] = 0
                            invested[address(msg.sender)] = 0
                            stor2[address(msg.sender)] = 0
                    else:
                        if stor2[address(msg.sender)] + ((block.timestamp * 222 * invested[address(msg.sender)] / 10000) - (stor1[address(msg.sender)] * 222 * invested[address(msg.sender)] / 10000) / 24 * 3600):
                            emit withdraw(msg.sender, stor2[address(msg.sender)] + ((block.timestamp * 222 * invested[address(msg.sender)] / 10000) - (stor1[address(msg.sender)] * 222 * invested[address(msg.sender)] / 10000) / 24 * 3600), invested[address(msg.sender)]);
                            call msg.sender with:
                               value stor2[address(msg.sender)] + ((block.timestamp * 222 * invested[address(msg.sender)] / 10000) - (stor1[address(msg.sender)] * 222 * invested[address(msg.sender)] / 10000) / 24 * 3600) wei
                                 gas 2300 * is_zero(value) wei
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            stor1[address(msg.sender)] = 0
                            invested[address(msg.sender)] = 0
                            stor2[address(msg.sender)] = 0
                else:
                    if 10^18 > invested[address(msg.sender)]:
                        if invested[address(msg.sender)] - (15 * invested[address(msg.sender)] / 100) >= stor2[address(msg.sender)] + ((block.timestamp * 288 * invested[address(msg.sender)] / 10000) - (stor1[address(msg.sender)] * 288 * invested[address(msg.sender)] / 10000) / 24 * 3600):
                            if invested[address(msg.sender)] - (15 * invested[address(msg.sender)] / 100):
                                emit withdraw(msg.sender, invested[address(msg.sender)] - (15 * invested[address(msg.sender)] / 100), invested[address(msg.sender)]);
                                call msg.sender with:
                                   value invested[address(msg.sender)] - (15 * invested[address(msg.sender)] / 100) wei
                                     gas 2300 * is_zero(value) wei
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                stor1[address(msg.sender)] = 0
                                invested[address(msg.sender)] = 0
                                stor2[address(msg.sender)] = 0
                        else:
                            if stor2[address(msg.sender)] + ((block.timestamp * 288 * invested[address(msg.sender)] / 10000) - (stor1[address(msg.sender)] * 288 * invested[address(msg.sender)] / 10000) / 24 * 3600):
                                emit withdraw(msg.sender, stor2[address(msg.sender)] + ((block.timestamp * 288 * invested[address(msg.sender)] / 10000) - (stor1[address(msg.sender)] * 288 * invested[address(msg.sender)] / 10000) / 24 * 3600), invested[address(msg.sender)]);
                                call msg.sender with:
                                   value stor2[address(msg.sender)] + ((block.timestamp * 288 * invested[address(msg.sender)] / 10000) - (stor1[address(msg.sender)] * 288 * invested[address(msg.sender)] / 10000) / 24 * 3600) wei
                                     gas 2300 * is_zero(value) wei
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                stor1[address(msg.sender)] = 0
                                invested[address(msg.sender)] = 0
                                stor2[address(msg.sender)] = 0
                    else:
                        if invested[address(msg.sender)] >= 5 * 10^18:
                            if invested[address(msg.sender)] - (15 * invested[address(msg.sender)] / 100) >= stor2[address(msg.sender)] + ((block.timestamp * 288 * invested[address(msg.sender)] / 10000) - (stor1[address(msg.sender)] * 288 * invested[address(msg.sender)] / 10000) / 24 * 3600):
                                if invested[address(msg.sender)] - (15 * invested[address(msg.sender)] / 100):
                                    emit withdraw(msg.sender, invested[address(msg.sender)] - (15 * invested[address(msg.sender)] / 100), invested[address(msg.sender)]);
                                    call msg.sender with:
                                       value invested[address(msg.sender)] - (15 * invested[address(msg.sender)] / 100) wei
                                         gas 2300 * is_zero(value) wei
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    stor1[address(msg.sender)] = 0
                                    invested[address(msg.sender)] = 0
                                    stor2[address(msg.sender)] = 0
                            else:
                                if stor2[address(msg.sender)] + ((block.timestamp * 288 * invested[address(msg.sender)] / 10000) - (stor1[address(msg.sender)] * 288 * invested[address(msg.sender)] / 10000) / 24 * 3600):
                                    emit withdraw(msg.sender, stor2[address(msg.sender)] + ((block.timestamp * 288 * invested[address(msg.sender)] / 10000) - (stor1[address(msg.sender)] * 288 * invested[address(msg.sender)] / 10000) / 24 * 3600), invested[address(msg.sender)]);
                                    call msg.sender with:
                                       value stor2[address(msg.sender)] + ((block.timestamp * 288 * invested[address(msg.sender)] / 10000) - (stor1[address(msg.sender)] * 288 * invested[address(msg.sender)] / 10000) / 24 * 3600) wei
                                         gas 2300 * is_zero(value) wei
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    stor1[address(msg.sender)] = 0
                                    invested[address(msg.sender)] = 0
                                    stor2[address(msg.sender)] = 0
                        else:
                            if invested[address(msg.sender)] - (15 * invested[address(msg.sender)] / 100) >= stor2[address(msg.sender)] + ((block.timestamp * 255 * invested[address(msg.sender)] / 10000) - (stor1[address(msg.sender)] * 255 * invested[address(msg.sender)] / 10000) / 24 * 3600):
                                if invested[address(msg.sender)] - (15 * invested[address(msg.sender)] / 100):
                                    emit withdraw(msg.sender, invested[address(msg.sender)] - (15 * invested[address(msg.sender)] / 100), invested[address(msg.sender)]);
                                    call msg.sender with:
                                       value invested[address(msg.sender)] - (15 * invested[address(msg.sender)] / 100) wei
                                         gas 2300 * is_zero(value) wei
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    stor1[address(msg.sender)] = 0
                                    invested[address(msg.sender)] = 0
                                    stor2[address(msg.sender)] = 0
                            else:
                                if stor2[address(msg.sender)] + ((block.timestamp * 255 * invested[address(msg.sender)] / 10000) - (stor1[address(msg.sender)] * 255 * invested[address(msg.sender)] / 10000) / 24 * 3600):
                                    emit withdraw(msg.sender, stor2[address(msg.sender)] + ((block.timestamp * 255 * invested[address(msg.sender)] / 10000) - (stor1[address(msg.sender)] * 255 * invested[address(msg.sender)] / 10000) / 24 * 3600), invested[address(msg.sender)]);
                                    call msg.sender with:
                                       value stor2[address(msg.sender)] + ((block.timestamp * 255 * invested[address(msg.sender)] / 10000) - (stor1[address(msg.sender)] * 255 * invested[address(msg.sender)] / 10000) / 24 * 3600) wei
                                         gas 2300 * is_zero(value) wei
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    stor1[address(msg.sender)] = 0
                                    invested[address(msg.sender)] = 0
                                    stor2[address(msg.sender)] = 0
    else:
        if 428244 * 3600 >= block.timestamp:
            stor1[address(msg.sender)] = 428244 * 3600
        else:
            if invested[address(msg.sender)]:
                if invested[address(msg.sender)] < 10^18:
                    stor2[address(msg.sender)] += (block.timestamp * 222 * invested[address(msg.sender)] / 10000) - (stor1[address(msg.sender)] * 222 * invested[address(msg.sender)] / 10000) / 24 * 3600
                else:
                    if 10^18 > invested[address(msg.sender)]:
                        stor2[address(msg.sender)] += (block.timestamp * 288 * invested[address(msg.sender)] / 10000) - (stor1[address(msg.sender)] * 288 * invested[address(msg.sender)] / 10000) / 24 * 3600
                    else:
                        if invested[address(msg.sender)] >= 5 * 10^18:
                            stor2[address(msg.sender)] += (block.timestamp * 288 * invested[address(msg.sender)] / 10000) - (stor1[address(msg.sender)] * 288 * invested[address(msg.sender)] / 10000) / 24 * 3600
                        else:
                            stor2[address(msg.sender)] += (block.timestamp * 255 * invested[address(msg.sender)] / 10000) - (stor1[address(msg.sender)] * 255 * invested[address(msg.sender)] / 10000) / 24 * 3600
            stor1[address(msg.sender)] = block.timestamp
        if not invested[address(msg.sender)]:
            investorsCount++
        sub_5e7dc7c1 += msg.value
        invested[address(msg.sender)] += msg.value
        call 0x97a121027a529b96f1a71135457ab8e353060811 with:
           value 15 * msg.value / 100 wei
             gas 2300 * is_zero(value) wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        emit 0x971eb752: msg.sender, msg.value, invested[address(msg.sender)]
}



}

contract main {




// =====================  Runtime code  =====================


#
#  - investETH(address arg1)
#
const getBalance = eth.balance(this.address)


address owner;
mapping of uint256 invested;
mapping of uint256 lastInvest;
mapping of uint256 affiliateCommision;
address sub_f69c96fcAddress;
address sub_cc2eb9e8Address;
address sub_1d52ff4aAddress;
address sub_b7a92d38Address;
uint256 pot;
mapping of uint256 sub_ecb7cb1b;
array of uint256 sub_64e3cecb;

function sub_0fc639f6(?) {
    return (2 * invested[address(msg.sender)])
}

function sub_1d52ff4a(?) {
    return sub_1d52ff4aAddress
}

function getAffiliateCommision() {
    return affiliateCommision[address(msg.sender)]
}

function pot() {
    return pot
}

function affiliateCommision(address arg1) {
    return affiliateCommision[arg1]
}

function sub_64e3cecb(?) {
    return sub_64e3cecb[address(msg.sender)]
}

function lastInvest(address arg1) {
    return lastInvest[arg1]
}

function owner() {
    return owner
}

function sub_b7a92d38(?) {
    return sub_b7a92d38Address
}

function getInvested() {
    return invested[address(msg.sender)]
}

function sub_cc2eb9e8(?) {
    return sub_cc2eb9e8Address
}

function investedETH(address arg1) {
    return invested[arg1]
}

function sub_ecb7cb1b(?) {
    return sub_ecb7cb1b[arg1]
}

function sub_f69c96fc(?) {
    return sub_f69c96fcAddress
}

function sub_f96941c8(?) {
    require arg2 < sub_64e3cecb[arg1]
    return sub_64e3cecb[arg1][arg2]
}

function _fallback() payable {
  stop
}

function isOwner() {
    return (msg.sender == owner)
}

function sub_3ea4a796(?) {
    require msg.sender == owner
    require arg1
    sub_cc2eb9e8Address = arg1
}

function sub_d67a9682(?) {
    require msg.sender == owner
    require arg1
    sub_f69c96fcAddress = arg1
}

function updateDev(address arg1) {
    require msg.sender == owner
    require arg1
    sub_1d52ff4aAddress = arg1
}

function transferOwnership(address arg1) {
    require msg.sender == owner
    require arg1
    emit OwnershipTransferred(owner, arg1);
    owner = arg1
}

function withdrawAffiliateCommision() {
    require affiliateCommision[address(msg.sender)] > 0
    affiliateCommision[address(msg.sender)] = 0
    call msg.sender with:
       value affiliateCommision[address(msg.sender)] wei
         gas 2300 * is_zero(value) wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function getBonus() {
    if invested[address(msg.sender)] < 5 * 10^17:
        return 0
    if 4 * 10^18 >= invested[address(msg.sender)]:
        return 0
    if invested[address(msg.sender)] < 401 * 10^16:
        return 0
    if 7 * 10^18 >= invested[address(msg.sender)]:
        return 20
    if invested[address(msg.sender)] < 701 * 10^16:
        return 0
    if 10 * 10^18 >= invested[address(msg.sender)]:
        return 40
    if invested[address(msg.sender)] < 1001 * 10^16:
        return 0
    if 15 * 10^18 >= invested[address(msg.sender)]:
        return 60
    if invested[address(msg.sender)] < 1501 * 10^16:
        return 0
    return 99
}

function getProfit(address arg1) {
    require lastInvest[address(arg1)] <= block.timestamp
    if block.timestamp - lastInvest[address(arg1)]:
        require block.timestamp - lastInvest[address(arg1)]
        require (block.timestamp * invested[address(arg1)]) - (lastInvest[address(arg1)] * invested[address(arg1)]) / block.timestamp - lastInvest[address(arg1)] == invested[address(arg1)]
        if (block.timestamp * invested[address(arg1)]) - (lastInvest[address(arg1)] * invested[address(arg1)]) / 1234440 <= (2 * invested[address(msg.sender)]) - sub_ecb7cb1b[address(msg.sender)]:
            if invested[address(msg.sender)] < 5 * 10^17:
                return ((block.timestamp * invested[address(arg1)]) - (lastInvest[address(arg1)] * invested[address(arg1)]) / 1234440)
            else:
                if 4 * 10^18 < invested[address(msg.sender)]:
                    if invested[address(msg.sender)] < 401 * 10^16:
                        return ((block.timestamp * invested[address(arg1)]) - (lastInvest[address(arg1)] * invested[address(arg1)]) / 1234440)
                    else:
                        if 7 * 10^18 < invested[address(msg.sender)]:
                            if invested[address(msg.sender)] < 701 * 10^16:
                                return ((block.timestamp * invested[address(arg1)]) - (lastInvest[address(arg1)] * invested[address(arg1)]) / 1234440)
                            else:
                                if 10 * 10^18 < invested[address(msg.sender)]:
                                    if invested[address(msg.sender)] < 1001 * 10^16:
                                        return ((block.timestamp * invested[address(arg1)]) - (lastInvest[address(arg1)] * invested[address(arg1)]) / 1234440)
                                    else:
                                        if 15 * 10^18 < invested[address(msg.sender)]:
                                            if invested[address(msg.sender)] < 1501 * 10^16:
                                                return ((block.timestamp * invested[address(arg1)]) - (lastInvest[address(arg1)] * invested[address(arg1)]) / 1234440)
                                            else:
                                                if (block.timestamp * invested[address(arg1)]) - (lastInvest[address(arg1)] * invested[address(arg1)]) / 1234440:
                                                    require (block.timestamp * invested[address(arg1)]) - (lastInvest[address(arg1)] * invested[address(arg1)]) / 1234440
                                                    require 99 * (block.timestamp * invested[address(arg1)]) - (lastInvest[address(arg1)] * invested[address(arg1)]) / 1234440 / (block.timestamp * invested[address(arg1)]) - (lastInvest[address(arg1)] * invested[address(arg1)]) / 1234440 == 99
                                                    require ((block.timestamp * invested[address(arg1)]) - (lastInvest[address(arg1)] * invested[address(arg1)]) / 1234440) + (99 * (block.timestamp * invested[address(arg1)]) - (lastInvest[address(arg1)] * invested[address(arg1)]) / 1234440 / 100) >= (block.timestamp * invested[address(arg1)]) - (lastInvest[address(arg1)] * invested[address(arg1)]) / 1234440
                                                    return (((block.timestamp * invested[address(arg1)]) - (lastInvest[address(arg1)] * invested[address(arg1)]) / 1234440) + (99 * (block.timestamp * invested[address(arg1)]) - (lastInvest[address(arg1)] * invested[address(arg1)]) / 1234440 / 100))
                                                else:
                                                    require (block.timestamp * invested[address(arg1)]) - (lastInvest[address(arg1)] * invested[address(arg1)]) / 1234440 >= (block.timestamp * invested[address(arg1)]) - (lastInvest[address(arg1)] * invested[address(arg1)]) / 1234440
                                                    return ((block.timestamp * invested[address(arg1)]) - (lastInvest[address(arg1)] * invested[address(arg1)]) / 1234440)
                                        else:
                                            if (block.timestamp * invested[address(arg1)]) - (lastInvest[address(arg1)] * invested[address(arg1)]) / 1234440:
                                                require (block.timestamp * invested[address(arg1)]) - (lastInvest[address(arg1)] * invested[address(arg1)]) / 1234440
                                                require 60 * (block.timestamp * invested[address(arg1)]) - (lastInvest[address(arg1)] * invested[address(arg1)]) / 1234440 / (block.timestamp * invested[address(arg1)]) - (lastInvest[address(arg1)] * invested[address(arg1)]) / 1234440 == 60
                                                require ((block.timestamp * invested[address(arg1)]) - (lastInvest[address(arg1)] * invested[address(arg1)]) / 1234440) + (60 * (block.timestamp * invested[address(arg1)]) - (lastInvest[address(arg1)] * invested[address(arg1)]) / 1234440 / 100) >= (block.timestamp * invested[address(arg1)]) - (lastInvest[address(arg1)] * invested[address(arg1)]) / 1234440
                                                return (((block.timestamp * invested[address(arg1)]) - (lastInvest[address(arg1)] * invested[address(arg1)]) / 1234440) + (60 * (block.timestamp * invested[address(arg1)]) - (lastInvest[address(arg1)] * invested[address(arg1)]) / 1234440 / 100))
                                            else:
                                                require (block.timestamp * invested[address(arg1)]) - (lastInvest[address(arg1)] * invested[address(arg1)]) / 1234440 >= (block.timestamp * invested[address(arg1)]) - (lastInvest[address(arg1)] * invested[address(arg1)]) / 1234440
                                                return ((block.timestamp * invested[address(arg1)]) - (lastInvest[address(arg1)] * invested[address(arg1)]) / 1234440)
                                else:
                                    if (block.timestamp * invested[address(arg1)]) - (lastInvest[address(arg1)] * invested[address(arg1)]) / 1234440:
                                        require (block.timestamp * invested[address(arg1)]) - (lastInvest[address(arg1)] * invested[address(arg1)]) / 1234440
                                        require 40 * (block.timestamp * invested[address(arg1)]) - (lastInvest[address(arg1)] * invested[address(arg1)]) / 1234440 / (block.timestamp * invested[address(arg1)]) - (lastInvest[address(arg1)] * invested[address(arg1)]) / 1234440 == 40
                                        require ((block.timestamp * invested[address(arg1)]) - (lastInvest[address(arg1)] * invested[address(arg1)]) / 1234440) + (40 * (block.timestamp * invested[address(arg1)]) - (lastInvest[address(arg1)] * invested[address(arg1)]) / 1234440 / 100) >= (block.timestamp * invested[address(arg1)]) - (lastInvest[address(arg1)] * invested[address(arg1)]) / 1234440
                                        return (((block.timestamp * invested[address(arg1)]) - (lastInvest[address(arg1)] * invested[address(arg1)]) / 1234440) + (40 * (block.timestamp * invested[address(arg1)]) - (lastInvest[address(arg1)] * invested[address(arg1)]) / 1234440 / 100))
                                    else:
                                        require (block.timestamp * invested[address(arg1)]) - (lastInvest[address(arg1)] * invested[address(arg1)]) / 1234440 >= (block.timestamp * invested[address(arg1)]) - (lastInvest[address(arg1)] * invested[address(arg1)]) / 1234440
                                        return ((block.timestamp * invested[address(arg1)]) - (lastInvest[address(arg1)] * invested[address(arg1)]) / 1234440)
                        else:
                            if (block.timestamp * invested[address(arg1)]) - (lastInvest[address(arg1)] * invested[address(arg1)]) / 1234440:
                                require (block.timestamp * invested[address(arg1)]) - (lastInvest[address(arg1)] * invested[address(arg1)]) / 1234440
                                require 20 * (block.timestamp * invested[address(arg1)]) - (lastInvest[address(arg1)] * invested[address(arg1)]) / 1234440 / (block.timestamp * invested[address(arg1)]) - (lastInvest[address(arg1)] * invested[address(arg1)]) / 1234440 == 20
                                require ((block.timestamp * invested[address(arg1)]) - (lastInvest[address(arg1)] * invested[address(arg1)]) / 1234440) + (20 * (block.timestamp * invested[address(arg1)]) - (lastInvest[address(arg1)] * invested[address(arg1)]) / 1234440 / 100) >= (block.timestamp * invested[address(arg1)]) - (lastInvest[address(arg1)] * invested[address(arg1)]) / 1234440
                                return (((block.timestamp * invested[address(arg1)]) - (lastInvest[address(arg1)] * invested[address(arg1)]) / 1234440) + (20 * (block.timestamp * invested[address(arg1)]) - (lastInvest[address(arg1)] * invested[address(arg1)]) / 1234440 / 100))
                            else:
                                require (block.timestamp * invested[address(arg1)]) - (lastInvest[address(arg1)] * invested[address(arg1)]) / 1234440 >= (block.timestamp * invested[address(arg1)]) - (lastInvest[address(arg1)] * invested[address(arg1)]) / 1234440
                                return ((block.timestamp * invested[address(arg1)]) - (lastInvest[address(arg1)] * invested[address(arg1)]) / 1234440)
                else:
                    return ((block.timestamp * invested[address(arg1)]) - (lastInvest[address(arg1)] * invested[address(arg1)]) / 1234440)
        else:
            if sub_ecb7cb1b[address(msg.sender)] >= 2 * invested[address(msg.sender)]:
                if invested[address(msg.sender)] < 5 * 10^17:
                    return ((block.timestamp * invested[address(arg1)]) - (lastInvest[address(arg1)] * invested[address(arg1)]) / 1234440)
                else:
                    if 4 * 10^18 < invested[address(msg.sender)]:
                        if invested[address(msg.sender)] < 401 * 10^16:
                            return ((block.timestamp * invested[address(arg1)]) - (lastInvest[address(arg1)] * invested[address(arg1)]) / 1234440)
                        else:
                            if 7 * 10^18 < invested[address(msg.sender)]:
                                if invested[address(msg.sender)] < 701 * 10^16:
                                    return ((block.timestamp * invested[address(arg1)]) - (lastInvest[address(arg1)] * invested[address(arg1)]) / 1234440)
                                else:
                                    if 10 * 10^18 < invested[address(msg.sender)]:
                                        if invested[address(msg.sender)] < 1001 * 10^16:
                                            return ((block.timestamp * invested[address(arg1)]) - (lastInvest[address(arg1)] * invested[address(arg1)]) / 1234440)
                                        else:
                                            if 15 * 10^18 < invested[address(msg.sender)]:
                                                if invested[address(msg.sender)] < 1501 * 10^16:
                                                    return ((block.timestamp * invested[address(arg1)]) - (lastInvest[address(arg1)] * invested[address(arg1)]) / 1234440)
                                                else:
                                                    if (block.timestamp * invested[address(arg1)]) - (lastInvest[address(arg1)] * invested[address(arg1)]) / 1234440:
                                                        require (block.timestamp * invested[address(arg1)]) - (lastInvest[address(arg1)] * invested[address(arg1)]) / 1234440
                                                        require 99 * (block.timestamp * invested[address(arg1)]) - (lastInvest[address(arg1)] * invested[address(arg1)]) / 1234440 / (block.timestamp * invested[address(arg1)]) - (lastInvest[address(arg1)] * invested[address(arg1)]) / 1234440 == 99
                                                        require ((block.timestamp * invested[address(arg1)]) - (lastInvest[address(arg1)] * invested[address(arg1)]) / 1234440) + (99 * (block.timestamp * invested[address(arg1)]) - (lastInvest[address(arg1)] * invested[address(arg1)]) / 1234440 / 100) >= (block.timestamp * invested[address(arg1)]) - (lastInvest[address(arg1)] * invested[address(arg1)]) / 1234440
                                                        return (((block.timestamp * invested[address(arg1)]) - (lastInvest[address(arg1)] * invested[address(arg1)]) / 1234440) + (99 * (block.timestamp * invested[address(arg1)]) - (lastInvest[address(arg1)] * invested[address(arg1)]) / 1234440 / 100))
                                                    else:
                                                        require (block.timestamp * invested[address(arg1)]) - (lastInvest[address(arg1)] * invested[address(arg1)]) / 1234440 >= (block.timestamp * invested[address(arg1)]) - (lastInvest[address(arg1)] * invested[address(arg1)]) / 1234440
                                                        return ((block.timestamp * invested[address(arg1)]) - (lastInvest[address(arg1)] * invested[address(arg1)]) / 1234440)
                                            else:
                                                if (block.timestamp * invested[address(arg1)]) - (lastInvest[address(arg1)] * invested[address(arg1)]) / 1234440:
                                                    require (block.timestamp * invested[address(arg1)]) - (lastInvest[address(arg1)] * invested[address(arg1)]) / 1234440
                                                    require 60 * (block.timestamp * invested[address(arg1)]) - (lastInvest[address(arg1)] * invested[address(arg1)]) / 1234440 / (block.timestamp * invested[address(arg1)]) - (lastInvest[address(arg1)] * invested[address(arg1)]) / 1234440 == 60
                                                    require ((block.timestamp * invested[address(arg1)]) - (lastInvest[address(arg1)] * invested[address(arg1)]) / 1234440) + (60 * (block.timestamp * invested[address(arg1)]) - (lastInvest[address(arg1)] * invested[address(arg1)]) / 1234440 / 100) >= (block.timestamp * invested[address(arg1)]) - (lastInvest[address(arg1)] * invested[address(arg1)]) / 1234440
                                                    return (((block.timestamp * invested[address(arg1)]) - (lastInvest[address(arg1)] * invested[address(arg1)]) / 1234440) + (60 * (block.timestamp * invested[address(arg1)]) - (lastInvest[address(arg1)] * invested[address(arg1)]) / 1234440 / 100))
                                                else:
                                                    require (block.timestamp * invested[address(arg1)]) - (lastInvest[address(arg1)] * invested[address(arg1)]) / 1234440 >= (block.timestamp * invested[address(arg1)]) - (lastInvest[address(arg1)] * invested[address(arg1)]) / 1234440
                                                    return ((block.timestamp * invested[address(arg1)]) - (lastInvest[address(arg1)] * invested[address(arg1)]) / 1234440)
                                    else:
                                        if (block.timestamp * invested[address(arg1)]) - (lastInvest[address(arg1)] * invested[address(arg1)]) / 1234440:
                                            require (block.timestamp * invested[address(arg1)]) - (lastInvest[address(arg1)] * invested[address(arg1)]) / 1234440
                                            require 40 * (block.timestamp * invested[address(arg1)]) - (lastInvest[address(arg1)] * invested[address(arg1)]) / 1234440 / (block.timestamp * invested[address(arg1)]) - (lastInvest[address(arg1)] * invested[address(arg1)]) / 1234440 == 40
                                            require ((block.timestamp * invested[address(arg1)]) - (lastInvest[address(arg1)] * invested[address(arg1)]) / 1234440) + (40 * (block.timestamp * invested[address(arg1)]) - (lastInvest[address(arg1)] * invested[address(arg1)]) / 1234440 / 100) >= (block.timestamp * invested[address(arg1)]) - (lastInvest[address(arg1)] * invested[address(arg1)]) / 1234440
                                            return (((block.timestamp * invested[address(arg1)]) - (lastInvest[address(arg1)] * invested[address(arg1)]) / 1234440) + (40 * (block.timestamp * invested[address(arg1)]) - (lastInvest[address(arg1)] * invested[address(arg1)]) / 1234440 / 100))
                                        else:
                                            require (block.timestamp * invested[address(arg1)]) - (lastInvest[address(arg1)] * invested[address(arg1)]) / 1234440 >= (block.timestamp * invested[address(arg1)]) - (lastInvest[address(arg1)] * invested[address(arg1)]) / 1234440
                                            return ((block.timestamp * invested[address(arg1)]) - (lastInvest[address(arg1)] * invested[address(arg1)]) / 1234440)
                            else:
                                if (block.timestamp * invested[address(arg1)]) - (lastInvest[address(arg1)] * invested[address(arg1)]) / 1234440:
                                    require (block.timestamp * invested[address(arg1)]) - (lastInvest[address(arg1)] * invested[address(arg1)]) / 1234440
                                    require 20 * (block.timestamp * invested[address(arg1)]) - (lastInvest[address(arg1)] * invested[address(arg1)]) / 1234440 / (block.timestamp * invested[address(arg1)]) - (lastInvest[address(arg1)] * invested[address(arg1)]) / 1234440 == 20
                                    require ((block.timestamp * invested[address(arg1)]) - (lastInvest[address(arg1)] * invested[address(arg1)]) / 1234440) + (20 * (block.timestamp * invested[address(arg1)]) - (lastInvest[address(arg1)] * invested[address(arg1)]) / 1234440 / 100) >= (block.timestamp * invested[address(arg1)]) - (lastInvest[address(arg1)] * invested[address(arg1)]) / 1234440
                                    return (((block.timestamp * invested[address(arg1)]) - (lastInvest[address(arg1)] * invested[address(arg1)]) / 1234440) + (20 * (block.timestamp * invested[address(arg1)]) - (lastInvest[address(arg1)] * invested[address(arg1)]) / 1234440 / 100))
                                else:
                                    require (block.timestamp * invested[address(arg1)]) - (lastInvest[address(arg1)] * invested[address(arg1)]) / 1234440 >= (block.timestamp * invested[address(arg1)]) - (lastInvest[address(arg1)] * invested[address(arg1)]) / 1234440
                                    return ((block.timestamp * invested[address(arg1)]) - (lastInvest[address(arg1)] * invested[address(arg1)]) / 1234440)
                    else:
                        return ((block.timestamp * invested[address(arg1)]) - (lastInvest[address(arg1)] * invested[address(arg1)]) / 1234440)
            else:
                if invested[address(msg.sender)] < 5 * 10^17:
                    return ((2 * invested[address(msg.sender)]) - sub_ecb7cb1b[address(msg.sender)])
                else:
                    if 4 * 10^18 < invested[address(msg.sender)]:
                        if invested[address(msg.sender)] < 401 * 10^16:
                            return ((2 * invested[address(msg.sender)]) - sub_ecb7cb1b[address(msg.sender)])
                        else:
                            if 7 * 10^18 < invested[address(msg.sender)]:
                                if invested[address(msg.sender)] < 701 * 10^16:
                                    return ((2 * invested[address(msg.sender)]) - sub_ecb7cb1b[address(msg.sender)])
                                else:
                                    if 10 * 10^18 < invested[address(msg.sender)]:
                                        if invested[address(msg.sender)] < 1001 * 10^16:
                                            return ((2 * invested[address(msg.sender)]) - sub_ecb7cb1b[address(msg.sender)])
                                        else:
                                            if 15 * 10^18 < invested[address(msg.sender)]:
                                                if invested[address(msg.sender)] < 1501 * 10^16:
                                                    return ((2 * invested[address(msg.sender)]) - sub_ecb7cb1b[address(msg.sender)])
                                                else:
                                                    if (2 * invested[address(msg.sender)]) - sub_ecb7cb1b[address(msg.sender)]:
                                                        require (2 * invested[address(msg.sender)]) - sub_ecb7cb1b[address(msg.sender)]
                                                        require (99 * 2 * invested[address(msg.sender)]) - (99 * sub_ecb7cb1b[address(msg.sender)]) / (2 * invested[address(msg.sender)]) - sub_ecb7cb1b[address(msg.sender)] == 99
                                                        require (99 * 2 * invested[address(msg.sender)]) - (99 * sub_ecb7cb1b[address(msg.sender)]) / 100 >= 0
                                                        return ((2 * invested[address(msg.sender)]) - sub_ecb7cb1b[address(msg.sender)] + ((99 * 2 * invested[address(msg.sender)]) - (99 * sub_ecb7cb1b[address(msg.sender)]) / 100))
                                                    else:
                                                        return ((2 * invested[address(msg.sender)]) - sub_ecb7cb1b[address(msg.sender)])
                                            else:
                                                if (2 * invested[address(msg.sender)]) - sub_ecb7cb1b[address(msg.sender)]:
                                                    require (2 * invested[address(msg.sender)]) - sub_ecb7cb1b[address(msg.sender)]
                                                    require (60 * 2 * invested[address(msg.sender)]) - (60 * sub_ecb7cb1b[address(msg.sender)]) / (2 * invested[address(msg.sender)]) - sub_ecb7cb1b[address(msg.sender)] == 60
                                                    require (60 * 2 * invested[address(msg.sender)]) - (60 * sub_ecb7cb1b[address(msg.sender)]) / 100 >= 0
                                                    return ((2 * invested[address(msg.sender)]) - sub_ecb7cb1b[address(msg.sender)] + ((60 * 2 * invested[address(msg.sender)]) - (60 * sub_ecb7cb1b[address(msg.sender)]) / 100))
                                                else:
                                                    return ((2 * invested[address(msg.sender)]) - sub_ecb7cb1b[address(msg.sender)])
                                    else:
                                        if (2 * invested[address(msg.sender)]) - sub_ecb7cb1b[address(msg.sender)]:
                                            require (2 * invested[address(msg.sender)]) - sub_ecb7cb1b[address(msg.sender)]
                                            require (40 * 2 * invested[address(msg.sender)]) - (40 * sub_ecb7cb1b[address(msg.sender)]) / (2 * invested[address(msg.sender)]) - sub_ecb7cb1b[address(msg.sender)] == 40
                                            require (40 * 2 * invested[address(msg.sender)]) - (40 * sub_ecb7cb1b[address(msg.sender)]) / 100 >= 0
                                            return ((2 * invested[address(msg.sender)]) - sub_ecb7cb1b[address(msg.sender)] + ((40 * 2 * invested[address(msg.sender)]) - (40 * sub_ecb7cb1b[address(msg.sender)]) / 100))
                                        else:
                                            return ((2 * invested[address(msg.sender)]) - sub_ecb7cb1b[address(msg.sender)])
                            else:
                                if (2 * invested[address(msg.sender)]) - sub_ecb7cb1b[address(msg.sender)]:
                                    require (2 * invested[address(msg.sender)]) - sub_ecb7cb1b[address(msg.sender)]
                                    require (20 * 2 * invested[address(msg.sender)]) - (20 * sub_ecb7cb1b[address(msg.sender)]) / (2 * invested[address(msg.sender)]) - sub_ecb7cb1b[address(msg.sender)] == 20
                                    require (20 * 2 * invested[address(msg.sender)]) - (20 * sub_ecb7cb1b[address(msg.sender)]) / 100 >= 0
                                    return ((2 * invested[address(msg.sender)]) - sub_ecb7cb1b[address(msg.sender)] + ((20 * 2 * invested[address(msg.sender)]) - (20 * sub_ecb7cb1b[address(msg.sender)]) / 100))
                                else:
                                    return ((2 * invested[address(msg.sender)]) - sub_ecb7cb1b[address(msg.sender)])
                    else:
                        return ((2 * invested[address(msg.sender)]) - sub_ecb7cb1b[address(msg.sender)])
    else:
        if 0 <= (2 * invested[address(msg.sender)]) - sub_ecb7cb1b[address(msg.sender)]:
            if invested[address(msg.sender)] < 5 * 10^17:
                return 0
            else:
                if 4 * 10^18 < invested[address(msg.sender)]:
                    if invested[address(msg.sender)] < 401 * 10^16:
                        return 0
                    else:
                        if 7 * 10^18 < invested[address(msg.sender)]:
                            if invested[address(msg.sender)] < 701 * 10^16:
                                return 0
                            else:
                                if 10 * 10^18 < invested[address(msg.sender)]:
                                    if invested[address(msg.sender)] < 1001 * 10^16:
                                        return 0
                                    else:
                                        if 15 * 10^18 < invested[address(msg.sender)]:
                                            if invested[address(msg.sender)] < 1501 * 10^16:
                                                return 0
                                            else:
                                                return 0
                                        else:
                                            return 0
                                else:
                                    return 0
                        else:
                            return 0
                else:
                    return 0
        else:
            if sub_ecb7cb1b[address(msg.sender)] >= 2 * invested[address(msg.sender)]:
                if invested[address(msg.sender)] < 5 * 10^17:
                    return 0
                else:
                    if 4 * 10^18 < invested[address(msg.sender)]:
                        if invested[address(msg.sender)] < 401 * 10^16:
                            return 0
                        else:
                            if 7 * 10^18 < invested[address(msg.sender)]:
                                if invested[address(msg.sender)] < 701 * 10^16:
                                    return 0
                                else:
                                    if 10 * 10^18 < invested[address(msg.sender)]:
                                        if invested[address(msg.sender)] < 1001 * 10^16:
                                            return 0
                                        else:
                                            if 15 * 10^18 < invested[address(msg.sender)]:
                                                if invested[address(msg.sender)] < 1501 * 10^16:
                                                    return 0
                                                else:
                                                    return 0
                                            else:
                                                return 0
                                    else:
                                        return 0
                            else:
                                return 0
                    else:
                        return 0
            else:
                if invested[address(msg.sender)] < 5 * 10^17:
                    return ((2 * invested[address(msg.sender)]) - sub_ecb7cb1b[address(msg.sender)])
                else:
                    if 4 * 10^18 < invested[address(msg.sender)]:
                        if invested[address(msg.sender)] < 401 * 10^16:
                            return ((2 * invested[address(msg.sender)]) - sub_ecb7cb1b[address(msg.sender)])
                        else:
                            if 7 * 10^18 < invested[address(msg.sender)]:
                                if invested[address(msg.sender)] < 701 * 10^16:
                                    return ((2 * invested[address(msg.sender)]) - sub_ecb7cb1b[address(msg.sender)])
                                else:
                                    if 10 * 10^18 < invested[address(msg.sender)]:
                                        if invested[address(msg.sender)] < 1001 * 10^16:
                                            return ((2 * invested[address(msg.sender)]) - sub_ecb7cb1b[address(msg.sender)])
                                        else:
                                            if 15 * 10^18 < invested[address(msg.sender)]:
                                                if invested[address(msg.sender)] < 1501 * 10^16:
                                                    return ((2 * invested[address(msg.sender)]) - sub_ecb7cb1b[address(msg.sender)])
                                                else:
                                                    if (2 * invested[address(msg.sender)]) - sub_ecb7cb1b[address(msg.sender)]:
                                                        require (2 * invested[address(msg.sender)]) - sub_ecb7cb1b[address(msg.sender)]
                                                        require (99 * 2 * invested[address(msg.sender)]) - (99 * sub_ecb7cb1b[address(msg.sender)]) / (2 * invested[address(msg.sender)]) - sub_ecb7cb1b[address(msg.sender)] == 99
                                                        require (99 * 2 * invested[address(msg.sender)]) - (99 * sub_ecb7cb1b[address(msg.sender)]) / 100 >= 0
                                                        return ((2 * invested[address(msg.sender)]) - sub_ecb7cb1b[address(msg.sender)] + ((99 * 2 * invested[address(msg.sender)]) - (99 * sub_ecb7cb1b[address(msg.sender)]) / 100))
                                                    else:
                                                        return ((2 * invested[address(msg.sender)]) - sub_ecb7cb1b[address(msg.sender)])
                                            else:
                                                if (2 * invested[address(msg.sender)]) - sub_ecb7cb1b[address(msg.sender)]:
                                                    require (2 * invested[address(msg.sender)]) - sub_ecb7cb1b[address(msg.sender)]
                                                    require (60 * 2 * invested[address(msg.sender)]) - (60 * sub_ecb7cb1b[address(msg.sender)]) / (2 * invested[address(msg.sender)]) - sub_ecb7cb1b[address(msg.sender)] == 60
                                                    require (60 * 2 * invested[address(msg.sender)]) - (60 * sub_ecb7cb1b[address(msg.sender)]) / 100 >= 0
                                                    return ((2 * invested[address(msg.sender)]) - sub_ecb7cb1b[address(msg.sender)] + ((60 * 2 * invested[address(msg.sender)]) - (60 * sub_ecb7cb1b[address(msg.sender)]) / 100))
                                                else:
                                                    return ((2 * invested[address(msg.sender)]) - sub_ecb7cb1b[address(msg.sender)])
                                    else:
                                        if (2 * invested[address(msg.sender)]) - sub_ecb7cb1b[address(msg.sender)]:
                                            require (2 * invested[address(msg.sender)]) - sub_ecb7cb1b[address(msg.sender)]
                                            require (40 * 2 * invested[address(msg.sender)]) - (40 * sub_ecb7cb1b[address(msg.sender)]) / (2 * invested[address(msg.sender)]) - sub_ecb7cb1b[address(msg.sender)] == 40
                                            require (40 * 2 * invested[address(msg.sender)]) - (40 * sub_ecb7cb1b[address(msg.sender)]) / 100 >= 0
                                            return ((2 * invested[address(msg.sender)]) - sub_ecb7cb1b[address(msg.sender)] + ((40 * 2 * invested[address(msg.sender)]) - (40 * sub_ecb7cb1b[address(msg.sender)]) / 100))
                                        else:
                                            return ((2 * invested[address(msg.sender)]) - sub_ecb7cb1b[address(msg.sender)])
                            else:
                                if (2 * invested[address(msg.sender)]) - sub_ecb7cb1b[address(msg.sender)]:
                                    require (2 * invested[address(msg.sender)]) - sub_ecb7cb1b[address(msg.sender)]
                                    require (20 * 2 * invested[address(msg.sender)]) - (20 * sub_ecb7cb1b[address(msg.sender)]) / (2 * invested[address(msg.sender)]) - sub_ecb7cb1b[address(msg.sender)] == 20
                                    require (20 * 2 * invested[address(msg.sender)]) - (20 * sub_ecb7cb1b[address(msg.sender)]) / 100 >= 0
                                    return ((2 * invested[address(msg.sender)]) - sub_ecb7cb1b[address(msg.sender)] + ((20 * 2 * invested[address(msg.sender)]) - (20 * sub_ecb7cb1b[address(msg.sender)]) / 100))
                                else:
                                    return ((2 * invested[address(msg.sender)]) - sub_ecb7cb1b[address(msg.sender)])
                    else:
                        return ((2 * invested[address(msg.sender)]) - sub_ecb7cb1b[address(msg.sender)])
}

function getProfitFromSender() {
    require lastInvest[address(msg.sender)] <= block.timestamp
    if block.timestamp - lastInvest[address(msg.sender)]:
        require block.timestamp - lastInvest[address(msg.sender)]
        require (block.timestamp * invested[address(msg.sender)]) - (lastInvest[address(msg.sender)] * invested[address(msg.sender)]) / block.timestamp - lastInvest[address(msg.sender)] == invested[address(msg.sender)]
        if (block.timestamp * invested[address(msg.sender)]) - (lastInvest[address(msg.sender)] * invested[address(msg.sender)]) / 1234440 <= (2 * invested[address(msg.sender)]) - sub_ecb7cb1b[address(msg.sender)]:
            if invested[address(msg.sender)] < 5 * 10^17:
                return ((block.timestamp * invested[address(msg.sender)]) - (lastInvest[address(msg.sender)] * invested[address(msg.sender)]) / 1234440)
            else:
                if 4 * 10^18 < invested[address(msg.sender)]:
                    if invested[address(msg.sender)] < 401 * 10^16:
                        return ((block.timestamp * invested[address(msg.sender)]) - (lastInvest[address(msg.sender)] * invested[address(msg.sender)]) / 1234440)
                    else:
                        if 7 * 10^18 < invested[address(msg.sender)]:
                            if invested[address(msg.sender)] < 701 * 10^16:
                                return ((block.timestamp * invested[address(msg.sender)]) - (lastInvest[address(msg.sender)] * invested[address(msg.sender)]) / 1234440)
                            else:
                                if 10 * 10^18 < invested[address(msg.sender)]:
                                    if invested[address(msg.sender)] < 1001 * 10^16:
                                        return ((block.timestamp * invested[address(msg.sender)]) - (lastInvest[address(msg.sender)] * invested[address(msg.sender)]) / 1234440)
                                    else:
                                        if 15 * 10^18 < invested[address(msg.sender)]:
                                            if invested[address(msg.sender)] < 1501 * 10^16:
                                                return ((block.timestamp * invested[address(msg.sender)]) - (lastInvest[address(msg.sender)] * invested[address(msg.sender)]) / 1234440)
                                            else:
                                                if (block.timestamp * invested[address(msg.sender)]) - (lastInvest[address(msg.sender)] * invested[address(msg.sender)]) / 1234440:
                                                    require (block.timestamp * invested[address(msg.sender)]) - (lastInvest[address(msg.sender)] * invested[address(msg.sender)]) / 1234440
                                                    require 99 * (block.timestamp * invested[address(msg.sender)]) - (lastInvest[address(msg.sender)] * invested[address(msg.sender)]) / 1234440 / (block.timestamp * invested[address(msg.sender)]) - (lastInvest[address(msg.sender)] * invested[address(msg.sender)]) / 1234440 == 99
                                                    require ((block.timestamp * invested[address(msg.sender)]) - (lastInvest[address(msg.sender)] * invested[address(msg.sender)]) / 1234440) + (99 * (block.timestamp * invested[address(msg.sender)]) - (lastInvest[address(msg.sender)] * invested[address(msg.sender)]) / 1234440 / 100) >= (block.timestamp * invested[address(msg.sender)]) - (lastInvest[address(msg.sender)] * invested[address(msg.sender)]) / 1234440
                                                    return (((block.timestamp * invested[address(msg.sender)]) - (lastInvest[address(msg.sender)] * invested[address(msg.sender)]) / 1234440) + (99 * (block.timestamp * invested[address(msg.sender)]) - (lastInvest[address(msg.sender)] * invested[address(msg.sender)]) / 1234440 / 100))
                                                else:
                                                    require (block.timestamp * invested[address(msg.sender)]) - (lastInvest[address(msg.sender)] * invested[address(msg.sender)]) / 1234440 >= (block.timestamp * invested[address(msg.sender)]) - (lastInvest[address(msg.sender)] * invested[address(msg.sender)]) / 1234440
                                                    return ((block.timestamp * invested[address(msg.sender)]) - (lastInvest[address(msg.sender)] * invested[address(msg.sender)]) / 1234440)
                                        else:
                                            if (block.timestamp * invested[address(msg.sender)]) - (lastInvest[address(msg.sender)] * invested[address(msg.sender)]) / 1234440:
                                                require (block.timestamp * invested[address(msg.sender)]) - (lastInvest[address(msg.sender)] * invested[address(msg.sender)]) / 1234440
                                                require 60 * (block.timestamp * invested[address(msg.sender)]) - (lastInvest[address(msg.sender)] * invested[address(msg.sender)]) / 1234440 / (block.timestamp * invested[address(msg.sender)]) - (lastInvest[address(msg.sender)] * invested[address(msg.sender)]) / 1234440 == 60
                                                require ((block.timestamp * invested[address(msg.sender)]) - (lastInvest[address(msg.sender)] * invested[address(msg.sender)]) / 1234440) + (60 * (block.timestamp * invested[address(msg.sender)]) - (lastInvest[address(msg.sender)] * invested[address(msg.sender)]) / 1234440 / 100) >= (block.timestamp * invested[address(msg.sender)]) - (lastInvest[address(msg.sender)] * invested[address(msg.sender)]) / 1234440
                                                return (((block.timestamp * invested[address(msg.sender)]) - (lastInvest[address(msg.sender)] * invested[address(msg.sender)]) / 1234440) + (60 * (block.timestamp * invested[address(msg.sender)]) - (lastInvest[address(msg.sender)] * invested[address(msg.sender)]) / 1234440 / 100))
                                            else:
                                                require (block.timestamp * invested[address(msg.sender)]) - (lastInvest[address(msg.sender)] * invested[address(msg.sender)]) / 1234440 >= (block.timestamp * invested[address(msg.sender)]) - (lastInvest[address(msg.sender)] * invested[address(msg.sender)]) / 1234440
                                                return ((block.timestamp * invested[address(msg.sender)]) - (lastInvest[address(msg.sender)] * invested[address(msg.sender)]) / 1234440)
                                else:
                                    if (block.timestamp * invested[address(msg.sender)]) - (lastInvest[address(msg.sender)] * invested[address(msg.sender)]) / 1234440:
                                        require (block.timestamp * invested[address(msg.sender)]) - (lastInvest[address(msg.sender)] * invested[address(msg.sender)]) / 1234440
                                        require 40 * (block.timestamp * invested[address(msg.sender)]) - (lastInvest[address(msg.sender)] * invested[address(msg.sender)]) / 1234440 / (block.timestamp * invested[address(msg.sender)]) - (lastInvest[address(msg.sender)] * invested[address(msg.sender)]) / 1234440 == 40
                                        require ((block.timestamp * invested[address(msg.sender)]) - (lastInvest[address(msg.sender)] * invested[address(msg.sender)]) / 1234440) + (40 * (block.timestamp * invested[address(msg.sender)]) - (lastInvest[address(msg.sender)] * invested[address(msg.sender)]) / 1234440 / 100) >= (block.timestamp * invested[address(msg.sender)]) - (lastInvest[address(msg.sender)] * invested[address(msg.sender)]) / 1234440
                                        return (((block.timestamp * invested[address(msg.sender)]) - (lastInvest[address(msg.sender)] * invested[address(msg.sender)]) / 1234440) + (40 * (block.timestamp * invested[address(msg.sender)]) - (lastInvest[address(msg.sender)] * invested[address(msg.sender)]) / 1234440 / 100))
                                    else:
                                        require (block.timestamp * invested[address(msg.sender)]) - (lastInvest[address(msg.sender)] * invested[address(msg.sender)]) / 1234440 >= (block.timestamp * invested[address(msg.sender)]) - (lastInvest[address(msg.sender)] * invested[address(msg.sender)]) / 1234440
                                        return ((block.timestamp * invested[address(msg.sender)]) - (lastInvest[address(msg.sender)] * invested[address(msg.sender)]) / 1234440)
                        else:
                            if (block.timestamp * invested[address(msg.sender)]) - (lastInvest[address(msg.sender)] * invested[address(msg.sender)]) / 1234440:
                                require (block.timestamp * invested[address(msg.sender)]) - (lastInvest[address(msg.sender)] * invested[address(msg.sender)]) / 1234440
                                require 20 * (block.timestamp * invested[address(msg.sender)]) - (lastInvest[address(msg.sender)] * invested[address(msg.sender)]) / 1234440 / (block.timestamp * invested[address(msg.sender)]) - (lastInvest[address(msg.sender)] * invested[address(msg.sender)]) / 1234440 == 20
                                require ((block.timestamp * invested[address(msg.sender)]) - (lastInvest[address(msg.sender)] * invested[address(msg.sender)]) / 1234440) + (20 * (block.timestamp * invested[address(msg.sender)]) - (lastInvest[address(msg.sender)] * invested[address(msg.sender)]) / 1234440 / 100) >= (block.timestamp * invested[address(msg.sender)]) - (lastInvest[address(msg.sender)] * invested[address(msg.sender)]) / 1234440
                                return (((block.timestamp * invested[address(msg.sender)]) - (lastInvest[address(msg.sender)] * invested[address(msg.sender)]) / 1234440) + (20 * (block.timestamp * invested[address(msg.sender)]) - (lastInvest[address(msg.sender)] * invested[address(msg.sender)]) / 1234440 / 100))
                            else:
                                require (block.timestamp * invested[address(msg.sender)]) - (lastInvest[address(msg.sender)] * invested[address(msg.sender)]) / 1234440 >= (block.timestamp * invested[address(msg.sender)]) - (lastInvest[address(msg.sender)] * invested[address(msg.sender)]) / 1234440
                                return ((block.timestamp * invested[address(msg.sender)]) - (lastInvest[address(msg.sender)] * invested[address(msg.sender)]) / 1234440)
                else:
                    return ((block.timestamp * invested[address(msg.sender)]) - (lastInvest[address(msg.sender)] * invested[address(msg.sender)]) / 1234440)
        else:
            if sub_ecb7cb1b[address(msg.sender)] >= 2 * invested[address(msg.sender)]:
                if invested[address(msg.sender)] < 5 * 10^17:
                    return ((block.timestamp * invested[address(msg.sender)]) - (lastInvest[address(msg.sender)] * invested[address(msg.sender)]) / 1234440)
                else:
                    if 4 * 10^18 < invested[address(msg.sender)]:
                        if invested[address(msg.sender)] < 401 * 10^16:
                            return ((block.timestamp * invested[address(msg.sender)]) - (lastInvest[address(msg.sender)] * invested[address(msg.sender)]) / 1234440)
                        else:
                            if 7 * 10^18 < invested[address(msg.sender)]:
                                if invested[address(msg.sender)] < 701 * 10^16:
                                    return ((block.timestamp * invested[address(msg.sender)]) - (lastInvest[address(msg.sender)] * invested[address(msg.sender)]) / 1234440)
                                else:
                                    if 10 * 10^18 < invested[address(msg.sender)]:
                                        if invested[address(msg.sender)] < 1001 * 10^16:
                                            return ((block.timestamp * invested[address(msg.sender)]) - (lastInvest[address(msg.sender)] * invested[address(msg.sender)]) / 1234440)
                                        else:
                                            if 15 * 10^18 < invested[address(msg.sender)]:
                                                if invested[address(msg.sender)] < 1501 * 10^16:
                                                    return ((block.timestamp * invested[address(msg.sender)]) - (lastInvest[address(msg.sender)] * invested[address(msg.sender)]) / 1234440)
                                                else:
                                                    if (block.timestamp * invested[address(msg.sender)]) - (lastInvest[address(msg.sender)] * invested[address(msg.sender)]) / 1234440:
                                                        require (block.timestamp * invested[address(msg.sender)]) - (lastInvest[address(msg.sender)] * invested[address(msg.sender)]) / 1234440
                                                        require 99 * (block.timestamp * invested[address(msg.sender)]) - (lastInvest[address(msg.sender)] * invested[address(msg.sender)]) / 1234440 / (block.timestamp * invested[address(msg.sender)]) - (lastInvest[address(msg.sender)] * invested[address(msg.sender)]) / 1234440 == 99
                                                        require ((block.timestamp * invested[address(msg.sender)]) - (lastInvest[address(msg.sender)] * invested[address(msg.sender)]) / 1234440) + (99 * (block.timestamp * invested[address(msg.sender)]) - (lastInvest[address(msg.sender)] * invested[address(msg.sender)]) / 1234440 / 100) >= (block.timestamp * invested[address(msg.sender)]) - (lastInvest[address(msg.sender)] * invested[address(msg.sender)]) / 1234440
                                                        return (((block.timestamp * invested[address(msg.sender)]) - (lastInvest[address(msg.sender)] * invested[address(msg.sender)]) / 1234440) + (99 * (block.timestamp * invested[address(msg.sender)]) - (lastInvest[address(msg.sender)] * invested[address(msg.sender)]) / 1234440 / 100))
                                                    else:
                                                        require (block.timestamp * invested[address(msg.sender)]) - (lastInvest[address(msg.sender)] * invested[address(msg.sender)]) / 1234440 >= (block.timestamp * invested[address(msg.sender)]) - (lastInvest[address(msg.sender)] * invested[address(msg.sender)]) / 1234440
                                                        return ((block.timestamp * invested[address(msg.sender)]) - (lastInvest[address(msg.sender)] * invested[address(msg.sender)]) / 1234440)
                                            else:
                                                if (block.timestamp * invested[address(msg.sender)]) - (lastInvest[address(msg.sender)] * invested[address(msg.sender)]) / 1234440:
                                                    require (block.timestamp * invested[address(msg.sender)]) - (lastInvest[address(msg.sender)] * invested[address(msg.sender)]) / 1234440
                                                    require 60 * (block.timestamp * invested[address(msg.sender)]) - (lastInvest[address(msg.sender)] * invested[address(msg.sender)]) / 1234440 / (block.timestamp * invested[address(msg.sender)]) - (lastInvest[address(msg.sender)] * invested[address(msg.sender)]) / 1234440 == 60
                                                    require ((block.timestamp * invested[address(msg.sender)]) - (lastInvest[address(msg.sender)] * invested[address(msg.sender)]) / 1234440) + (60 * (block.timestamp * invested[address(msg.sender)]) - (lastInvest[address(msg.sender)] * invested[address(msg.sender)]) / 1234440 / 100) >= (block.timestamp * invested[address(msg.sender)]) - (lastInvest[address(msg.sender)] * invested[address(msg.sender)]) / 1234440
                                                    return (((block.timestamp * invested[address(msg.sender)]) - (lastInvest[address(msg.sender)] * invested[address(msg.sender)]) / 1234440) + (60 * (block.timestamp * invested[address(msg.sender)]) - (lastInvest[address(msg.sender)] * invested[address(msg.sender)]) / 1234440 / 100))
                                                else:
                                                    require (block.timestamp * invested[address(msg.sender)]) - (lastInvest[address(msg.sender)] * invested[address(msg.sender)]) / 1234440 >= (block.timestamp * invested[address(msg.sender)]) - (lastInvest[address(msg.sender)] * invested[address(msg.sender)]) / 1234440
                                                    return ((block.timestamp * invested[address(msg.sender)]) - (lastInvest[address(msg.sender)] * invested[address(msg.sender)]) / 1234440)
                                    else:
                                        if (block.timestamp * invested[address(msg.sender)]) - (lastInvest[address(msg.sender)] * invested[address(msg.sender)]) / 1234440:
                                            require (block.timestamp * invested[address(msg.sender)]) - (lastInvest[address(msg.sender)] * invested[address(msg.sender)]) / 1234440
                                            require 40 * (block.timestamp * invested[address(msg.sender)]) - (lastInvest[address(msg.sender)] * invested[address(msg.sender)]) / 1234440 / (block.timestamp * invested[address(msg.sender)]) - (lastInvest[address(msg.sender)] * invested[address(msg.sender)]) / 1234440 == 40
                                            require ((block.timestamp * invested[address(msg.sender)]) - (lastInvest[address(msg.sender)] * invested[address(msg.sender)]) / 1234440) + (40 * (block.timestamp * invested[address(msg.sender)]) - (lastInvest[address(msg.sender)] * invested[address(msg.sender)]) / 1234440 / 100) >= (block.timestamp * invested[address(msg.sender)]) - (lastInvest[address(msg.sender)] * invested[address(msg.sender)]) / 1234440
                                            return (((block.timestamp * invested[address(msg.sender)]) - (lastInvest[address(msg.sender)] * invested[address(msg.sender)]) / 1234440) + (40 * (block.timestamp * invested[address(msg.sender)]) - (lastInvest[address(msg.sender)] * invested[address(msg.sender)]) / 1234440 / 100))
                                        else:
                                            require (block.timestamp * invested[address(msg.sender)]) - (lastInvest[address(msg.sender)] * invested[address(msg.sender)]) / 1234440 >= (block.timestamp * invested[address(msg.sender)]) - (lastInvest[address(msg.sender)] * invested[address(msg.sender)]) / 1234440
                                            return ((block.timestamp * invested[address(msg.sender)]) - (lastInvest[address(msg.sender)] * invested[address(msg.sender)]) / 1234440)
                            else:
                                if (block.timestamp * invested[address(msg.sender)]) - (lastInvest[address(msg.sender)] * invested[address(msg.sender)]) / 1234440:
                                    require (block.timestamp * invested[address(msg.sender)]) - (lastInvest[address(msg.sender)] * invested[address(msg.sender)]) / 1234440
                                    require 20 * (block.timestamp * invested[address(msg.sender)]) - (lastInvest[address(msg.sender)] * invested[address(msg.sender)]) / 1234440 / (block.timestamp * invested[address(msg.sender)]) - (lastInvest[address(msg.sender)] * invested[address(msg.sender)]) / 1234440 == 20
                                    require ((block.timestamp * invested[address(msg.sender)]) - (lastInvest[address(msg.sender)] * invested[address(msg.sender)]) / 1234440) + (20 * (block.timestamp * invested[address(msg.sender)]) - (lastInvest[address(msg.sender)] * invested[address(msg.sender)]) / 1234440 / 100) >= (block.timestamp * invested[address(msg.sender)]) - (lastInvest[address(msg.sender)] * invested[address(msg.sender)]) / 1234440
                                    return (((block.timestamp * invested[address(msg.sender)]) - (lastInvest[address(msg.sender)] * invested[address(msg.sender)]) / 1234440) + (20 * (block.timestamp * invested[address(msg.sender)]) - (lastInvest[address(msg.sender)] * invested[address(msg.sender)]) / 1234440 / 100))
                                else:
                                    require (block.timestamp * invested[address(msg.sender)]) - (lastInvest[address(msg.sender)] * invested[address(msg.sender)]) / 1234440 >= (block.timestamp * invested[address(msg.sender)]) - (lastInvest[address(msg.sender)] * invested[address(msg.sender)]) / 1234440
                                    return ((block.timestamp * invested[address(msg.sender)]) - (lastInvest[address(msg.sender)] * invested[address(msg.sender)]) / 1234440)
                    else:
                        return ((block.timestamp * invested[address(msg.sender)]) - (lastInvest[address(msg.sender)] * invested[address(msg.sender)]) / 1234440)
            else:
                if invested[address(msg.sender)] < 5 * 10^17:
                    return ((2 * invested[address(msg.sender)]) - sub_ecb7cb1b[address(msg.sender)])
                else:
                    if 4 * 10^18 < invested[address(msg.sender)]:
                        if invested[address(msg.sender)] < 401 * 10^16:
                            return ((2 * invested[address(msg.sender)]) - sub_ecb7cb1b[address(msg.sender)])
                        else:
                            if 7 * 10^18 < invested[address(msg.sender)]:
                                if invested[address(msg.sender)] < 701 * 10^16:
                                    return ((2 * invested[address(msg.sender)]) - sub_ecb7cb1b[address(msg.sender)])
                                else:
                                    if 10 * 10^18 < invested[address(msg.sender)]:
                                        if invested[address(msg.sender)] < 1001 * 10^16:
                                            return ((2 * invested[address(msg.sender)]) - sub_ecb7cb1b[address(msg.sender)])
                                        else:
                                            if 15 * 10^18 < invested[address(msg.sender)]:
                                                if invested[address(msg.sender)] < 1501 * 10^16:
                                                    return ((2 * invested[address(msg.sender)]) - sub_ecb7cb1b[address(msg.sender)])
                                                else:
                                                    if (2 * invested[address(msg.sender)]) - sub_ecb7cb1b[address(msg.sender)]:
                                                        require (2 * invested[address(msg.sender)]) - sub_ecb7cb1b[address(msg.sender)]
                                                        require (99 * 2 * invested[address(msg.sender)]) - (99 * sub_ecb7cb1b[address(msg.sender)]) / (2 * invested[address(msg.sender)]) - sub_ecb7cb1b[address(msg.sender)] == 99
                                                        require (99 * 2 * invested[address(msg.sender)]) - (99 * sub_ecb7cb1b[address(msg.sender)]) / 100 >= 0
                                                        return ((2 * invested[address(msg.sender)]) - sub_ecb7cb1b[address(msg.sender)] + ((99 * 2 * invested[address(msg.sender)]) - (99 * sub_ecb7cb1b[address(msg.sender)]) / 100))
                                                    else:
                                                        return ((2 * invested[address(msg.sender)]) - sub_ecb7cb1b[address(msg.sender)])
                                            else:
                                                if (2 * invested[address(msg.sender)]) - sub_ecb7cb1b[address(msg.sender)]:
                                                    require (2 * invested[address(msg.sender)]) - sub_ecb7cb1b[address(msg.sender)]
                                                    require (60 * 2 * invested[address(msg.sender)]) - (60 * sub_ecb7cb1b[address(msg.sender)]) / (2 * invested[address(msg.sender)]) - sub_ecb7cb1b[address(msg.sender)] == 60
                                                    require (60 * 2 * invested[address(msg.sender)]) - (60 * sub_ecb7cb1b[address(msg.sender)]) / 100 >= 0
                                                    return ((2 * invested[address(msg.sender)]) - sub_ecb7cb1b[address(msg.sender)] + ((60 * 2 * invested[address(msg.sender)]) - (60 * sub_ecb7cb1b[address(msg.sender)]) / 100))
                                                else:
                                                    return ((2 * invested[address(msg.sender)]) - sub_ecb7cb1b[address(msg.sender)])
                                    else:
                                        if (2 * invested[address(msg.sender)]) - sub_ecb7cb1b[address(msg.sender)]:
                                            require (2 * invested[address(msg.sender)]) - sub_ecb7cb1b[address(msg.sender)]
                                            require (40 * 2 * invested[address(msg.sender)]) - (40 * sub_ecb7cb1b[address(msg.sender)]) / (2 * invested[address(msg.sender)]) - sub_ecb7cb1b[address(msg.sender)] == 40
                                            require (40 * 2 * invested[address(msg.sender)]) - (40 * sub_ecb7cb1b[address(msg.sender)]) / 100 >= 0
                                            return ((2 * invested[address(msg.sender)]) - sub_ecb7cb1b[address(msg.sender)] + ((40 * 2 * invested[address(msg.sender)]) - (40 * sub_ecb7cb1b[address(msg.sender)]) / 100))
                                        else:
                                            return ((2 * invested[address(msg.sender)]) - sub_ecb7cb1b[address(msg.sender)])
                            else:
                                if (2 * invested[address(msg.sender)]) - sub_ecb7cb1b[address(msg.sender)]:
                                    require (2 * invested[address(msg.sender)]) - sub_ecb7cb1b[address(msg.sender)]
                                    require (20 * 2 * invested[address(msg.sender)]) - (20 * sub_ecb7cb1b[address(msg.sender)]) / (2 * invested[address(msg.sender)]) - sub_ecb7cb1b[address(msg.sender)] == 20
                                    require (20 * 2 * invested[address(msg.sender)]) - (20 * sub_ecb7cb1b[address(msg.sender)]) / 100 >= 0
                                    return ((2 * invested[address(msg.sender)]) - sub_ecb7cb1b[address(msg.sender)] + ((20 * 2 * invested[address(msg.sender)]) - (20 * sub_ecb7cb1b[address(msg.sender)]) / 100))
                                else:
                                    return ((2 * invested[address(msg.sender)]) - sub_ecb7cb1b[address(msg.sender)])
                    else:
                        return ((2 * invested[address(msg.sender)]) - sub_ecb7cb1b[address(msg.sender)])
    else:
        if 0 <= (2 * invested[address(msg.sender)]) - sub_ecb7cb1b[address(msg.sender)]:
            if invested[address(msg.sender)] < 5 * 10^17:
                return 0
            else:
                if 4 * 10^18 < invested[address(msg.sender)]:
                    if invested[address(msg.sender)] < 401 * 10^16:
                        return 0
                    else:
                        if 7 * 10^18 < invested[address(msg.sender)]:
                            if invested[address(msg.sender)] < 701 * 10^16:
                                return 0
                            else:
                                if 10 * 10^18 < invested[address(msg.sender)]:
                                    if invested[address(msg.sender)] < 1001 * 10^16:
                                        return 0
                                    else:
                                        if 15 * 10^18 < invested[address(msg.sender)]:
                                            if invested[address(msg.sender)] < 1501 * 10^16:
                                                return 0
                                            else:
                                                return 0
                                        else:
                                            return 0
                                else:
                                    return 0
                        else:
                            return 0
                else:
                    return 0
        else:
            if sub_ecb7cb1b[address(msg.sender)] >= 2 * invested[address(msg.sender)]:
                if invested[address(msg.sender)] < 5 * 10^17:
                    return 0
                else:
                    if 4 * 10^18 < invested[address(msg.sender)]:
                        if invested[address(msg.sender)] < 401 * 10^16:
                            return 0
                        else:
                            if 7 * 10^18 < invested[address(msg.sender)]:
                                if invested[address(msg.sender)] < 701 * 10^16:
                                    return 0
                                else:
                                    if 10 * 10^18 < invested[address(msg.sender)]:
                                        if invested[address(msg.sender)] < 1001 * 10^16:
                                            return 0
                                        else:
                                            if 15 * 10^18 < invested[address(msg.sender)]:
                                                if invested[address(msg.sender)] < 1501 * 10^16:
                                                    return 0
                                                else:
                                                    return 0
                                            else:
                                                return 0
                                    else:
                                        return 0
                            else:
                                return 0
                    else:
                        return 0
            else:
                if invested[address(msg.sender)] < 5 * 10^17:
                    return ((2 * invested[address(msg.sender)]) - sub_ecb7cb1b[address(msg.sender)])
                else:
                    if 4 * 10^18 < invested[address(msg.sender)]:
                        if invested[address(msg.sender)] < 401 * 10^16:
                            return ((2 * invested[address(msg.sender)]) - sub_ecb7cb1b[address(msg.sender)])
                        else:
                            if 7 * 10^18 < invested[address(msg.sender)]:
                                if invested[address(msg.sender)] < 701 * 10^16:
                                    return ((2 * invested[address(msg.sender)]) - sub_ecb7cb1b[address(msg.sender)])
                                else:
                                    if 10 * 10^18 < invested[address(msg.sender)]:
                                        if invested[address(msg.sender)] < 1001 * 10^16:
                                            return ((2 * invested[address(msg.sender)]) - sub_ecb7cb1b[address(msg.sender)])
                                        else:
                                            if 15 * 10^18 < invested[address(msg.sender)]:
                                                if invested[address(msg.sender)] < 1501 * 10^16:
                                                    return ((2 * invested[address(msg.sender)]) - sub_ecb7cb1b[address(msg.sender)])
                                                else:
                                                    if (2 * invested[address(msg.sender)]) - sub_ecb7cb1b[address(msg.sender)]:
                                                        require (2 * invested[address(msg.sender)]) - sub_ecb7cb1b[address(msg.sender)]
                                                        require (99 * 2 * invested[address(msg.sender)]) - (99 * sub_ecb7cb1b[address(msg.sender)]) / (2 * invested[address(msg.sender)]) - sub_ecb7cb1b[address(msg.sender)] == 99
                                                        require (99 * 2 * invested[address(msg.sender)]) - (99 * sub_ecb7cb1b[address(msg.sender)]) / 100 >= 0
                                                        return ((2 * invested[address(msg.sender)]) - sub_ecb7cb1b[address(msg.sender)] + ((99 * 2 * invested[address(msg.sender)]) - (99 * sub_ecb7cb1b[address(msg.sender)]) / 100))
                                                    else:
                                                        return ((2 * invested[address(msg.sender)]) - sub_ecb7cb1b[address(msg.sender)])
                                            else:
                                                if (2 * invested[address(msg.sender)]) - sub_ecb7cb1b[address(msg.sender)]:
                                                    require (2 * invested[address(msg.sender)]) - sub_ecb7cb1b[address(msg.sender)]
                                                    require (60 * 2 * invested[address(msg.sender)]) - (60 * sub_ecb7cb1b[address(msg.sender)]) / (2 * invested[address(msg.sender)]) - sub_ecb7cb1b[address(msg.sender)] == 60
                                                    require (60 * 2 * invested[address(msg.sender)]) - (60 * sub_ecb7cb1b[address(msg.sender)]) / 100 >= 0
                                                    return ((2 * invested[address(msg.sender)]) - sub_ecb7cb1b[address(msg.sender)] + ((60 * 2 * invested[address(msg.sender)]) - (60 * sub_ecb7cb1b[address(msg.sender)]) / 100))
                                                else:
                                                    return ((2 * invested[address(msg.sender)]) - sub_ecb7cb1b[address(msg.sender)])
                                    else:
                                        if (2 * invested[address(msg.sender)]) - sub_ecb7cb1b[address(msg.sender)]:
                                            require (2 * invested[address(msg.sender)]) - sub_ecb7cb1b[address(msg.sender)]
                                            require (40 * 2 * invested[address(msg.sender)]) - (40 * sub_ecb7cb1b[address(msg.sender)]) / (2 * invested[address(msg.sender)]) - sub_ecb7cb1b[address(msg.sender)] == 40
                                            require (40 * 2 * invested[address(msg.sender)]) - (40 * sub_ecb7cb1b[address(msg.sender)]) / 100 >= 0
                                            return ((2 * invested[address(msg.sender)]) - sub_ecb7cb1b[address(msg.sender)] + ((40 * 2 * invested[address(msg.sender)]) - (40 * sub_ecb7cb1b[address(msg.sender)]) / 100))
                                        else:
                                            return ((2 * invested[address(msg.sender)]) - sub_ecb7cb1b[address(msg.sender)])
                            else:
                                if (2 * invested[address(msg.sender)]) - sub_ecb7cb1b[address(msg.sender)]:
                                    require (2 * invested[address(msg.sender)]) - sub_ecb7cb1b[address(msg.sender)]
                                    require (20 * 2 * invested[address(msg.sender)]) - (20 * sub_ecb7cb1b[address(msg.sender)]) / (2 * invested[address(msg.sender)]) - sub_ecb7cb1b[address(msg.sender)] == 20
                                    require (20 * 2 * invested[address(msg.sender)]) - (20 * sub_ecb7cb1b[address(msg.sender)]) / 100 >= 0
                                    return ((2 * invested[address(msg.sender)]) - sub_ecb7cb1b[address(msg.sender)] + ((20 * 2 * invested[address(msg.sender)]) - (20 * sub_ecb7cb1b[address(msg.sender)]) / 100))
                                else:
                                    return ((2 * invested[address(msg.sender)]) - sub_ecb7cb1b[address(msg.sender)])
                    else:
                        return ((2 * invested[address(msg.sender)]) - sub_ecb7cb1b[address(msg.sender)])
}

function withdraw() {
    require lastInvest[address(msg.sender)] <= block.timestamp
    if block.timestamp - lastInvest[address(msg.sender)]:
        require block.timestamp - lastInvest[address(msg.sender)]
        require (block.timestamp * invested[address(msg.sender)]) - (lastInvest[address(msg.sender)] * invested[address(msg.sender)]) / block.timestamp - lastInvest[address(msg.sender)] == invested[address(msg.sender)]
        if (block.timestamp * invested[address(msg.sender)]) - (lastInvest[address(msg.sender)] * invested[address(msg.sender)]) / 1234440 <= (2 * invested[address(msg.sender)]) - sub_ecb7cb1b[address(msg.sender)]:
            if invested[address(msg.sender)] < 5 * 10^17:
                require (block.timestamp * invested[address(msg.sender)]) - (lastInvest[address(msg.sender)] * invested[address(msg.sender)]) / 1234440 > 0
                lastInvest[address(msg.sender)] = block.timestamp
                if (block.timestamp * invested[address(msg.sender)]) - (lastInvest[address(msg.sender)] * invested[address(msg.sender)]) / 1234440 >= (2 * invested[address(msg.sender)]) - sub_ecb7cb1b[address(msg.sender)]:
                    if sub_ecb7cb1b[address(msg.sender)] >= 2 * invested[address(msg.sender)]:
                    else:
                        sub_ecb7cb1b[address(msg.sender)] = 0
                        invested[address(msg.sender)] = 0
                        sub_64e3cecb[address(msg.sender)] = 0
                        idx = 0
                        while sub_64e3cecb[address(msg.sender)] > idx:
                            sub_64e3cecb[address(msg.sender)][idx] = 0
                            idx = idx + 1
                            continue 
                        call msg.sender with:
                           value (2 * invested[address(msg.sender)]) - sub_ecb7cb1b[address(msg.sender)] wei
                             gas 2300 * is_zero(value) wei
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        else:
                else:
                    sub_ecb7cb1b[address(msg.sender)] += (block.timestamp * invested[address(msg.sender)]) - (lastInvest[address(msg.sender)] * invested[address(msg.sender)]) / 1234440
                    call msg.sender with:
                       value (block.timestamp * invested[address(msg.sender)]) - (lastInvest[address(msg.sender)] * invested[address(msg.sender)]) / 1234440 wei
                         gas 2300 * is_zero(value) wei
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    else:
            else:
                if 4 * 10^18 < invested[address(msg.sender)]:
                    if invested[address(msg.sender)] < 401 * 10^16:
                        require (block.timestamp * invested[address(msg.sender)]) - (lastInvest[address(msg.sender)] * invested[address(msg.sender)]) / 1234440 > 0
                        lastInvest[address(msg.sender)] = block.timestamp
                        if (block.timestamp * invested[address(msg.sender)]) - (lastInvest[address(msg.sender)] * invested[address(msg.sender)]) / 1234440 >= (2 * invested[address(msg.sender)]) - sub_ecb7cb1b[address(msg.sender)]:
                            if sub_ecb7cb1b[address(msg.sender)] >= 2 * invested[address(msg.sender)]:
                            else:
                                sub_ecb7cb1b[address(msg.sender)] = 0
                                invested[address(msg.sender)] = 0
                                sub_64e3cecb[address(msg.sender)] = 0
                                idx = 0
                                while sub_64e3cecb[address(msg.sender)] > idx:
                                    sub_64e3cecb[address(msg.sender)][idx] = 0
                                    idx = idx + 1
                                    continue 
                                call msg.sender with:
                                   value (2 * invested[address(msg.sender)]) - sub_ecb7cb1b[address(msg.sender)] wei
                                     gas 2300 * is_zero(value) wei
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                else:
                        else:
                            sub_ecb7cb1b[address(msg.sender)] += (block.timestamp * invested[address(msg.sender)]) - (lastInvest[address(msg.sender)] * invested[address(msg.sender)]) / 1234440
                            call msg.sender with:
                               value (block.timestamp * invested[address(msg.sender)]) - (lastInvest[address(msg.sender)] * invested[address(msg.sender)]) / 1234440 wei
                                 gas 2300 * is_zero(value) wei
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            else:
                    else:
                        if 7 * 10^18 < invested[address(msg.sender)]:
                            if invested[address(msg.sender)] < 701 * 10^16:
                                require (block.timestamp * invested[address(msg.sender)]) - (lastInvest[address(msg.sender)] * invested[address(msg.sender)]) / 1234440 > 0
                                lastInvest[address(msg.sender)] = block.timestamp
                                if (block.timestamp * invested[address(msg.sender)]) - (lastInvest[address(msg.sender)] * invested[address(msg.sender)]) / 1234440 >= (2 * invested[address(msg.sender)]) - sub_ecb7cb1b[address(msg.sender)]:
                                    if sub_ecb7cb1b[address(msg.sender)] >= 2 * invested[address(msg.sender)]:
                                    else:
                                        sub_ecb7cb1b[address(msg.sender)] = 0
                                        invested[address(msg.sender)] = 0
                                        sub_64e3cecb[address(msg.sender)] = 0
                                        idx = 0
                                        while sub_64e3cecb[address(msg.sender)] > idx:
                                            sub_64e3cecb[address(msg.sender)][idx] = 0
                                            idx = idx + 1
                                            continue 
                                        call msg.sender with:
                                           value (2 * invested[address(msg.sender)]) - sub_ecb7cb1b[address(msg.sender)] wei
                                             gas 2300 * is_zero(value) wei
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        else:
                                else:
                                    sub_ecb7cb1b[address(msg.sender)] += (block.timestamp * invested[address(msg.sender)]) - (lastInvest[address(msg.sender)] * invested[address(msg.sender)]) / 1234440
                                    call msg.sender with:
                                       value (block.timestamp * invested[address(msg.sender)]) - (lastInvest[address(msg.sender)] * invested[address(msg.sender)]) / 1234440 wei
                                         gas 2300 * is_zero(value) wei
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    else:
                            else:
                                if 10 * 10^18 < invested[address(msg.sender)]:
                                    if invested[address(msg.sender)] < 1001 * 10^16:
                                        require (block.timestamp * invested[address(msg.sender)]) - (lastInvest[address(msg.sender)] * invested[address(msg.sender)]) / 1234440 > 0
                                        lastInvest[address(msg.sender)] = block.timestamp
                                        if (block.timestamp * invested[address(msg.sender)]) - (lastInvest[address(msg.sender)] * invested[address(msg.sender)]) / 1234440 >= (2 * invested[address(msg.sender)]) - sub_ecb7cb1b[address(msg.sender)]:
                                            if sub_ecb7cb1b[address(msg.sender)] >= 2 * invested[address(msg.sender)]:
                                            else:
                                                sub_ecb7cb1b[address(msg.sender)] = 0
                                                invested[address(msg.sender)] = 0
                                                sub_64e3cecb[address(msg.sender)] = 0
                                                idx = 0
                                                while sub_64e3cecb[address(msg.sender)] > idx:
                                                    sub_64e3cecb[address(msg.sender)][idx] = 0
                                                    idx = idx + 1
                                                    continue 
                                                call msg.sender with:
                                                   value (2 * invested[address(msg.sender)]) - sub_ecb7cb1b[address(msg.sender)] wei
                                                     gas 2300 * is_zero(value) wei
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                else:
                                        else:
                                            sub_ecb7cb1b[address(msg.sender)] += (block.timestamp * invested[address(msg.sender)]) - (lastInvest[address(msg.sender)] * invested[address(msg.sender)]) / 1234440
                                            call msg.sender with:
                                               value (block.timestamp * invested[address(msg.sender)]) - (lastInvest[address(msg.sender)] * invested[address(msg.sender)]) / 1234440 wei
                                                 gas 2300 * is_zero(value) wei
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            else:
                                    else:
                                        if 15 * 10^18 < invested[address(msg.sender)]:
                                            if invested[address(msg.sender)] < 1501 * 10^16:
                                                require (block.timestamp * invested[address(msg.sender)]) - (lastInvest[address(msg.sender)] * invested[address(msg.sender)]) / 1234440 > 0
                                                lastInvest[address(msg.sender)] = block.timestamp
                                                if (block.timestamp * invested[address(msg.sender)]) - (lastInvest[address(msg.sender)] * invested[address(msg.sender)]) / 1234440 >= (2 * invested[address(msg.sender)]) - sub_ecb7cb1b[address(msg.sender)]:
                                                    if sub_ecb7cb1b[address(msg.sender)] >= 2 * invested[address(msg.sender)]:
                                                    else:
                                                        sub_ecb7cb1b[address(msg.sender)] = 0
                                                        invested[address(msg.sender)] = 0
                                                        sub_64e3cecb[address(msg.sender)] = 0
                                                        idx = 0
                                                        while sub_64e3cecb[address(msg.sender)] > idx:
                                                            sub_64e3cecb[address(msg.sender)][idx] = 0
                                                            idx = idx + 1
                                                            continue 
                                                        call msg.sender with:
                                                           value (2 * invested[address(msg.sender)]) - sub_ecb7cb1b[address(msg.sender)] wei
                                                             gas 2300 * is_zero(value) wei
                                                        if not ext_call.success:
                                                            revert with ext_call.return_data[0 len return_data.size]
                                                        else:
                                                else:
                                                    sub_ecb7cb1b[address(msg.sender)] += (block.timestamp * invested[address(msg.sender)]) - (lastInvest[address(msg.sender)] * invested[address(msg.sender)]) / 1234440
                                                    call msg.sender with:
                                                       value (block.timestamp * invested[address(msg.sender)]) - (lastInvest[address(msg.sender)] * invested[address(msg.sender)]) / 1234440 wei
                                                         gas 2300 * is_zero(value) wei
                                                    if not ext_call.success:
                                                        revert with ext_call.return_data[0 len return_data.size]
                                                    else:
                                            else:
                                                if (block.timestamp * invested[address(msg.sender)]) - (lastInvest[address(msg.sender)] * invested[address(msg.sender)]) / 1234440:
                                                    require (block.timestamp * invested[address(msg.sender)]) - (lastInvest[address(msg.sender)] * invested[address(msg.sender)]) / 1234440
                                                    require 99 * (block.timestamp * invested[address(msg.sender)]) - (lastInvest[address(msg.sender)] * invested[address(msg.sender)]) / 1234440 / (block.timestamp * invested[address(msg.sender)]) - (lastInvest[address(msg.sender)] * invested[address(msg.sender)]) / 1234440 == 99
                                                    require ((block.timestamp * invested[address(msg.sender)]) - (lastInvest[address(msg.sender)] * invested[address(msg.sender)]) / 1234440) + (99 * (block.timestamp * invested[address(msg.sender)]) - (lastInvest[address(msg.sender)] * invested[address(msg.sender)]) / 1234440 / 100) >= (block.timestamp * invested[address(msg.sender)]) - (lastInvest[address(msg.sender)] * invested[address(msg.sender)]) / 1234440
                                                    require ((block.timestamp * invested[address(msg.sender)]) - (lastInvest[address(msg.sender)] * invested[address(msg.sender)]) / 1234440) + (99 * (block.timestamp * invested[address(msg.sender)]) - (lastInvest[address(msg.sender)] * invested[address(msg.sender)]) / 1234440 / 100) > 0
                                                    lastInvest[address(msg.sender)] = block.timestamp
                                                    if ((block.timestamp * invested[address(msg.sender)]) - (lastInvest[address(msg.sender)] * invested[address(msg.sender)]) / 1234440) + (99 * (block.timestamp * invested[address(msg.sender)]) - (lastInvest[address(msg.sender)] * invested[address(msg.sender)]) / 1234440 / 100) >= (2 * invested[address(msg.sender)]) - sub_ecb7cb1b[address(msg.sender)]:
                                                        if sub_ecb7cb1b[address(msg.sender)] >= 2 * invested[address(msg.sender)]:
                                                        else:
                                                            sub_ecb7cb1b[address(msg.sender)] = 0
                                                            invested[address(msg.sender)] = 0
                                                            sub_64e3cecb[address(msg.sender)] = 0
                                                            idx = 0
                                                            while sub_64e3cecb[address(msg.sender)] > idx:
                                                                sub_64e3cecb[address(msg.sender)][idx] = 0
                                                                idx = idx + 1
                                                                continue 
                                                            call msg.sender with:
                                                               value (2 * invested[address(msg.sender)]) - sub_ecb7cb1b[address(msg.sender)] wei
                                                                 gas 2300 * is_zero(value) wei
                                                            if not ext_call.success:
                                                                revert with ext_call.return_data[0 len return_data.size]
                                                            else:
                                                    else:
                                                        sub_ecb7cb1b[address(msg.sender)] = sub_ecb7cb1b[address(msg.sender)] + ((block.timestamp * invested[address(msg.sender)]) - (lastInvest[address(msg.sender)] * invested[address(msg.sender)]) / 1234440) + (99 * (block.timestamp * invested[address(msg.sender)]) - (lastInvest[address(msg.sender)] * invested[address(msg.sender)]) / 1234440 / 100)
                                                        call msg.sender with:
                                                           value ((block.timestamp * invested[address(msg.sender)]) - (lastInvest[address(msg.sender)] * invested[address(msg.sender)]) / 1234440) + (99 * (block.timestamp * invested[address(msg.sender)]) - (lastInvest[address(msg.sender)] * invested[address(msg.sender)]) / 1234440 / 100) wei
                                                             gas 2300 * is_zero(value) wei
                                                        if not ext_call.success:
                                                            revert with ext_call.return_data[0 len return_data.size]
                                                        else:
                                                else:
                                                    require (block.timestamp * invested[address(msg.sender)]) - (lastInvest[address(msg.sender)] * invested[address(msg.sender)]) / 1234440 >= (block.timestamp * invested[address(msg.sender)]) - (lastInvest[address(msg.sender)] * invested[address(msg.sender)]) / 1234440
                                                    require (block.timestamp * invested[address(msg.sender)]) - (lastInvest[address(msg.sender)] * invested[address(msg.sender)]) / 1234440 > 0
                                                    lastInvest[address(msg.sender)] = block.timestamp
                                                    if (block.timestamp * invested[address(msg.sender)]) - (lastInvest[address(msg.sender)] * invested[address(msg.sender)]) / 1234440 >= (2 * invested[address(msg.sender)]) - sub_ecb7cb1b[address(msg.sender)]:
                                                        if sub_ecb7cb1b[address(msg.sender)] >= 2 * invested[address(msg.sender)]:
                                                        else:
                                                            sub_ecb7cb1b[address(msg.sender)] = 0
                                                            invested[address(msg.sender)] = 0
                                                            sub_64e3cecb[address(msg.sender)] = 0
                                                            idx = 0
                                                            while sub_64e3cecb[address(msg.sender)] > idx:
                                                                sub_64e3cecb[address(msg.sender)][idx] = 0
                                                                idx = idx + 1
                                                                continue 
                                                            call msg.sender with:
                                                               value (2 * invested[address(msg.sender)]) - sub_ecb7cb1b[address(msg.sender)] wei
                                                                 gas 2300 * is_zero(value) wei
                                                            if not ext_call.success:
                                                                revert with ext_call.return_data[0 len return_data.size]
                                                            else:
                                                    else:
                                                        sub_ecb7cb1b[address(msg.sender)] += (block.timestamp * invested[address(msg.sender)]) - (lastInvest[address(msg.sender)] * invested[address(msg.sender)]) / 1234440
                                                        call msg.sender with:
                                                           value (block.timestamp * invested[address(msg.sender)]) - (lastInvest[address(msg.sender)] * invested[address(msg.sender)]) / 1234440 wei
                                                             gas 2300 * is_zero(value) wei
                                                        if not ext_call.success:
                                                            revert with ext_call.return_data[0 len return_data.size]
                                                        else:
                                        else:
                                            if (block.timestamp * invested[address(msg.sender)]) - (lastInvest[address(msg.sender)] * invested[address(msg.sender)]) / 1234440:
                                                require (block.timestamp * invested[address(msg.sender)]) - (lastInvest[address(msg.sender)] * invested[address(msg.sender)]) / 1234440
                                                require 60 * (block.timestamp * invested[address(msg.sender)]) - (lastInvest[address(msg.sender)] * invested[address(msg.sender)]) / 1234440 / (block.timestamp * invested[address(msg.sender)]) - (lastInvest[address(msg.sender)] * invested[address(msg.sender)]) / 1234440 == 60
                                                require ((block.timestamp * invested[address(msg.sender)]) - (lastInvest[address(msg.sender)] * invested[address(msg.sender)]) / 1234440) + (60 * (block.timestamp * invested[address(msg.sender)]) - (lastInvest[address(msg.sender)] * invested[address(msg.sender)]) / 1234440 / 100) >= (block.timestamp * invested[address(msg.sender)]) - (lastInvest[address(msg.sender)] * invested[address(msg.sender)]) / 1234440
                                                require ((block.timestamp * invested[address(msg.sender)]) - (lastInvest[address(msg.sender)] * invested[address(msg.sender)]) / 1234440) + (60 * (block.timestamp * invested[address(msg.sender)]) - (lastInvest[address(msg.sender)] * invested[address(msg.sender)]) / 1234440 / 100) > 0
                                                lastInvest[address(msg.sender)] = block.timestamp
                                                if ((block.timestamp * invested[address(msg.sender)]) - (lastInvest[address(msg.sender)] * invested[address(msg.sender)]) / 1234440) + (60 * (block.timestamp * invested[address(msg.sender)]) - (lastInvest[address(msg.sender)] * invested[address(msg.sender)]) / 1234440 / 100) >= (2 * invested[address(msg.sender)]) - sub_ecb7cb1b[address(msg.sender)]:
                                                    if sub_ecb7cb1b[address(msg.sender)] >= 2 * invested[address(msg.sender)]:
                                                    else:
                                                        sub_ecb7cb1b[address(msg.sender)] = 0
                                                        invested[address(msg.sender)] = 0
                                                        sub_64e3cecb[address(msg.sender)] = 0
                                                        idx = 0
                                                        while sub_64e3cecb[address(msg.sender)] > idx:
                                                            sub_64e3cecb[address(msg.sender)][idx] = 0
                                                            idx = idx + 1
                                                            continue 
                                                        call msg.sender with:
                                                           value (2 * invested[address(msg.sender)]) - sub_ecb7cb1b[address(msg.sender)] wei
                                                             gas 2300 * is_zero(value) wei
                                                        if not ext_call.success:
                                                            revert with ext_call.return_data[0 len return_data.size]
                                                        else:
                                                else:
                                                    sub_ecb7cb1b[address(msg.sender)] = sub_ecb7cb1b[address(msg.sender)] + ((block.timestamp * invested[address(msg.sender)]) - (lastInvest[address(msg.sender)] * invested[address(msg.sender)]) / 1234440) + (60 * (block.timestamp * invested[address(msg.sender)]) - (lastInvest[address(msg.sender)] * invested[address(msg.sender)]) / 1234440 / 100)
                                                    call msg.sender with:
                                                       value ((block.timestamp * invested[address(msg.sender)]) - (lastInvest[address(msg.sender)] * invested[address(msg.sender)]) / 1234440) + (60 * (block.timestamp * invested[address(msg.sender)]) - (lastInvest[address(msg.sender)] * invested[address(msg.sender)]) / 1234440 / 100) wei
                                                         gas 2300 * is_zero(value) wei
                                                    if not ext_call.success:
                                                        revert with ext_call.return_data[0 len return_data.size]
                                                    else:
                                            else:
                                                require (block.timestamp * invested[address(msg.sender)]) - (lastInvest[address(msg.sender)] * invested[address(msg.sender)]) / 1234440 >= (block.timestamp * invested[address(msg.sender)]) - (lastInvest[address(msg.sender)] * invested[address(msg.sender)]) / 1234440
                                                require (block.timestamp * invested[address(msg.sender)]) - (lastInvest[address(msg.sender)] * invested[address(msg.sender)]) / 1234440 > 0
                                                lastInvest[address(msg.sender)] = block.timestamp
                                                if (block.timestamp * invested[address(msg.sender)]) - (lastInvest[address(msg.sender)] * invested[address(msg.sender)]) / 1234440 >= (2 * invested[address(msg.sender)]) - sub_ecb7cb1b[address(msg.sender)]:
                                                    if sub_ecb7cb1b[address(msg.sender)] >= 2 * invested[address(msg.sender)]:
                                                    else:
                                                        sub_ecb7cb1b[address(msg.sender)] = 0
                                                        invested[address(msg.sender)] = 0
                                                        sub_64e3cecb[address(msg.sender)] = 0
                                                        idx = 0
                                                        while sub_64e3cecb[address(msg.sender)] > idx:
                                                            sub_64e3cecb[address(msg.sender)][idx] = 0
                                                            idx = idx + 1
                                                            continue 
                                                        call msg.sender with:
                                                           value (2 * invested[address(msg.sender)]) - sub_ecb7cb1b[address(msg.sender)] wei
                                                             gas 2300 * is_zero(value) wei
                                                        if not ext_call.success:
                                                            revert with ext_call.return_data[0 len return_data.size]
                                                        else:
                                                else:
                                                    sub_ecb7cb1b[address(msg.sender)] += (block.timestamp * invested[address(msg.sender)]) - (lastInvest[address(msg.sender)] * invested[address(msg.sender)]) / 1234440
                                                    call msg.sender with:
                                                       value (block.timestamp * invested[address(msg.sender)]) - (lastInvest[address(msg.sender)] * invested[address(msg.sender)]) / 1234440 wei
                                                         gas 2300 * is_zero(value) wei
                                                    if not ext_call.success:
                                                        revert with ext_call.return_data[0 len return_data.size]
                                                    else:
                                else:
                                    if (block.timestamp * invested[address(msg.sender)]) - (lastInvest[address(msg.sender)] * invested[address(msg.sender)]) / 1234440:
                                        require (block.timestamp * invested[address(msg.sender)]) - (lastInvest[address(msg.sender)] * invested[address(msg.sender)]) / 1234440
                                        require 40 * (block.timestamp * invested[address(msg.sender)]) - (lastInvest[address(msg.sender)] * invested[address(msg.sender)]) / 1234440 / (block.timestamp * invested[address(msg.sender)]) - (lastInvest[address(msg.sender)] * invested[address(msg.sender)]) / 1234440 == 40
                                        require ((block.timestamp * invested[address(msg.sender)]) - (lastInvest[address(msg.sender)] * invested[address(msg.sender)]) / 1234440) + (40 * (block.timestamp * invested[address(msg.sender)]) - (lastInvest[address(msg.sender)] * invested[address(msg.sender)]) / 1234440 / 100) >= (block.timestamp * invested[address(msg.sender)]) - (lastInvest[address(msg.sender)] * invested[address(msg.sender)]) / 1234440
                                        require ((block.timestamp * invested[address(msg.sender)]) - (lastInvest[address(msg.sender)] * invested[address(msg.sender)]) / 1234440) + (40 * (block.timestamp * invested[address(msg.sender)]) - (lastInvest[address(msg.sender)] * invested[address(msg.sender)]) / 1234440 / 100) > 0
                                        lastInvest[address(msg.sender)] = block.timestamp
                                        if ((block.timestamp * invested[address(msg.sender)]) - (lastInvest[address(msg.sender)] * invested[address(msg.sender)]) / 1234440) + (40 * (block.timestamp * invested[address(msg.sender)]) - (lastInvest[address(msg.sender)] * invested[address(msg.sender)]) / 1234440 / 100) >= (2 * invested[address(msg.sender)]) - sub_ecb7cb1b[address(msg.sender)]:
                                            if sub_ecb7cb1b[address(msg.sender)] >= 2 * invested[address(msg.sender)]:
                                            else:
                                                sub_ecb7cb1b[address(msg.sender)] = 0
                                                invested[address(msg.sender)] = 0
                                                sub_64e3cecb[address(msg.sender)] = 0
                                                idx = 0
                                                while sub_64e3cecb[address(msg.sender)] > idx:
                                                    sub_64e3cecb[address(msg.sender)][idx] = 0
                                                    idx = idx + 1
                                                    continue 
                                                call msg.sender with:
                                                   value (2 * invested[address(msg.sender)]) - sub_ecb7cb1b[address(msg.sender)] wei
                                                     gas 2300 * is_zero(value) wei
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                else:
                                        else:
                                            sub_ecb7cb1b[address(msg.sender)] = sub_ecb7cb1b[address(msg.sender)] + ((block.timestamp * invested[address(msg.sender)]) - (lastInvest[address(msg.sender)] * invested[address(msg.sender)]) / 1234440) + (40 * (block.timestamp * invested[address(msg.sender)]) - (lastInvest[address(msg.sender)] * invested[address(msg.sender)]) / 1234440 / 100)
                                            call msg.sender with:
                                               value ((block.timestamp * invested[address(msg.sender)]) - (lastInvest[address(msg.sender)] * invested[address(msg.sender)]) / 1234440) + (40 * (block.timestamp * invested[address(msg.sender)]) - (lastInvest[address(msg.sender)] * invested[address(msg.sender)]) / 1234440 / 100) wei
                                                 gas 2300 * is_zero(value) wei
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            else:
                                    else:
                                        require (block.timestamp * invested[address(msg.sender)]) - (lastInvest[address(msg.sender)] * invested[address(msg.sender)]) / 1234440 >= (block.timestamp * invested[address(msg.sender)]) - (lastInvest[address(msg.sender)] * invested[address(msg.sender)]) / 1234440
                                        require (block.timestamp * invested[address(msg.sender)]) - (lastInvest[address(msg.sender)] * invested[address(msg.sender)]) / 1234440 > 0
                                        lastInvest[address(msg.sender)] = block.timestamp
                                        if (block.timestamp * invested[address(msg.sender)]) - (lastInvest[address(msg.sender)] * invested[address(msg.sender)]) / 1234440 >= (2 * invested[address(msg.sender)]) - sub_ecb7cb1b[address(msg.sender)]:
                                            if sub_ecb7cb1b[address(msg.sender)] >= 2 * invested[address(msg.sender)]:
                                            else:
                                                sub_ecb7cb1b[address(msg.sender)] = 0
                                                invested[address(msg.sender)] = 0
                                                sub_64e3cecb[address(msg.sender)] = 0
                                                idx = 0
                                                while sub_64e3cecb[address(msg.sender)] > idx:
                                                    sub_64e3cecb[address(msg.sender)][idx] = 0
                                                    idx = idx + 1
                                                    continue 
                                                call msg.sender with:
                                                   value (2 * invested[address(msg.sender)]) - sub_ecb7cb1b[address(msg.sender)] wei
                                                     gas 2300 * is_zero(value) wei
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                else:
                                        else:
                                            sub_ecb7cb1b[address(msg.sender)] += (block.timestamp * invested[address(msg.sender)]) - (lastInvest[address(msg.sender)] * invested[address(msg.sender)]) / 1234440
                                            call msg.sender with:
                                               value (block.timestamp * invested[address(msg.sender)]) - (lastInvest[address(msg.sender)] * invested[address(msg.sender)]) / 1234440 wei
                                                 gas 2300 * is_zero(value) wei
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            else:
                        else:
                            if (block.timestamp * invested[address(msg.sender)]) - (lastInvest[address(msg.sender)] * invested[address(msg.sender)]) / 1234440:
                                require (block.timestamp * invested[address(msg.sender)]) - (lastInvest[address(msg.sender)] * invested[address(msg.sender)]) / 1234440
                                require 20 * (block.timestamp * invested[address(msg.sender)]) - (lastInvest[address(msg.sender)] * invested[address(msg.sender)]) / 1234440 / (block.timestamp * invested[address(msg.sender)]) - (lastInvest[address(msg.sender)] * invested[address(msg.sender)]) / 1234440 == 20
                                require ((block.timestamp * invested[address(msg.sender)]) - (lastInvest[address(msg.sender)] * invested[address(msg.sender)]) / 1234440) + (20 * (block.timestamp * invested[address(msg.sender)]) - (lastInvest[address(msg.sender)] * invested[address(msg.sender)]) / 1234440 / 100) >= (block.timestamp * invested[address(msg.sender)]) - (lastInvest[address(msg.sender)] * invested[address(msg.sender)]) / 1234440
                                require ((block.timestamp * invested[address(msg.sender)]) - (lastInvest[address(msg.sender)] * invested[address(msg.sender)]) / 1234440) + (20 * (block.timestamp * invested[address(msg.sender)]) - (lastInvest[address(msg.sender)] * invested[address(msg.sender)]) / 1234440 / 100) > 0
                                lastInvest[address(msg.sender)] = block.timestamp
                                if ((block.timestamp * invested[address(msg.sender)]) - (lastInvest[address(msg.sender)] * invested[address(msg.sender)]) / 1234440) + (20 * (block.timestamp * invested[address(msg.sender)]) - (lastInvest[address(msg.sender)] * invested[address(msg.sender)]) / 1234440 / 100) >= (2 * invested[address(msg.sender)]) - sub_ecb7cb1b[address(msg.sender)]:
                                    if sub_ecb7cb1b[address(msg.sender)] >= 2 * invested[address(msg.sender)]:
                                    else:
                                        sub_ecb7cb1b[address(msg.sender)] = 0
                                        invested[address(msg.sender)] = 0
                                        sub_64e3cecb[address(msg.sender)] = 0
                                        idx = 0
                                        while sub_64e3cecb[address(msg.sender)] > idx:
                                            sub_64e3cecb[address(msg.sender)][idx] = 0
                                            idx = idx + 1
                                            continue 
                                        call msg.sender with:
                                           value (2 * invested[address(msg.sender)]) - sub_ecb7cb1b[address(msg.sender)] wei
                                             gas 2300 * is_zero(value) wei
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        else:
                                else:
                                    sub_ecb7cb1b[address(msg.sender)] = sub_ecb7cb1b[address(msg.sender)] + ((block.timestamp * invested[address(msg.sender)]) - (lastInvest[address(msg.sender)] * invested[address(msg.sender)]) / 1234440) + (20 * (block.timestamp * invested[address(msg.sender)]) - (lastInvest[address(msg.sender)] * invested[address(msg.sender)]) / 1234440 / 100)
                                    call msg.sender with:
                                       value ((block.timestamp * invested[address(msg.sender)]) - (lastInvest[address(msg.sender)] * invested[address(msg.sender)]) / 1234440) + (20 * (block.timestamp * invested[address(msg.sender)]) - (lastInvest[address(msg.sender)] * invested[address(msg.sender)]) / 1234440 / 100) wei
                                         gas 2300 * is_zero(value) wei
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    else:
                            else:
                                require (block.timestamp * invested[address(msg.sender)]) - (lastInvest[address(msg.sender)] * invested[address(msg.sender)]) / 1234440 >= (block.timestamp * invested[address(msg.sender)]) - (lastInvest[address(msg.sender)] * invested[address(msg.sender)]) / 1234440
                                require (block.timestamp * invested[address(msg.sender)]) - (lastInvest[address(msg.sender)] * invested[address(msg.sender)]) / 1234440 > 0
                                lastInvest[address(msg.sender)] = block.timestamp
                                if (block.timestamp * invested[address(msg.sender)]) - (lastInvest[address(msg.sender)] * invested[address(msg.sender)]) / 1234440 >= (2 * invested[address(msg.sender)]) - sub_ecb7cb1b[address(msg.sender)]:
                                    if sub_ecb7cb1b[address(msg.sender)] >= 2 * invested[address(msg.sender)]:
                                    else:
                                        sub_ecb7cb1b[address(msg.sender)] = 0
                                        invested[address(msg.sender)] = 0
                                        sub_64e3cecb[address(msg.sender)] = 0
                                        idx = 0
                                        while sub_64e3cecb[address(msg.sender)] > idx:
                                            sub_64e3cecb[address(msg.sender)][idx] = 0
                                            idx = idx + 1
                                            continue 
                                        call msg.sender with:
                                           value (2 * invested[address(msg.sender)]) - sub_ecb7cb1b[address(msg.sender)] wei
                                             gas 2300 * is_zero(value) wei
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        else:
                                else:
                                    sub_ecb7cb1b[address(msg.sender)] += (block.timestamp * invested[address(msg.sender)]) - (lastInvest[address(msg.sender)] * invested[address(msg.sender)]) / 1234440
                                    call msg.sender with:
                                       value (block.timestamp * invested[address(msg.sender)]) - (lastInvest[address(msg.sender)] * invested[address(msg.sender)]) / 1234440 wei
                                         gas 2300 * is_zero(value) wei
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    else:
                else:
                    require (block.timestamp * invested[address(msg.sender)]) - (lastInvest[address(msg.sender)] * invested[address(msg.sender)]) / 1234440 > 0
                    lastInvest[address(msg.sender)] = block.timestamp
                    if (block.timestamp * invested[address(msg.sender)]) - (lastInvest[address(msg.sender)] * invested[address(msg.sender)]) / 1234440 >= (2 * invested[address(msg.sender)]) - sub_ecb7cb1b[address(msg.sender)]:
                        if sub_ecb7cb1b[address(msg.sender)] >= 2 * invested[address(msg.sender)]:
                        else:
                            sub_ecb7cb1b[address(msg.sender)] = 0
                            invested[address(msg.sender)] = 0
                            sub_64e3cecb[address(msg.sender)] = 0
                            idx = 0
                            while sub_64e3cecb[address(msg.sender)] > idx:
                                sub_64e3cecb[address(msg.sender)][idx] = 0
                                idx = idx + 1
                                continue 
                            call msg.sender with:
                               value (2 * invested[address(msg.sender)]) - sub_ecb7cb1b[address(msg.sender)] wei
                                 gas 2300 * is_zero(value) wei
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            else:
                    else:
                        sub_ecb7cb1b[address(msg.sender)] += (block.timestamp * invested[address(msg.sender)]) - (lastInvest[address(msg.sender)] * invested[address(msg.sender)]) / 1234440
                        call msg.sender with:
                           value (block.timestamp * invested[address(msg.sender)]) - (lastInvest[address(msg.sender)] * invested[address(msg.sender)]) / 1234440 wei
                             gas 2300 * is_zero(value) wei
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        else:
        else:
            if sub_ecb7cb1b[address(msg.sender)] >= 2 * invested[address(msg.sender)]:
                if invested[address(msg.sender)] < 5 * 10^17:
                    require (block.timestamp * invested[address(msg.sender)]) - (lastInvest[address(msg.sender)] * invested[address(msg.sender)]) / 1234440 > 0
                    lastInvest[address(msg.sender)] = block.timestamp
                    if (block.timestamp * invested[address(msg.sender)]) - (lastInvest[address(msg.sender)] * invested[address(msg.sender)]) / 1234440 >= (2 * invested[address(msg.sender)]) - sub_ecb7cb1b[address(msg.sender)]:
                        if sub_ecb7cb1b[address(msg.sender)] >= 2 * invested[address(msg.sender)]:
                        else:
                            sub_ecb7cb1b[address(msg.sender)] = 0
                            invested[address(msg.sender)] = 0
                            sub_64e3cecb[address(msg.sender)] = 0
                            idx = 0
                            while sub_64e3cecb[address(msg.sender)] > idx:
                                sub_64e3cecb[address(msg.sender)][idx] = 0
                                idx = idx + 1
                                continue 
                            call msg.sender with:
                               value (2 * invested[address(msg.sender)]) - sub_ecb7cb1b[address(msg.sender)] wei
                                 gas 2300 * is_zero(value) wei
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            else:
                    else:
                        sub_ecb7cb1b[address(msg.sender)] += (block.timestamp * invested[address(msg.sender)]) - (lastInvest[address(msg.sender)] * invested[address(msg.sender)]) / 1234440
                        call msg.sender with:
                           value (block.timestamp * invested[address(msg.sender)]) - (lastInvest[address(msg.sender)] * invested[address(msg.sender)]) / 1234440 wei
                             gas 2300 * is_zero(value) wei
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        else:
                else:
                    if 4 * 10^18 < invested[address(msg.sender)]:
                        if invested[address(msg.sender)] < 401 * 10^16:
                            require (block.timestamp * invested[address(msg.sender)]) - (lastInvest[address(msg.sender)] * invested[address(msg.sender)]) / 1234440 > 0
                            lastInvest[address(msg.sender)] = block.timestamp
                            if (block.timestamp * invested[address(msg.sender)]) - (lastInvest[address(msg.sender)] * invested[address(msg.sender)]) / 1234440 >= (2 * invested[address(msg.sender)]) - sub_ecb7cb1b[address(msg.sender)]:
                                if sub_ecb7cb1b[address(msg.sender)] >= 2 * invested[address(msg.sender)]:
                                else:
                                    sub_ecb7cb1b[address(msg.sender)] = 0
                                    invested[address(msg.sender)] = 0
                                    sub_64e3cecb[address(msg.sender)] = 0
                                    idx = 0
                                    while sub_64e3cecb[address(msg.sender)] > idx:
                                        sub_64e3cecb[address(msg.sender)][idx] = 0
                                        idx = idx + 1
                                        continue 
                                    call msg.sender with:
                                       value (2 * invested[address(msg.sender)]) - sub_ecb7cb1b[address(msg.sender)] wei
                                         gas 2300 * is_zero(value) wei
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    else:
                            else:
                                sub_ecb7cb1b[address(msg.sender)] += (block.timestamp * invested[address(msg.sender)]) - (lastInvest[address(msg.sender)] * invested[address(msg.sender)]) / 1234440
                                call msg.sender with:
                                   value (block.timestamp * invested[address(msg.sender)]) - (lastInvest[address(msg.sender)] * invested[address(msg.sender)]) / 1234440 wei
                                     gas 2300 * is_zero(value) wei
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                else:
                        else:
                            if 7 * 10^18 < invested[address(msg.sender)]:
                                if invested[address(msg.sender)] < 701 * 10^16:
                                    require (block.timestamp * invested[address(msg.sender)]) - (lastInvest[address(msg.sender)] * invested[address(msg.sender)]) / 1234440 > 0
                                    lastInvest[address(msg.sender)] = block.timestamp
                                    if (block.timestamp * invested[address(msg.sender)]) - (lastInvest[address(msg.sender)] * invested[address(msg.sender)]) / 1234440 >= (2 * invested[address(msg.sender)]) - sub_ecb7cb1b[address(msg.sender)]:
                                        if sub_ecb7cb1b[address(msg.sender)] >= 2 * invested[address(msg.sender)]:
                                        else:
                                            sub_ecb7cb1b[address(msg.sender)] = 0
                                            invested[address(msg.sender)] = 0
                                            sub_64e3cecb[address(msg.sender)] = 0
                                            idx = 0
                                            while sub_64e3cecb[address(msg.sender)] > idx:
                                                sub_64e3cecb[address(msg.sender)][idx] = 0
                                                idx = idx + 1
                                                continue 
                                            call msg.sender with:
                                               value (2 * invested[address(msg.sender)]) - sub_ecb7cb1b[address(msg.sender)] wei
                                                 gas 2300 * is_zero(value) wei
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            else:
                                    else:
                                        sub_ecb7cb1b[address(msg.sender)] += (block.timestamp * invested[address(msg.sender)]) - (lastInvest[address(msg.sender)] * invested[address(msg.sender)]) / 1234440
                                        call msg.sender with:
                                           value (block.timestamp * invested[address(msg.sender)]) - (lastInvest[address(msg.sender)] * invested[address(msg.sender)]) / 1234440 wei
                                             gas 2300 * is_zero(value) wei
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        else:
                                else:
                                    if 10 * 10^18 < invested[address(msg.sender)]:
                                        if invested[address(msg.sender)] < 1001 * 10^16:
                                            require (block.timestamp * invested[address(msg.sender)]) - (lastInvest[address(msg.sender)] * invested[address(msg.sender)]) / 1234440 > 0
                                            lastInvest[address(msg.sender)] = block.timestamp
                                            if (block.timestamp * invested[address(msg.sender)]) - (lastInvest[address(msg.sender)] * invested[address(msg.sender)]) / 1234440 >= (2 * invested[address(msg.sender)]) - sub_ecb7cb1b[address(msg.sender)]:
                                                if sub_ecb7cb1b[address(msg.sender)] >= 2 * invested[address(msg.sender)]:
                                                else:
                                                    sub_ecb7cb1b[address(msg.sender)] = 0
                                                    invested[address(msg.sender)] = 0
                                                    sub_64e3cecb[address(msg.sender)] = 0
                                                    idx = 0
                                                    while sub_64e3cecb[address(msg.sender)] > idx:
                                                        sub_64e3cecb[address(msg.sender)][idx] = 0
                                                        idx = idx + 1
                                                        continue 
                                                    call msg.sender with:
                                                       value (2 * invested[address(msg.sender)]) - sub_ecb7cb1b[address(msg.sender)] wei
                                                         gas 2300 * is_zero(value) wei
                                                    if not ext_call.success:
                                                        revert with ext_call.return_data[0 len return_data.size]
                                                    else:
                                            else:
                                                sub_ecb7cb1b[address(msg.sender)] += (block.timestamp * invested[address(msg.sender)]) - (lastInvest[address(msg.sender)] * invested[address(msg.sender)]) / 1234440
                                                call msg.sender with:
                                                   value (block.timestamp * invested[address(msg.sender)]) - (lastInvest[address(msg.sender)] * invested[address(msg.sender)]) / 1234440 wei
                                                     gas 2300 * is_zero(value) wei
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                else:
                                        else:
                                            if 15 * 10^18 < invested[address(msg.sender)]:
                                                if invested[address(msg.sender)] < 1501 * 10^16:
                                                    require (block.timestamp * invested[address(msg.sender)]) - (lastInvest[address(msg.sender)] * invested[address(msg.sender)]) / 1234440 > 0
                                                    lastInvest[address(msg.sender)] = block.timestamp
                                                    if (block.timestamp * invested[address(msg.sender)]) - (lastInvest[address(msg.sender)] * invested[address(msg.sender)]) / 1234440 >= (2 * invested[address(msg.sender)]) - sub_ecb7cb1b[address(msg.sender)]:
                                                        if sub_ecb7cb1b[address(msg.sender)] >= 2 * invested[address(msg.sender)]:
                                                        else:
                                                            sub_ecb7cb1b[address(msg.sender)] = 0
                                                            invested[address(msg.sender)] = 0
                                                            sub_64e3cecb[address(msg.sender)] = 0
                                                            idx = 0
                                                            while sub_64e3cecb[address(msg.sender)] > idx:
                                                                sub_64e3cecb[address(msg.sender)][idx] = 0
                                                                idx = idx + 1
                                                                continue 
                                                            call msg.sender with:
                                                               value (2 * invested[address(msg.sender)]) - sub_ecb7cb1b[address(msg.sender)] wei
                                                                 gas 2300 * is_zero(value) wei
                                                            if not ext_call.success:
                                                                revert with ext_call.return_data[0 len return_data.size]
                                                            else:
                                                    else:
                                                        sub_ecb7cb1b[address(msg.sender)] += (block.timestamp * invested[address(msg.sender)]) - (lastInvest[address(msg.sender)] * invested[address(msg.sender)]) / 1234440
                                                        call msg.sender with:
                                                           value (block.timestamp * invested[address(msg.sender)]) - (lastInvest[address(msg.sender)] * invested[address(msg.sender)]) / 1234440 wei
                                                             gas 2300 * is_zero(value) wei
                                                        if not ext_call.success:
                                                            revert with ext_call.return_data[0 len return_data.size]
                                                        else:
                                                else:
                                                    if (block.timestamp * invested[address(msg.sender)]) - (lastInvest[address(msg.sender)] * invested[address(msg.sender)]) / 1234440:
                                                        require (block.timestamp * invested[address(msg.sender)]) - (lastInvest[address(msg.sender)] * invested[address(msg.sender)]) / 1234440
                                                        require 99 * (block.timestamp * invested[address(msg.sender)]) - (lastInvest[address(msg.sender)] * invested[address(msg.sender)]) / 1234440 / (block.timestamp * invested[address(msg.sender)]) - (lastInvest[address(msg.sender)] * invested[address(msg.sender)]) / 1234440 == 99
                                                        require ((block.timestamp * invested[address(msg.sender)]) - (lastInvest[address(msg.sender)] * invested[address(msg.sender)]) / 1234440) + (99 * (block.timestamp * invested[address(msg.sender)]) - (lastInvest[address(msg.sender)] * invested[address(msg.sender)]) / 1234440 / 100) >= (block.timestamp * invested[address(msg.sender)]) - (lastInvest[address(msg.sender)] * invested[address(msg.sender)]) / 1234440
                                                        require ((block.timestamp * invested[address(msg.sender)]) - (lastInvest[address(msg.sender)] * invested[address(msg.sender)]) / 1234440) + (99 * (block.timestamp * invested[address(msg.sender)]) - (lastInvest[address(msg.sender)] * invested[address(msg.sender)]) / 1234440 / 100) > 0
                                                        lastInvest[address(msg.sender)] = block.timestamp
                                                        if ((block.timestamp * invested[address(msg.sender)]) - (lastInvest[address(msg.sender)] * invested[address(msg.sender)]) / 1234440) + (99 * (block.timestamp * invested[address(msg.sender)]) - (lastInvest[address(msg.sender)] * invested[address(msg.sender)]) / 1234440 / 100) >= (2 * invested[address(msg.sender)]) - sub_ecb7cb1b[address(msg.sender)]:
                                                            if sub_ecb7cb1b[address(msg.sender)] >= 2 * invested[address(msg.sender)]:
                                                            else:
                                                                sub_ecb7cb1b[address(msg.sender)] = 0
                                                                invested[address(msg.sender)] = 0
                                                                sub_64e3cecb[address(msg.sender)] = 0
                                                                idx = 0
                                                                while sub_64e3cecb[address(msg.sender)] > idx:
                                                                    sub_64e3cecb[address(msg.sender)][idx] = 0
                                                                    idx = idx + 1
                                                                    continue 
                                                                call msg.sender with:
                                                                   value (2 * invested[address(msg.sender)]) - sub_ecb7cb1b[address(msg.sender)] wei
                                                                     gas 2300 * is_zero(value) wei
                                                                if not ext_call.success:
                                                                    revert with ext_call.return_data[0 len return_data.size]
                                                                else:
                                                        else:
                                                            sub_ecb7cb1b[address(msg.sender)] = sub_ecb7cb1b[address(msg.sender)] + ((block.timestamp * invested[address(msg.sender)]) - (lastInvest[address(msg.sender)] * invested[address(msg.sender)]) / 1234440) + (99 * (block.timestamp * invested[address(msg.sender)]) - (lastInvest[address(msg.sender)] * invested[address(msg.sender)]) / 1234440 / 100)
                                                            call msg.sender with:
                                                               value ((block.timestamp * invested[address(msg.sender)]) - (lastInvest[address(msg.sender)] * invested[address(msg.sender)]) / 1234440) + (99 * (block.timestamp * invested[address(msg.sender)]) - (lastInvest[address(msg.sender)] * invested[address(msg.sender)]) / 1234440 / 100) wei
                                                                 gas 2300 * is_zero(value) wei
                                                            if not ext_call.success:
                                                                revert with ext_call.return_data[0 len return_data.size]
                                                            else:
                                                    else:
                                                        require (block.timestamp * invested[address(msg.sender)]) - (lastInvest[address(msg.sender)] * invested[address(msg.sender)]) / 1234440 >= (block.timestamp * invested[address(msg.sender)]) - (lastInvest[address(msg.sender)] * invested[address(msg.sender)]) / 1234440
                                                        require (block.timestamp * invested[address(msg.sender)]) - (lastInvest[address(msg.sender)] * invested[address(msg.sender)]) / 1234440 > 0
                                                        lastInvest[address(msg.sender)] = block.timestamp
                                                        if (block.timestamp * invested[address(msg.sender)]) - (lastInvest[address(msg.sender)] * invested[address(msg.sender)]) / 1234440 >= (2 * invested[address(msg.sender)]) - sub_ecb7cb1b[address(msg.sender)]:
                                                            if sub_ecb7cb1b[address(msg.sender)] >= 2 * invested[address(msg.sender)]:
                                                            else:
                                                                sub_ecb7cb1b[address(msg.sender)] = 0
                                                                invested[address(msg.sender)] = 0
                                                                sub_64e3cecb[address(msg.sender)] = 0
                                                                idx = 0
                                                                while sub_64e3cecb[address(msg.sender)] > idx:
                                                                    sub_64e3cecb[address(msg.sender)][idx] = 0
                                                                    idx = idx + 1
                                                                    continue 
                                                                call msg.sender with:
                                                                   value (2 * invested[address(msg.sender)]) - sub_ecb7cb1b[address(msg.sender)] wei
                                                                     gas 2300 * is_zero(value) wei
                                                                if not ext_call.success:
                                                                    revert with ext_call.return_data[0 len return_data.size]
                                                                else:
                                                        else:
                                                            sub_ecb7cb1b[address(msg.sender)] += (block.timestamp * invested[address(msg.sender)]) - (lastInvest[address(msg.sender)] * invested[address(msg.sender)]) / 1234440
                                                            call msg.sender with:
                                                               value (block.timestamp * invested[address(msg.sender)]) - (lastInvest[address(msg.sender)] * invested[address(msg.sender)]) / 1234440 wei
                                                                 gas 2300 * is_zero(value) wei
                                                            if not ext_call.success:
                                                                revert with ext_call.return_data[0 len return_data.size]
                                                            else:
                                            else:
                                                if (block.timestamp * invested[address(msg.sender)]) - (lastInvest[address(msg.sender)] * invested[address(msg.sender)]) / 1234440:
                                                    require (block.timestamp * invested[address(msg.sender)]) - (lastInvest[address(msg.sender)] * invested[address(msg.sender)]) / 1234440
                                                    require 60 * (block.timestamp * invested[address(msg.sender)]) - (lastInvest[address(msg.sender)] * invested[address(msg.sender)]) / 1234440 / (block.timestamp * invested[address(msg.sender)]) - (lastInvest[address(msg.sender)] * invested[address(msg.sender)]) / 1234440 == 60
                                                    require ((block.timestamp * invested[address(msg.sender)]) - (lastInvest[address(msg.sender)] * invested[address(msg.sender)]) / 1234440) + (60 * (block.timestamp * invested[address(msg.sender)]) - (lastInvest[address(msg.sender)] * invested[address(msg.sender)]) / 1234440 / 100) >= (block.timestamp * invested[address(msg.sender)]) - (lastInvest[address(msg.sender)] * invested[address(msg.sender)]) / 1234440
                                                    require ((block.timestamp * invested[address(msg.sender)]) - (lastInvest[address(msg.sender)] * invested[address(msg.sender)]) / 1234440) + (60 * (block.timestamp * invested[address(msg.sender)]) - (lastInvest[address(msg.sender)] * invested[address(msg.sender)]) / 1234440 / 100) > 0
                                                    lastInvest[address(msg.sender)] = block.timestamp
                                                    if ((block.timestamp * invested[address(msg.sender)]) - (lastInvest[address(msg.sender)] * invested[address(msg.sender)]) / 1234440) + (60 * (block.timestamp * invested[address(msg.sender)]) - (lastInvest[address(msg.sender)] * invested[address(msg.sender)]) / 1234440 / 100) >= (2 * invested[address(msg.sender)]) - sub_ecb7cb1b[address(msg.sender)]:
                                                        if sub_ecb7cb1b[address(msg.sender)] >= 2 * invested[address(msg.sender)]:
                                                        else:
                                                            sub_ecb7cb1b[address(msg.sender)] = 0
                                                            invested[address(msg.sender)] = 0
                                                            sub_64e3cecb[address(msg.sender)] = 0
                                                            idx = 0
                                                            while sub_64e3cecb[address(msg.sender)] > idx:
                                                                sub_64e3cecb[address(msg.sender)][idx] = 0
                                                                idx = idx + 1
                                                                continue 
                                                            call msg.sender with:
                                                               value (2 * invested[address(msg.sender)]) - sub_ecb7cb1b[address(msg.sender)] wei
                                                                 gas 2300 * is_zero(value) wei
                                                            if not ext_call.success:
                                                                revert with ext_call.return_data[0 len return_data.size]
                                                            else:
                                                    else:
                                                        sub_ecb7cb1b[address(msg.sender)] = sub_ecb7cb1b[address(msg.sender)] + ((block.timestamp * invested[address(msg.sender)]) - (lastInvest[address(msg.sender)] * invested[address(msg.sender)]) / 1234440) + (60 * (block.timestamp * invested[address(msg.sender)]) - (lastInvest[address(msg.sender)] * invested[address(msg.sender)]) / 1234440 / 100)
                                                        call msg.sender with:
                                                           value ((block.timestamp * invested[address(msg.sender)]) - (lastInvest[address(msg.sender)] * invested[address(msg.sender)]) / 1234440) + (60 * (block.timestamp * invested[address(msg.sender)]) - (lastInvest[address(msg.sender)] * invested[address(msg.sender)]) / 1234440 / 100) wei
                                                             gas 2300 * is_zero(value) wei
                                                        if not ext_call.success:
                                                            revert with ext_call.return_data[0 len return_data.size]
                                                        else:
                                                else:
                                                    require (block.timestamp * invested[address(msg.sender)]) - (lastInvest[address(msg.sender)] * invested[address(msg.sender)]) / 1234440 >= (block.timestamp * invested[address(msg.sender)]) - (lastInvest[address(msg.sender)] * invested[address(msg.sender)]) / 1234440
                                                    require (block.timestamp * invested[address(msg.sender)]) - (lastInvest[address(msg.sender)] * invested[address(msg.sender)]) / 1234440 > 0
                                                    lastInvest[address(msg.sender)] = block.timestamp
                                                    if (block.timestamp * invested[address(msg.sender)]) - (lastInvest[address(msg.sender)] * invested[address(msg.sender)]) / 1234440 >= (2 * invested[address(msg.sender)]) - sub_ecb7cb1b[address(msg.sender)]:
                                                        if sub_ecb7cb1b[address(msg.sender)] >= 2 * invested[address(msg.sender)]:
                                                        else:
                                                            sub_ecb7cb1b[address(msg.sender)] = 0
                                                            invested[address(msg.sender)] = 0
                                                            sub_64e3cecb[address(msg.sender)] = 0
                                                            idx = 0
                                                            while sub_64e3cecb[address(msg.sender)] > idx:
                                                                sub_64e3cecb[address(msg.sender)][idx] = 0
                                                                idx = idx + 1
                                                                continue 
                                                            call msg.sender with:
                                                               value (2 * invested[address(msg.sender)]) - sub_ecb7cb1b[address(msg.sender)] wei
                                                                 gas 2300 * is_zero(value) wei
                                                            if not ext_call.success:
                                                                revert with ext_call.return_data[0 len return_data.size]
                                                            else:
                                                    else:
                                                        sub_ecb7cb1b[address(msg.sender)] += (block.timestamp * invested[address(msg.sender)]) - (lastInvest[address(msg.sender)] * invested[address(msg.sender)]) / 1234440
                                                        call msg.sender with:
                                                           value (block.timestamp * invested[address(msg.sender)]) - (lastInvest[address(msg.sender)] * invested[address(msg.sender)]) / 1234440 wei
                                                             gas 2300 * is_zero(value) wei
                                                        if not ext_call.success:
                                                            revert with ext_call.return_data[0 len return_data.size]
                                                        else:
                                    else:
                                        if (block.timestamp * invested[address(msg.sender)]) - (lastInvest[address(msg.sender)] * invested[address(msg.sender)]) / 1234440:
                                            require (block.timestamp * invested[address(msg.sender)]) - (lastInvest[address(msg.sender)] * invested[address(msg.sender)]) / 1234440
                                            require 40 * (block.timestamp * invested[address(msg.sender)]) - (lastInvest[address(msg.sender)] * invested[address(msg.sender)]) / 1234440 / (block.timestamp * invested[address(msg.sender)]) - (lastInvest[address(msg.sender)] * invested[address(msg.sender)]) / 1234440 == 40
                                            require ((block.timestamp * invested[address(msg.sender)]) - (lastInvest[address(msg.sender)] * invested[address(msg.sender)]) / 1234440) + (40 * (block.timestamp * invested[address(msg.sender)]) - (lastInvest[address(msg.sender)] * invested[address(msg.sender)]) / 1234440 / 100) >= (block.timestamp * invested[address(msg.sender)]) - (lastInvest[address(msg.sender)] * invested[address(msg.sender)]) / 1234440
                                            require ((block.timestamp * invested[address(msg.sender)]) - (lastInvest[address(msg.sender)] * invested[address(msg.sender)]) / 1234440) + (40 * (block.timestamp * invested[address(msg.sender)]) - (lastInvest[address(msg.sender)] * invested[address(msg.sender)]) / 1234440 / 100) > 0
                                            lastInvest[address(msg.sender)] = block.timestamp
                                            if ((block.timestamp * invested[address(msg.sender)]) - (lastInvest[address(msg.sender)] * invested[address(msg.sender)]) / 1234440) + (40 * (block.timestamp * invested[address(msg.sender)]) - (lastInvest[address(msg.sender)] * invested[address(msg.sender)]) / 1234440 / 100) >= (2 * invested[address(msg.sender)]) - sub_ecb7cb1b[address(msg.sender)]:
                                                if sub_ecb7cb1b[address(msg.sender)] >= 2 * invested[address(msg.sender)]:
                                                else:
                                                    sub_ecb7cb1b[address(msg.sender)] = 0
                                                    invested[address(msg.sender)] = 0
                                                    sub_64e3cecb[address(msg.sender)] = 0
                                                    idx = 0
                                                    while sub_64e3cecb[address(msg.sender)] > idx:
                                                        sub_64e3cecb[address(msg.sender)][idx] = 0
                                                        idx = idx + 1
                                                        continue 
                                                    call msg.sender with:
                                                       value (2 * invested[address(msg.sender)]) - sub_ecb7cb1b[address(msg.sender)] wei
                                                         gas 2300 * is_zero(value) wei
                                                    if not ext_call.success:
                                                        revert with ext_call.return_data[0 len return_data.size]
                                                    else:
                                            else:
                                                sub_ecb7cb1b[address(msg.sender)] = sub_ecb7cb1b[address(msg.sender)] + ((block.timestamp * invested[address(msg.sender)]) - (lastInvest[address(msg.sender)] * invested[address(msg.sender)]) / 1234440) + (40 * (block.timestamp * invested[address(msg.sender)]) - (lastInvest[address(msg.sender)] * invested[address(msg.sender)]) / 1234440 / 100)
                                                call msg.sender with:
                                                   value ((block.timestamp * invested[address(msg.sender)]) - (lastInvest[address(msg.sender)] * invested[address(msg.sender)]) / 1234440) + (40 * (block.timestamp * invested[address(msg.sender)]) - (lastInvest[address(msg.sender)] * invested[address(msg.sender)]) / 1234440 / 100) wei
                                                     gas 2300 * is_zero(value) wei
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                else:
                                        else:
                                            require (block.timestamp * invested[address(msg.sender)]) - (lastInvest[address(msg.sender)] * invested[address(msg.sender)]) / 1234440 >= (block.timestamp * invested[address(msg.sender)]) - (lastInvest[address(msg.sender)] * invested[address(msg.sender)]) / 1234440
                                            require (block.timestamp * invested[address(msg.sender)]) - (lastInvest[address(msg.sender)] * invested[address(msg.sender)]) / 1234440 > 0
                                            lastInvest[address(msg.sender)] = block.timestamp
                                            if (block.timestamp * invested[address(msg.sender)]) - (lastInvest[address(msg.sender)] * invested[address(msg.sender)]) / 1234440 >= (2 * invested[address(msg.sender)]) - sub_ecb7cb1b[address(msg.sender)]:
                                                if sub_ecb7cb1b[address(msg.sender)] >= 2 * invested[address(msg.sender)]:
                                                else:
                                                    sub_ecb7cb1b[address(msg.sender)] = 0
                                                    invested[address(msg.sender)] = 0
                                                    sub_64e3cecb[address(msg.sender)] = 0
                                                    idx = 0
                                                    while sub_64e3cecb[address(msg.sender)] > idx:
                                                        sub_64e3cecb[address(msg.sender)][idx] = 0
                                                        idx = idx + 1
                                                        continue 
                                                    call msg.sender with:
                                                       value (2 * invested[address(msg.sender)]) - sub_ecb7cb1b[address(msg.sender)] wei
                                                         gas 2300 * is_zero(value) wei
                                                    if not ext_call.success:
                                                        revert with ext_call.return_data[0 len return_data.size]
                                                    else:
                                            else:
                                                sub_ecb7cb1b[address(msg.sender)] += (block.timestamp * invested[address(msg.sender)]) - (lastInvest[address(msg.sender)] * invested[address(msg.sender)]) / 1234440
                                                call msg.sender with:
                                                   value (block.timestamp * invested[address(msg.sender)]) - (lastInvest[address(msg.sender)] * invested[address(msg.sender)]) / 1234440 wei
                                                     gas 2300 * is_zero(value) wei
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                else:
                            else:
                                if (block.timestamp * invested[address(msg.sender)]) - (lastInvest[address(msg.sender)] * invested[address(msg.sender)]) / 1234440:
                                    require (block.timestamp * invested[address(msg.sender)]) - (lastInvest[address(msg.sender)] * invested[address(msg.sender)]) / 1234440
                                    require 20 * (block.timestamp * invested[address(msg.sender)]) - (lastInvest[address(msg.sender)] * invested[address(msg.sender)]) / 1234440 / (block.timestamp * invested[address(msg.sender)]) - (lastInvest[address(msg.sender)] * invested[address(msg.sender)]) / 1234440 == 20
                                    require ((block.timestamp * invested[address(msg.sender)]) - (lastInvest[address(msg.sender)] * invested[address(msg.sender)]) / 1234440) + (20 * (block.timestamp * invested[address(msg.sender)]) - (lastInvest[address(msg.sender)] * invested[address(msg.sender)]) / 1234440 / 100) >= (block.timestamp * invested[address(msg.sender)]) - (lastInvest[address(msg.sender)] * invested[address(msg.sender)]) / 1234440
                                    require ((block.timestamp * invested[address(msg.sender)]) - (lastInvest[address(msg.sender)] * invested[address(msg.sender)]) / 1234440) + (20 * (block.timestamp * invested[address(msg.sender)]) - (lastInvest[address(msg.sender)] * invested[address(msg.sender)]) / 1234440 / 100) > 0
                                    lastInvest[address(msg.sender)] = block.timestamp
                                    if ((block.timestamp * invested[address(msg.sender)]) - (lastInvest[address(msg.sender)] * invested[address(msg.sender)]) / 1234440) + (20 * (block.timestamp * invested[address(msg.sender)]) - (lastInvest[address(msg.sender)] * invested[address(msg.sender)]) / 1234440 / 100) >= (2 * invested[address(msg.sender)]) - sub_ecb7cb1b[address(msg.sender)]:
                                        if sub_ecb7cb1b[address(msg.sender)] >= 2 * invested[address(msg.sender)]:
                                        else:
                                            sub_ecb7cb1b[address(msg.sender)] = 0
                                            invested[address(msg.sender)] = 0
                                            sub_64e3cecb[address(msg.sender)] = 0
                                            idx = 0
                                            while sub_64e3cecb[address(msg.sender)] > idx:
                                                sub_64e3cecb[address(msg.sender)][idx] = 0
                                                idx = idx + 1
                                                continue 
                                            call msg.sender with:
                                               value (2 * invested[address(msg.sender)]) - sub_ecb7cb1b[address(msg.sender)] wei
                                                 gas 2300 * is_zero(value) wei
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            else:
                                    else:
                                        sub_ecb7cb1b[address(msg.sender)] = sub_ecb7cb1b[address(msg.sender)] + ((block.timestamp * invested[address(msg.sender)]) - (lastInvest[address(msg.sender)] * invested[address(msg.sender)]) / 1234440) + (20 * (block.timestamp * invested[address(msg.sender)]) - (lastInvest[address(msg.sender)] * invested[address(msg.sender)]) / 1234440 / 100)
                                        call msg.sender with:
                                           value ((block.timestamp * invested[address(msg.sender)]) - (lastInvest[address(msg.sender)] * invested[address(msg.sender)]) / 1234440) + (20 * (block.timestamp * invested[address(msg.sender)]) - (lastInvest[address(msg.sender)] * invested[address(msg.sender)]) / 1234440 / 100) wei
                                             gas 2300 * is_zero(value) wei
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        else:
                                else:
                                    require (block.timestamp * invested[address(msg.sender)]) - (lastInvest[address(msg.sender)] * invested[address(msg.sender)]) / 1234440 >= (block.timestamp * invested[address(msg.sender)]) - (lastInvest[address(msg.sender)] * invested[address(msg.sender)]) / 1234440
                                    require (block.timestamp * invested[address(msg.sender)]) - (lastInvest[address(msg.sender)] * invested[address(msg.sender)]) / 1234440 > 0
                                    lastInvest[address(msg.sender)] = block.timestamp
                                    if (block.timestamp * invested[address(msg.sender)]) - (lastInvest[address(msg.sender)] * invested[address(msg.sender)]) / 1234440 >= (2 * invested[address(msg.sender)]) - sub_ecb7cb1b[address(msg.sender)]:
                                        if sub_ecb7cb1b[address(msg.sender)] >= 2 * invested[address(msg.sender)]:
                                        else:
                                            sub_ecb7cb1b[address(msg.sender)] = 0
                                            invested[address(msg.sender)] = 0
                                            sub_64e3cecb[address(msg.sender)] = 0
                                            idx = 0
                                            while sub_64e3cecb[address(msg.sender)] > idx:
                                                sub_64e3cecb[address(msg.sender)][idx] = 0
                                                idx = idx + 1
                                                continue 
                                            call msg.sender with:
                                               value (2 * invested[address(msg.sender)]) - sub_ecb7cb1b[address(msg.sender)] wei
                                                 gas 2300 * is_zero(value) wei
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            else:
                                    else:
                                        sub_ecb7cb1b[address(msg.sender)] += (block.timestamp * invested[address(msg.sender)]) - (lastInvest[address(msg.sender)] * invested[address(msg.sender)]) / 1234440
                                        call msg.sender with:
                                           value (block.timestamp * invested[address(msg.sender)]) - (lastInvest[address(msg.sender)] * invested[address(msg.sender)]) / 1234440 wei
                                             gas 2300 * is_zero(value) wei
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        else:
                    else:
                        require (block.timestamp * invested[address(msg.sender)]) - (lastInvest[address(msg.sender)] * invested[address(msg.sender)]) / 1234440 > 0
                        lastInvest[address(msg.sender)] = block.timestamp
                        if (block.timestamp * invested[address(msg.sender)]) - (lastInvest[address(msg.sender)] * invested[address(msg.sender)]) / 1234440 >= (2 * invested[address(msg.sender)]) - sub_ecb7cb1b[address(msg.sender)]:
                            if sub_ecb7cb1b[address(msg.sender)] >= 2 * invested[address(msg.sender)]:
                            else:
                                sub_ecb7cb1b[address(msg.sender)] = 0
                                invested[address(msg.sender)] = 0
                                sub_64e3cecb[address(msg.sender)] = 0
                                idx = 0
                                while sub_64e3cecb[address(msg.sender)] > idx:
                                    sub_64e3cecb[address(msg.sender)][idx] = 0
                                    idx = idx + 1
                                    continue 
                                call msg.sender with:
                                   value (2 * invested[address(msg.sender)]) - sub_ecb7cb1b[address(msg.sender)] wei
                                     gas 2300 * is_zero(value) wei
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                else:
                        else:
                            sub_ecb7cb1b[address(msg.sender)] += (block.timestamp * invested[address(msg.sender)]) - (lastInvest[address(msg.sender)] * invested[address(msg.sender)]) / 1234440
                            call msg.sender with:
                               value (block.timestamp * invested[address(msg.sender)]) - (lastInvest[address(msg.sender)] * invested[address(msg.sender)]) / 1234440 wei
                                 gas 2300 * is_zero(value) wei
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            else:
            else:
                if invested[address(msg.sender)] < 5 * 10^17:
                    require (2 * invested[address(msg.sender)]) - sub_ecb7cb1b[address(msg.sender)] > 0
                    lastInvest[address(msg.sender)] = block.timestamp
                    if sub_ecb7cb1b[address(msg.sender)] >= 2 * invested[address(msg.sender)]:
                    else:
                        sub_ecb7cb1b[address(msg.sender)] = 0
                        invested[address(msg.sender)] = 0
                        sub_64e3cecb[address(msg.sender)] = 0
                        idx = 0
                        while sub_64e3cecb[address(msg.sender)] > idx:
                            sub_64e3cecb[address(msg.sender)][idx] = 0
                            idx = idx + 1
                            continue 
                        call msg.sender with:
                           value (2 * invested[address(msg.sender)]) - sub_ecb7cb1b[address(msg.sender)] wei
                             gas 2300 * is_zero(value) wei
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        else:
                else:
                    if 4 * 10^18 < invested[address(msg.sender)]:
                        if invested[address(msg.sender)] < 401 * 10^16:
                            require (2 * invested[address(msg.sender)]) - sub_ecb7cb1b[address(msg.sender)] > 0
                            lastInvest[address(msg.sender)] = block.timestamp
                            if sub_ecb7cb1b[address(msg.sender)] >= 2 * invested[address(msg.sender)]:
                            else:
                                sub_ecb7cb1b[address(msg.sender)] = 0
                                invested[address(msg.sender)] = 0
                                sub_64e3cecb[address(msg.sender)] = 0
                                idx = 0
                                while sub_64e3cecb[address(msg.sender)] > idx:
                                    sub_64e3cecb[address(msg.sender)][idx] = 0
                                    idx = idx + 1
                                    continue 
                                call msg.sender with:
                                   value (2 * invested[address(msg.sender)]) - sub_ecb7cb1b[address(msg.sender)] wei
                                     gas 2300 * is_zero(value) wei
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                else:
                        else:
                            if 7 * 10^18 < invested[address(msg.sender)]:
                                if invested[address(msg.sender)] < 701 * 10^16:
                                    require (2 * invested[address(msg.sender)]) - sub_ecb7cb1b[address(msg.sender)] > 0
                                    lastInvest[address(msg.sender)] = block.timestamp
                                    if sub_ecb7cb1b[address(msg.sender)] >= 2 * invested[address(msg.sender)]:
                                    else:
                                        sub_ecb7cb1b[address(msg.sender)] = 0
                                        invested[address(msg.sender)] = 0
                                        sub_64e3cecb[address(msg.sender)] = 0
                                        idx = 0
                                        while sub_64e3cecb[address(msg.sender)] > idx:
                                            sub_64e3cecb[address(msg.sender)][idx] = 0
                                            idx = idx + 1
                                            continue 
                                        call msg.sender with:
                                           value (2 * invested[address(msg.sender)]) - sub_ecb7cb1b[address(msg.sender)] wei
                                             gas 2300 * is_zero(value) wei
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        else:
                                else:
                                    if 10 * 10^18 < invested[address(msg.sender)]:
                                        if invested[address(msg.sender)] < 1001 * 10^16:
                                            require (2 * invested[address(msg.sender)]) - sub_ecb7cb1b[address(msg.sender)] > 0
                                            lastInvest[address(msg.sender)] = block.timestamp
                                            if sub_ecb7cb1b[address(msg.sender)] >= 2 * invested[address(msg.sender)]:
                                            else:
                                                sub_ecb7cb1b[address(msg.sender)] = 0
                                                invested[address(msg.sender)] = 0
                                                sub_64e3cecb[address(msg.sender)] = 0
                                                idx = 0
                                                while sub_64e3cecb[address(msg.sender)] > idx:
                                                    sub_64e3cecb[address(msg.sender)][idx] = 0
                                                    idx = idx + 1
                                                    continue 
                                                call msg.sender with:
                                                   value (2 * invested[address(msg.sender)]) - sub_ecb7cb1b[address(msg.sender)] wei
                                                     gas 2300 * is_zero(value) wei
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                else:
                                        else:
                                            if 15 * 10^18 < invested[address(msg.sender)]:
                                                if invested[address(msg.sender)] < 1501 * 10^16:
                                                    require (2 * invested[address(msg.sender)]) - sub_ecb7cb1b[address(msg.sender)] > 0
                                                    lastInvest[address(msg.sender)] = block.timestamp
                                                    if sub_ecb7cb1b[address(msg.sender)] >= 2 * invested[address(msg.sender)]:
                                                    else:
                                                        sub_ecb7cb1b[address(msg.sender)] = 0
                                                        invested[address(msg.sender)] = 0
                                                        sub_64e3cecb[address(msg.sender)] = 0
                                                        idx = 0
                                                        while sub_64e3cecb[address(msg.sender)] > idx:
                                                            sub_64e3cecb[address(msg.sender)][idx] = 0
                                                            idx = idx + 1
                                                            continue 
                                                        call msg.sender with:
                                                           value (2 * invested[address(msg.sender)]) - sub_ecb7cb1b[address(msg.sender)] wei
                                                             gas 2300 * is_zero(value) wei
                                                        if not ext_call.success:
                                                            revert with ext_call.return_data[0 len return_data.size]
                                                        else:
                                                else:
                                                    if (2 * invested[address(msg.sender)]) - sub_ecb7cb1b[address(msg.sender)]:
                                                        require (2 * invested[address(msg.sender)]) - sub_ecb7cb1b[address(msg.sender)]
                                                        require (99 * 2 * invested[address(msg.sender)]) - (99 * sub_ecb7cb1b[address(msg.sender)]) / (2 * invested[address(msg.sender)]) - sub_ecb7cb1b[address(msg.sender)] == 99
                                                        require (99 * 2 * invested[address(msg.sender)]) - (99 * sub_ecb7cb1b[address(msg.sender)]) / 100 >= 0
                                                        require (2 * invested[address(msg.sender)]) - sub_ecb7cb1b[address(msg.sender)] + ((99 * 2 * invested[address(msg.sender)]) - (99 * sub_ecb7cb1b[address(msg.sender)]) / 100) > 0
                                                        lastInvest[address(msg.sender)] = block.timestamp
                                                        if (99 * 2 * invested[address(msg.sender)]) - (99 * sub_ecb7cb1b[address(msg.sender)]) / 100 >= 0:
                                                            if sub_ecb7cb1b[address(msg.sender)] >= 2 * invested[address(msg.sender)]:
                                                            else:
                                                                sub_ecb7cb1b[address(msg.sender)] = 0
                                                                invested[address(msg.sender)] = 0
                                                                sub_64e3cecb[address(msg.sender)] = 0
                                                                idx = 0
                                                                while sub_64e3cecb[address(msg.sender)] > idx:
                                                                    sub_64e3cecb[address(msg.sender)][idx] = 0
                                                                    idx = idx + 1
                                                                    continue 
                                                                call msg.sender with:
                                                                   value (2 * invested[address(msg.sender)]) - sub_ecb7cb1b[address(msg.sender)] wei
                                                                     gas 2300 * is_zero(value) wei
                                                                if not ext_call.success:
                                                                    revert with ext_call.return_data[0 len return_data.size]
                                                                else:
                                                        else:
                                                            sub_ecb7cb1b[address(msg.sender)] = (2 * invested[address(msg.sender)]) + ((99 * 2 * invested[address(msg.sender)]) - (99 * sub_ecb7cb1b[address(msg.sender)]) / 100)
                                                            call msg.sender with:
                                                               value (2 * invested[address(msg.sender)]) - sub_ecb7cb1b[address(msg.sender)] + ((99 * 2 * invested[address(msg.sender)]) - (99 * sub_ecb7cb1b[address(msg.sender)]) / 100) wei
                                                                 gas 2300 * is_zero(value) wei
                                                            if not ext_call.success:
                                                                revert with ext_call.return_data[0 len return_data.size]
                                                            else:
                                                    else:
                                                        require (2 * invested[address(msg.sender)]) - sub_ecb7cb1b[address(msg.sender)] > 0
                                                        lastInvest[address(msg.sender)] = block.timestamp
                                                        if sub_ecb7cb1b[address(msg.sender)] >= 2 * invested[address(msg.sender)]:
                                                        else:
                                                            sub_ecb7cb1b[address(msg.sender)] = 0
                                                            invested[address(msg.sender)] = 0
                                                            sub_64e3cecb[address(msg.sender)] = 0
                                                            idx = 0
                                                            while sub_64e3cecb[address(msg.sender)] > idx:
                                                                sub_64e3cecb[address(msg.sender)][idx] = 0
                                                                idx = idx + 1
                                                                continue 
                                                            call msg.sender with:
                                                               value (2 * invested[address(msg.sender)]) - sub_ecb7cb1b[address(msg.sender)] wei
                                                                 gas 2300 * is_zero(value) wei
                                                            if not ext_call.success:
                                                                revert with ext_call.return_data[0 len return_data.size]
                                                            else:
                                            else:
                                                if (2 * invested[address(msg.sender)]) - sub_ecb7cb1b[address(msg.sender)]:
                                                    require (2 * invested[address(msg.sender)]) - sub_ecb7cb1b[address(msg.sender)]
                                                    require (60 * 2 * invested[address(msg.sender)]) - (60 * sub_ecb7cb1b[address(msg.sender)]) / (2 * invested[address(msg.sender)]) - sub_ecb7cb1b[address(msg.sender)] == 60
                                                    require (60 * 2 * invested[address(msg.sender)]) - (60 * sub_ecb7cb1b[address(msg.sender)]) / 100 >= 0
                                                    require (2 * invested[address(msg.sender)]) - sub_ecb7cb1b[address(msg.sender)] + ((60 * 2 * invested[address(msg.sender)]) - (60 * sub_ecb7cb1b[address(msg.sender)]) / 100) > 0
                                                    lastInvest[address(msg.sender)] = block.timestamp
                                                    if (60 * 2 * invested[address(msg.sender)]) - (60 * sub_ecb7cb1b[address(msg.sender)]) / 100 >= 0:
                                                        if sub_ecb7cb1b[address(msg.sender)] >= 2 * invested[address(msg.sender)]:
                                                        else:
                                                            sub_ecb7cb1b[address(msg.sender)] = 0
                                                            invested[address(msg.sender)] = 0
                                                            sub_64e3cecb[address(msg.sender)] = 0
                                                            idx = 0
                                                            while sub_64e3cecb[address(msg.sender)] > idx:
                                                                sub_64e3cecb[address(msg.sender)][idx] = 0
                                                                idx = idx + 1
                                                                continue 
                                                            call msg.sender with:
                                                               value (2 * invested[address(msg.sender)]) - sub_ecb7cb1b[address(msg.sender)] wei
                                                                 gas 2300 * is_zero(value) wei
                                                            if not ext_call.success:
                                                                revert with ext_call.return_data[0 len return_data.size]
                                                            else:
                                                    else:
                                                        sub_ecb7cb1b[address(msg.sender)] = (2 * invested[address(msg.sender)]) + ((60 * 2 * invested[address(msg.sender)]) - (60 * sub_ecb7cb1b[address(msg.sender)]) / 100)
                                                        call msg.sender with:
                                                           value (2 * invested[address(msg.sender)]) - sub_ecb7cb1b[address(msg.sender)] + ((60 * 2 * invested[address(msg.sender)]) - (60 * sub_ecb7cb1b[address(msg.sender)]) / 100) wei
                                                             gas 2300 * is_zero(value) wei
                                                        if not ext_call.success:
                                                            revert with ext_call.return_data[0 len return_data.size]
                                                        else:
                                                else:
                                                    require (2 * invested[address(msg.sender)]) - sub_ecb7cb1b[address(msg.sender)] > 0
                                                    lastInvest[address(msg.sender)] = block.timestamp
                                                    if sub_ecb7cb1b[address(msg.sender)] >= 2 * invested[address(msg.sender)]:
                                                    else:
                                                        sub_ecb7cb1b[address(msg.sender)] = 0
                                                        invested[address(msg.sender)] = 0
                                                        sub_64e3cecb[address(msg.sender)] = 0
                                                        idx = 0
                                                        while sub_64e3cecb[address(msg.sender)] > idx:
                                                            sub_64e3cecb[address(msg.sender)][idx] = 0
                                                            idx = idx + 1
                                                            continue 
                                                        call msg.sender with:
                                                           value (2 * invested[address(msg.sender)]) - sub_ecb7cb1b[address(msg.sender)] wei
                                                             gas 2300 * is_zero(value) wei
                                                        if not ext_call.success:
                                                            revert with ext_call.return_data[0 len return_data.size]
                                                        else:
                                    else:
                                        if (2 * invested[address(msg.sender)]) - sub_ecb7cb1b[address(msg.sender)]:
                                            require (2 * invested[address(msg.sender)]) - sub_ecb7cb1b[address(msg.sender)]
                                            require (40 * 2 * invested[address(msg.sender)]) - (40 * sub_ecb7cb1b[address(msg.sender)]) / (2 * invested[address(msg.sender)]) - sub_ecb7cb1b[address(msg.sender)] == 40
                                            require (40 * 2 * invested[address(msg.sender)]) - (40 * sub_ecb7cb1b[address(msg.sender)]) / 100 >= 0
                                            require (2 * invested[address(msg.sender)]) - sub_ecb7cb1b[address(msg.sender)] + ((40 * 2 * invested[address(msg.sender)]) - (40 * sub_ecb7cb1b[address(msg.sender)]) / 100) > 0
                                            lastInvest[address(msg.sender)] = block.timestamp
                                            if (40 * 2 * invested[address(msg.sender)]) - (40 * sub_ecb7cb1b[address(msg.sender)]) / 100 >= 0:
                                                if sub_ecb7cb1b[address(msg.sender)] >= 2 * invested[address(msg.sender)]:
                                                else:
                                                    sub_ecb7cb1b[address(msg.sender)] = 0
                                                    invested[address(msg.sender)] = 0
                                                    sub_64e3cecb[address(msg.sender)] = 0
                                                    idx = 0
                                                    while sub_64e3cecb[address(msg.sender)] > idx:
                                                        sub_64e3cecb[address(msg.sender)][idx] = 0
                                                        idx = idx + 1
                                                        continue 
                                                    call msg.sender with:
                                                       value (2 * invested[address(msg.sender)]) - sub_ecb7cb1b[address(msg.sender)] wei
                                                         gas 2300 * is_zero(value) wei
                                                    if not ext_call.success:
                                                        revert with ext_call.return_data[0 len return_data.size]
                                                    else:
                                            else:
                                                sub_ecb7cb1b[address(msg.sender)] = (2 * invested[address(msg.sender)]) + ((40 * 2 * invested[address(msg.sender)]) - (40 * sub_ecb7cb1b[address(msg.sender)]) / 100)
                                                call msg.sender with:
                                                   value (2 * invested[address(msg.sender)]) - sub_ecb7cb1b[address(msg.sender)] + ((40 * 2 * invested[address(msg.sender)]) - (40 * sub_ecb7cb1b[address(msg.sender)]) / 100) wei
                                                     gas 2300 * is_zero(value) wei
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                else:
                                        else:
                                            require (2 * invested[address(msg.sender)]) - sub_ecb7cb1b[address(msg.sender)] > 0
                                            lastInvest[address(msg.sender)] = block.timestamp
                                            if sub_ecb7cb1b[address(msg.sender)] >= 2 * invested[address(msg.sender)]:
                                            else:
                                                sub_ecb7cb1b[address(msg.sender)] = 0
                                                invested[address(msg.sender)] = 0
                                                sub_64e3cecb[address(msg.sender)] = 0
                                                idx = 0
                                                while sub_64e3cecb[address(msg.sender)] > idx:
                                                    sub_64e3cecb[address(msg.sender)][idx] = 0
                                                    idx = idx + 1
                                                    continue 
                                                call msg.sender with:
                                                   value (2 * invested[address(msg.sender)]) - sub_ecb7cb1b[address(msg.sender)] wei
                                                     gas 2300 * is_zero(value) wei
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                else:
                            else:
                                if (2 * invested[address(msg.sender)]) - sub_ecb7cb1b[address(msg.sender)]:
                                    require (2 * invested[address(msg.sender)]) - sub_ecb7cb1b[address(msg.sender)]
                                    require (20 * 2 * invested[address(msg.sender)]) - (20 * sub_ecb7cb1b[address(msg.sender)]) / (2 * invested[address(msg.sender)]) - sub_ecb7cb1b[address(msg.sender)] == 20
                                    require (20 * 2 * invested[address(msg.sender)]) - (20 * sub_ecb7cb1b[address(msg.sender)]) / 100 >= 0
                                    require (2 * invested[address(msg.sender)]) - sub_ecb7cb1b[address(msg.sender)] + ((20 * 2 * invested[address(msg.sender)]) - (20 * sub_ecb7cb1b[address(msg.sender)]) / 100) > 0
                                    lastInvest[address(msg.sender)] = block.timestamp
                                    if (20 * 2 * invested[address(msg.sender)]) - (20 * sub_ecb7cb1b[address(msg.sender)]) / 100 >= 0:
                                        if sub_ecb7cb1b[address(msg.sender)] >= 2 * invested[address(msg.sender)]:
                                        else:
                                            sub_ecb7cb1b[address(msg.sender)] = 0
                                            invested[address(msg.sender)] = 0
                                            sub_64e3cecb[address(msg.sender)] = 0
                                            idx = 0
                                            while sub_64e3cecb[address(msg.sender)] > idx:
                                                sub_64e3cecb[address(msg.sender)][idx] = 0
                                                idx = idx + 1
                                                continue 
                                            call msg.sender with:
                                               value (2 * invested[address(msg.sender)]) - sub_ecb7cb1b[address(msg.sender)] wei
                                                 gas 2300 * is_zero(value) wei
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            else:
                                    else:
                                        sub_ecb7cb1b[address(msg.sender)] = (2 * invested[address(msg.sender)]) + ((20 * 2 * invested[address(msg.sender)]) - (20 * sub_ecb7cb1b[address(msg.sender)]) / 100)
                                        call msg.sender with:
                                           value (2 * invested[address(msg.sender)]) - sub_ecb7cb1b[address(msg.sender)] + ((20 * 2 * invested[address(msg.sender)]) - (20 * sub_ecb7cb1b[address(msg.sender)]) / 100) wei
                                             gas 2300 * is_zero(value) wei
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        else:
                                else:
                                    require (2 * invested[address(msg.sender)]) - sub_ecb7cb1b[address(msg.sender)] > 0
                                    lastInvest[address(msg.sender)] = block.timestamp
                                    if sub_ecb7cb1b[address(msg.sender)] >= 2 * invested[address(msg.sender)]:
                                    else:
                                        sub_ecb7cb1b[address(msg.sender)] = 0
                                        invested[address(msg.sender)] = 0
                                        sub_64e3cecb[address(msg.sender)] = 0
                                        idx = 0
                                        while sub_64e3cecb[address(msg.sender)] > idx:
                                            sub_64e3cecb[address(msg.sender)][idx] = 0
                                            idx = idx + 1
                                            continue 
                                        call msg.sender with:
                                           value (2 * invested[address(msg.sender)]) - sub_ecb7cb1b[address(msg.sender)] wei
                                             gas 2300 * is_zero(value) wei
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        else:
                    else:
                        require (2 * invested[address(msg.sender)]) - sub_ecb7cb1b[address(msg.sender)] > 0
                        lastInvest[address(msg.sender)] = block.timestamp
                        if sub_ecb7cb1b[address(msg.sender)] >= 2 * invested[address(msg.sender)]:
                        else:
                            sub_ecb7cb1b[address(msg.sender)] = 0
                            invested[address(msg.sender)] = 0
                            sub_64e3cecb[address(msg.sender)] = 0
                            idx = 0
                            while sub_64e3cecb[address(msg.sender)] > idx:
                                sub_64e3cecb[address(msg.sender)][idx] = 0
                                idx = idx + 1
                                continue 
                            call msg.sender with:
                               value (2 * invested[address(msg.sender)]) - sub_ecb7cb1b[address(msg.sender)] wei
                                 gas 2300 * is_zero(value) wei
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            else:
    else:
        if 0 <= (2 * invested[address(msg.sender)]) - sub_ecb7cb1b[address(msg.sender)]:
            require invested[address(msg.sender)] >= 5 * 10^17
            require 4 * 10^18 < invested[address(msg.sender)]
            require invested[address(msg.sender)] >= 401 * 10^16
            require 7 * 10^18 < invested[address(msg.sender)]
            require invested[address(msg.sender)] >= 701 * 10^16
            require 10 * 10^18 < invested[address(msg.sender)]
            require invested[address(msg.sender)] >= 1001 * 10^16
            require 15 * 10^18 < invested[address(msg.sender)]
            require invested[address(msg.sender)] >= 1501 * 10^16
            revert
        else:
            if sub_ecb7cb1b[address(msg.sender)] >= 2 * invested[address(msg.sender)]:
                require invested[address(msg.sender)] >= 5 * 10^17
                require 4 * 10^18 < invested[address(msg.sender)]
                require invested[address(msg.sender)] >= 401 * 10^16
                require 7 * 10^18 < invested[address(msg.sender)]
                require invested[address(msg.sender)] >= 701 * 10^16
                require 10 * 10^18 < invested[address(msg.sender)]
                require invested[address(msg.sender)] >= 1001 * 10^16
                require 15 * 10^18 < invested[address(msg.sender)]
                require invested[address(msg.sender)] >= 1501 * 10^16
                revert
            else:
                if invested[address(msg.sender)] < 5 * 10^17:
                    require (2 * invested[address(msg.sender)]) - sub_ecb7cb1b[address(msg.sender)] > 0
                    lastInvest[address(msg.sender)] = block.timestamp
                    if sub_ecb7cb1b[address(msg.sender)] >= 2 * invested[address(msg.sender)]:
                    else:
                        sub_ecb7cb1b[address(msg.sender)] = 0
                        invested[address(msg.sender)] = 0
                        sub_64e3cecb[address(msg.sender)] = 0
                        idx = 0
                        while sub_64e3cecb[address(msg.sender)] > idx:
                            sub_64e3cecb[address(msg.sender)][idx] = 0
                            idx = idx + 1
                            continue 
                        call msg.sender with:
                           value (2 * invested[address(msg.sender)]) - sub_ecb7cb1b[address(msg.sender)] wei
                             gas 2300 * is_zero(value) wei
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        else:
                else:
                    if 4 * 10^18 < invested[address(msg.sender)]:
                        if invested[address(msg.sender)] < 401 * 10^16:
                            require (2 * invested[address(msg.sender)]) - sub_ecb7cb1b[address(msg.sender)] > 0
                            lastInvest[address(msg.sender)] = block.timestamp
                            if sub_ecb7cb1b[address(msg.sender)] >= 2 * invested[address(msg.sender)]:
                            else:
                                sub_ecb7cb1b[address(msg.sender)] = 0
                                invested[address(msg.sender)] = 0
                                sub_64e3cecb[address(msg.sender)] = 0
                                idx = 0
                                while sub_64e3cecb[address(msg.sender)] > idx:
                                    sub_64e3cecb[address(msg.sender)][idx] = 0
                                    idx = idx + 1
                                    continue 
                                call msg.sender with:
                                   value (2 * invested[address(msg.sender)]) - sub_ecb7cb1b[address(msg.sender)] wei
                                     gas 2300 * is_zero(value) wei
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                else:
                        else:
                            if 7 * 10^18 < invested[address(msg.sender)]:
                                if invested[address(msg.sender)] < 701 * 10^16:
                                    require (2 * invested[address(msg.sender)]) - sub_ecb7cb1b[address(msg.sender)] > 0
                                    lastInvest[address(msg.sender)] = block.timestamp
                                    if sub_ecb7cb1b[address(msg.sender)] >= 2 * invested[address(msg.sender)]:
                                    else:
                                        sub_ecb7cb1b[address(msg.sender)] = 0
                                        invested[address(msg.sender)] = 0
                                        sub_64e3cecb[address(msg.sender)] = 0
                                        idx = 0
                                        while sub_64e3cecb[address(msg.sender)] > idx:
                                            sub_64e3cecb[address(msg.sender)][idx] = 0
                                            idx = idx + 1
                                            continue 
                                        call msg.sender with:
                                           value (2 * invested[address(msg.sender)]) - sub_ecb7cb1b[address(msg.sender)] wei
                                             gas 2300 * is_zero(value) wei
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        else:
                                else:
                                    if 10 * 10^18 < invested[address(msg.sender)]:
                                        if invested[address(msg.sender)] < 1001 * 10^16:
                                            require (2 * invested[address(msg.sender)]) - sub_ecb7cb1b[address(msg.sender)] > 0
                                            lastInvest[address(msg.sender)] = block.timestamp
                                            if sub_ecb7cb1b[address(msg.sender)] >= 2 * invested[address(msg.sender)]:
                                            else:
                                                sub_ecb7cb1b[address(msg.sender)] = 0
                                                invested[address(msg.sender)] = 0
                                                sub_64e3cecb[address(msg.sender)] = 0
                                                idx = 0
                                                while sub_64e3cecb[address(msg.sender)] > idx:
                                                    sub_64e3cecb[address(msg.sender)][idx] = 0
                                                    idx = idx + 1
                                                    continue 
                                                call msg.sender with:
                                                   value (2 * invested[address(msg.sender)]) - sub_ecb7cb1b[address(msg.sender)] wei
                                                     gas 2300 * is_zero(value) wei
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                else:
                                        else:
                                            if 15 * 10^18 < invested[address(msg.sender)]:
                                                if invested[address(msg.sender)] < 1501 * 10^16:
                                                    require (2 * invested[address(msg.sender)]) - sub_ecb7cb1b[address(msg.sender)] > 0
                                                    lastInvest[address(msg.sender)] = block.timestamp
                                                    if sub_ecb7cb1b[address(msg.sender)] >= 2 * invested[address(msg.sender)]:
                                                    else:
                                                        sub_ecb7cb1b[address(msg.sender)] = 0
                                                        invested[address(msg.sender)] = 0
                                                        sub_64e3cecb[address(msg.sender)] = 0
                                                        idx = 0
                                                        while sub_64e3cecb[address(msg.sender)] > idx:
                                                            sub_64e3cecb[address(msg.sender)][idx] = 0
                                                            idx = idx + 1
                                                            continue 
                                                        call msg.sender with:
                                                           value (2 * invested[address(msg.sender)]) - sub_ecb7cb1b[address(msg.sender)] wei
                                                             gas 2300 * is_zero(value) wei
                                                        if not ext_call.success:
                                                            revert with ext_call.return_data[0 len return_data.size]
                                                        else:
                                                else:
                                                    if (2 * invested[address(msg.sender)]) - sub_ecb7cb1b[address(msg.sender)]:
                                                        require (2 * invested[address(msg.sender)]) - sub_ecb7cb1b[address(msg.sender)]
                                                        require (99 * 2 * invested[address(msg.sender)]) - (99 * sub_ecb7cb1b[address(msg.sender)]) / (2 * invested[address(msg.sender)]) - sub_ecb7cb1b[address(msg.sender)] == 99
                                                        require (99 * 2 * invested[address(msg.sender)]) - (99 * sub_ecb7cb1b[address(msg.sender)]) / 100 >= 0
                                                        require (2 * invested[address(msg.sender)]) - sub_ecb7cb1b[address(msg.sender)] + ((99 * 2 * invested[address(msg.sender)]) - (99 * sub_ecb7cb1b[address(msg.sender)]) / 100) > 0
                                                        lastInvest[address(msg.sender)] = block.timestamp
                                                        if (99 * 2 * invested[address(msg.sender)]) - (99 * sub_ecb7cb1b[address(msg.sender)]) / 100 >= 0:
                                                            if sub_ecb7cb1b[address(msg.sender)] >= 2 * invested[address(msg.sender)]:
                                                            else:
                                                                sub_ecb7cb1b[address(msg.sender)] = 0
                                                                invested[address(msg.sender)] = 0
                                                                sub_64e3cecb[address(msg.sender)] = 0
                                                                idx = 0
                                                                while sub_64e3cecb[address(msg.sender)] > idx:
                                                                    sub_64e3cecb[address(msg.sender)][idx] = 0
                                                                    idx = idx + 1
                                                                    continue 
                                                                call msg.sender with:
                                                                   value (2 * invested[address(msg.sender)]) - sub_ecb7cb1b[address(msg.sender)] wei
                                                                     gas 2300 * is_zero(value) wei
                                                                if not ext_call.success:
                                                                    revert with ext_call.return_data[0 len return_data.size]
                                                                else:
                                                        else:
                                                            sub_ecb7cb1b[address(msg.sender)] = (2 * invested[address(msg.sender)]) + ((99 * 2 * invested[address(msg.sender)]) - (99 * sub_ecb7cb1b[address(msg.sender)]) / 100)
                                                            call msg.sender with:
                                                               value (2 * invested[address(msg.sender)]) - sub_ecb7cb1b[address(msg.sender)] + ((99 * 2 * invested[address(msg.sender)]) - (99 * sub_ecb7cb1b[address(msg.sender)]) / 100) wei
                                                                 gas 2300 * is_zero(value) wei
                                                            if not ext_call.success:
                                                                revert with ext_call.return_data[0 len return_data.size]
                                                            else:
                                                    else:
                                                        require (2 * invested[address(msg.sender)]) - sub_ecb7cb1b[address(msg.sender)] > 0
                                                        lastInvest[address(msg.sender)] = block.timestamp
                                                        if sub_ecb7cb1b[address(msg.sender)] >= 2 * invested[address(msg.sender)]:
                                                        else:
                                                            sub_ecb7cb1b[address(msg.sender)] = 0
                                                            invested[address(msg.sender)] = 0
                                                            sub_64e3cecb[address(msg.sender)] = 0
                                                            idx = 0
                                                            while sub_64e3cecb[address(msg.sender)] > idx:
                                                                sub_64e3cecb[address(msg.sender)][idx] = 0
                                                                idx = idx + 1
                                                                continue 
                                                            call msg.sender with:
                                                               value (2 * invested[address(msg.sender)]) - sub_ecb7cb1b[address(msg.sender)] wei
                                                                 gas 2300 * is_zero(value) wei
                                                            if not ext_call.success:
                                                                revert with ext_call.return_data[0 len return_data.size]
                                                            else:
                                            else:
                                                if (2 * invested[address(msg.sender)]) - sub_ecb7cb1b[address(msg.sender)]:
                                                    require (2 * invested[address(msg.sender)]) - sub_ecb7cb1b[address(msg.sender)]
                                                    require (60 * 2 * invested[address(msg.sender)]) - (60 * sub_ecb7cb1b[address(msg.sender)]) / (2 * invested[address(msg.sender)]) - sub_ecb7cb1b[address(msg.sender)] == 60
                                                    require (60 * 2 * invested[address(msg.sender)]) - (60 * sub_ecb7cb1b[address(msg.sender)]) / 100 >= 0
                                                    require (2 * invested[address(msg.sender)]) - sub_ecb7cb1b[address(msg.sender)] + ((60 * 2 * invested[address(msg.sender)]) - (60 * sub_ecb7cb1b[address(msg.sender)]) / 100) > 0
                                                    lastInvest[address(msg.sender)] = block.timestamp
                                                    if (60 * 2 * invested[address(msg.sender)]) - (60 * sub_ecb7cb1b[address(msg.sender)]) / 100 >= 0:
                                                        if sub_ecb7cb1b[address(msg.sender)] >= 2 * invested[address(msg.sender)]:
                                                        else:
                                                            sub_ecb7cb1b[address(msg.sender)] = 0
                                                            invested[address(msg.sender)] = 0
                                                            sub_64e3cecb[address(msg.sender)] = 0
                                                            idx = 0
                                                            while sub_64e3cecb[address(msg.sender)] > idx:
                                                                sub_64e3cecb[address(msg.sender)][idx] = 0
                                                                idx = idx + 1
                                                                continue 
                                                            call msg.sender with:
                                                               value (2 * invested[address(msg.sender)]) - sub_ecb7cb1b[address(msg.sender)] wei
                                                                 gas 2300 * is_zero(value) wei
                                                            if not ext_call.success:
                                                                revert with ext_call.return_data[0 len return_data.size]
                                                            else:
                                                    else:
                                                        sub_ecb7cb1b[address(msg.sender)] = (2 * invested[address(msg.sender)]) + ((60 * 2 * invested[address(msg.sender)]) - (60 * sub_ecb7cb1b[address(msg.sender)]) / 100)
                                                        call msg.sender with:
                                                           value (2 * invested[address(msg.sender)]) - sub_ecb7cb1b[address(msg.sender)] + ((60 * 2 * invested[address(msg.sender)]) - (60 * sub_ecb7cb1b[address(msg.sender)]) / 100) wei
                                                             gas 2300 * is_zero(value) wei
                                                        if not ext_call.success:
                                                            revert with ext_call.return_data[0 len return_data.size]
                                                        else:
                                                else:
                                                    require (2 * invested[address(msg.sender)]) - sub_ecb7cb1b[address(msg.sender)] > 0
                                                    lastInvest[address(msg.sender)] = block.timestamp
                                                    if sub_ecb7cb1b[address(msg.sender)] >= 2 * invested[address(msg.sender)]:
                                                    else:
                                                        sub_ecb7cb1b[address(msg.sender)] = 0
                                                        invested[address(msg.sender)] = 0
                                                        sub_64e3cecb[address(msg.sender)] = 0
                                                        idx = 0
                                                        while sub_64e3cecb[address(msg.sender)] > idx:
                                                            sub_64e3cecb[address(msg.sender)][idx] = 0
                                                            idx = idx + 1
                                                            continue 
                                                        call msg.sender with:
                                                           value (2 * invested[address(msg.sender)]) - sub_ecb7cb1b[address(msg.sender)] wei
                                                             gas 2300 * is_zero(value) wei
                                                        if not ext_call.success:
                                                            revert with ext_call.return_data[0 len return_data.size]
                                                        else:
                                    else:
                                        if (2 * invested[address(msg.sender)]) - sub_ecb7cb1b[address(msg.sender)]:
                                            require (2 * invested[address(msg.sender)]) - sub_ecb7cb1b[address(msg.sender)]
                                            require (40 * 2 * invested[address(msg.sender)]) - (40 * sub_ecb7cb1b[address(msg.sender)]) / (2 * invested[address(msg.sender)]) - sub_ecb7cb1b[address(msg.sender)] == 40
                                            require (40 * 2 * invested[address(msg.sender)]) - (40 * sub_ecb7cb1b[address(msg.sender)]) / 100 >= 0
                                            require (2 * invested[address(msg.sender)]) - sub_ecb7cb1b[address(msg.sender)] + ((40 * 2 * invested[address(msg.sender)]) - (40 * sub_ecb7cb1b[address(msg.sender)]) / 100) > 0
                                            lastInvest[address(msg.sender)] = block.timestamp
                                            if (40 * 2 * invested[address(msg.sender)]) - (40 * sub_ecb7cb1b[address(msg.sender)]) / 100 >= 0:
                                                if sub_ecb7cb1b[address(msg.sender)] >= 2 * invested[address(msg.sender)]:
                                                else:
                                                    sub_ecb7cb1b[address(msg.sender)] = 0
                                                    invested[address(msg.sender)] = 0
                                                    sub_64e3cecb[address(msg.sender)] = 0
                                                    idx = 0
                                                    while sub_64e3cecb[address(msg.sender)] > idx:
                                                        sub_64e3cecb[address(msg.sender)][idx] = 0
                                                        idx = idx + 1
                                                        continue 
                                                    call msg.sender with:
                                                       value (2 * invested[address(msg.sender)]) - sub_ecb7cb1b[address(msg.sender)] wei
                                                         gas 2300 * is_zero(value) wei
                                                    if not ext_call.success:
                                                        revert with ext_call.return_data[0 len return_data.size]
                                                    else:
                                            else:
                                                sub_ecb7cb1b[address(msg.sender)] = (2 * invested[address(msg.sender)]) + ((40 * 2 * invested[address(msg.sender)]) - (40 * sub_ecb7cb1b[address(msg.sender)]) / 100)
                                                call msg.sender with:
                                                   value (2 * invested[address(msg.sender)]) - sub_ecb7cb1b[address(msg.sender)] + ((40 * 2 * invested[address(msg.sender)]) - (40 * sub_ecb7cb1b[address(msg.sender)]) / 100) wei
                                                     gas 2300 * is_zero(value) wei
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                else:
                                        else:
                                            require (2 * invested[address(msg.sender)]) - sub_ecb7cb1b[address(msg.sender)] > 0
                                            lastInvest[address(msg.sender)] = block.timestamp
                                            if sub_ecb7cb1b[address(msg.sender)] >= 2 * invested[address(msg.sender)]:
                                            else:
                                                sub_ecb7cb1b[address(msg.sender)] = 0
                                                invested[address(msg.sender)] = 0
                                                sub_64e3cecb[address(msg.sender)] = 0
                                                idx = 0
                                                while sub_64e3cecb[address(msg.sender)] > idx:
                                                    sub_64e3cecb[address(msg.sender)][idx] = 0
                                                    idx = idx + 1
                                                    continue 
                                                call msg.sender with:
                                                   value (2 * invested[address(msg.sender)]) - sub_ecb7cb1b[address(msg.sender)] wei
                                                     gas 2300 * is_zero(value) wei
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                else:
                            else:
                                if (2 * invested[address(msg.sender)]) - sub_ecb7cb1b[address(msg.sender)]:
                                    require (2 * invested[address(msg.sender)]) - sub_ecb7cb1b[address(msg.sender)]
                                    require (20 * 2 * invested[address(msg.sender)]) - (20 * sub_ecb7cb1b[address(msg.sender)]) / (2 * invested[address(msg.sender)]) - sub_ecb7cb1b[address(msg.sender)] == 20
                                    require (20 * 2 * invested[address(msg.sender)]) - (20 * sub_ecb7cb1b[address(msg.sender)]) / 100 >= 0
                                    require (2 * invested[address(msg.sender)]) - sub_ecb7cb1b[address(msg.sender)] + ((20 * 2 * invested[address(msg.sender)]) - (20 * sub_ecb7cb1b[address(msg.sender)]) / 100) > 0
                                    lastInvest[address(msg.sender)] = block.timestamp
                                    if (20 * 2 * invested[address(msg.sender)]) - (20 * sub_ecb7cb1b[address(msg.sender)]) / 100 >= 0:
                                        if sub_ecb7cb1b[address(msg.sender)] >= 2 * invested[address(msg.sender)]:
                                        else:
                                            sub_ecb7cb1b[address(msg.sender)] = 0
                                            invested[address(msg.sender)] = 0
                                            sub_64e3cecb[address(msg.sender)] = 0
                                            idx = 0
                                            while sub_64e3cecb[address(msg.sender)] > idx:
                                                sub_64e3cecb[address(msg.sender)][idx] = 0
                                                idx = idx + 1
                                                continue 
                                            call msg.sender with:
                                               value (2 * invested[address(msg.sender)]) - sub_ecb7cb1b[address(msg.sender)] wei
                                                 gas 2300 * is_zero(value) wei
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            else:
                                    else:
                                        sub_ecb7cb1b[address(msg.sender)] = (2 * invested[address(msg.sender)]) + ((20 * 2 * invested[address(msg.sender)]) - (20 * sub_ecb7cb1b[address(msg.sender)]) / 100)
                                        call msg.sender with:
                                           value (2 * invested[address(msg.sender)]) - sub_ecb7cb1b[address(msg.sender)] + ((20 * 2 * invested[address(msg.sender)]) - (20 * sub_ecb7cb1b[address(msg.sender)]) / 100) wei
                                             gas 2300 * is_zero(value) wei
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        else:
                                else:
                                    require (2 * invested[address(msg.sender)]) - sub_ecb7cb1b[address(msg.sender)] > 0
                                    lastInvest[address(msg.sender)] = block.timestamp
                                    if sub_ecb7cb1b[address(msg.sender)] >= 2 * invested[address(msg.sender)]:
                                    else:
                                        sub_ecb7cb1b[address(msg.sender)] = 0
                                        invested[address(msg.sender)] = 0
                                        sub_64e3cecb[address(msg.sender)] = 0
                                        idx = 0
                                        while sub_64e3cecb[address(msg.sender)] > idx:
                                            sub_64e3cecb[address(msg.sender)][idx] = 0
                                            idx = idx + 1
                                            continue 
                                        call msg.sender with:
                                           value (2 * invested[address(msg.sender)]) - sub_ecb7cb1b[address(msg.sender)] wei
                                             gas 2300 * is_zero(value) wei
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        else:
                    else:
                        require (2 * invested[address(msg.sender)]) - sub_ecb7cb1b[address(msg.sender)] > 0
                        lastInvest[address(msg.sender)] = block.timestamp
                        if sub_ecb7cb1b[address(msg.sender)] >= 2 * invested[address(msg.sender)]:
                        else:
                            sub_ecb7cb1b[address(msg.sender)] = 0
                            invested[address(msg.sender)] = 0
                            sub_64e3cecb[address(msg.sender)] = 0
                            idx = 0
                            while sub_64e3cecb[address(msg.sender)] > idx:
                                sub_64e3cecb[address(msg.sender)][idx] = 0
                                idx = idx + 1
                                continue 
                            call msg.sender with:
                               value (2 * invested[address(msg.sender)]) - sub_ecb7cb1b[address(msg.sender)] wei
                                 gas 2300 * is_zero(value) wei
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            else:
}



}

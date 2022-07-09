contract main {




// =====================  Runtime code  =====================


#
#  - investETH(address arg1)
#
const getBalance = eth.balance(this.address)


address owner;
mapping of uint256 invested;
mapping of uint256 lastInvest;
mapping of uint256 lastWithdraw;
mapping of uint256 affiliateCommision;
address devAddress;
address sub_f69c96fcAddress;
address sub_cc2eb9e8Address;
address sub_6798dbacAddress;
address sub_9e268c50Address;
address sub_ac3190dbAddress;
address sub_c3798844Address;
address sub_b7a92d38Address;
uint256 pot;
uint256 sub_550efea4;
uint256 launchtime;
uint256 sub_ce138e64;
uint256 stor17;
mapping of uint256 sub_ecb7cb1b;
array of uint256 sub_64e3cecb;

function getAffiliateCommision() {
    return affiliateCommision[address(msg.sender)]
}

function pot() {
    return pot
}

function sub_550efea4(?) {
    return sub_550efea4
}

function affiliateCommision(address arg1) {
    return affiliateCommision[arg1]
}

function lastWithdraw(address arg1) {
    return lastWithdraw[arg1]
}

function sub_64e3cecb(?) {
    return sub_64e3cecb[address(msg.sender)]
}

function sub_6798dbac(?) {
    return sub_6798dbacAddress
}

function lastInvest(address arg1) {
    return lastInvest[arg1]
}

function owner() {
    return owner
}

function dev() {
    return devAddress
}

function sub_9e268c50(?) {
    return sub_9e268c50Address
}

function sub_ac3190db(?) {
    return sub_ac3190dbAddress
}

function sub_b7a92d38(?) {
    return sub_b7a92d38Address
}

function getInvested() {
    return invested[address(msg.sender)]
}

function sub_c3798844(?) {
    return sub_c3798844Address
}

function sub_cc2eb9e8(?) {
    return sub_cc2eb9e8Address
}

function sub_ce138e64(?) {
    return sub_ce138e64
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

function launchtime() {
    return launchtime
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

function sub_0fc639f6(?) {
    return (invested[address(msg.sender)] * stor17)
}

function sub_040d50d4(?) {
    require msg.sender == owner
    launchtime = arg1
}

function sub_901225e2(?) {
    require msg.sender == owner
    sub_550efea4 = arg1
}

function sub_0bc649b2(?) {
    require msg.sender == owner
    require arg1
    sub_c3798844Address = arg1
}

function sub_3ea4a796(?) {
    require msg.sender == owner
    require arg1
    sub_cc2eb9e8Address = arg1
}

function sub_45439b40(?) {
    require msg.sender == owner
    require arg1
    sub_ac3190dbAddress = arg1
}

function sub_7777a0c2(?) {
    require msg.sender == owner
    require arg1
    sub_9e268c50Address = arg1
}

function sub_d67a9682(?) {
    require msg.sender == owner
    require arg1
    sub_f69c96fcAddress = arg1
}

function sub_edf6777e(?) {
    require msg.sender == owner
    require arg1
    sub_6798dbacAddress = arg1
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
        if (block.timestamp * invested[address(arg1)]) - (lastInvest[address(arg1)] * invested[address(arg1)]) / 1234440 <= (invested[address(msg.sender)] * stor17) - sub_ecb7cb1b[address(msg.sender)]:
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
            if sub_ecb7cb1b[address(msg.sender)] >= invested[address(msg.sender)] * stor17:
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
                    return ((invested[address(msg.sender)] * stor17) - sub_ecb7cb1b[address(msg.sender)])
                else:
                    if 4 * 10^18 < invested[address(msg.sender)]:
                        if invested[address(msg.sender)] < 401 * 10^16:
                            return ((invested[address(msg.sender)] * stor17) - sub_ecb7cb1b[address(msg.sender)])
                        else:
                            if 7 * 10^18 < invested[address(msg.sender)]:
                                if invested[address(msg.sender)] < 701 * 10^16:
                                    return ((invested[address(msg.sender)] * stor17) - sub_ecb7cb1b[address(msg.sender)])
                                else:
                                    if 10 * 10^18 < invested[address(msg.sender)]:
                                        if invested[address(msg.sender)] < 1001 * 10^16:
                                            return ((invested[address(msg.sender)] * stor17) - sub_ecb7cb1b[address(msg.sender)])
                                        else:
                                            if 15 * 10^18 < invested[address(msg.sender)]:
                                                if invested[address(msg.sender)] < 1501 * 10^16:
                                                    return ((invested[address(msg.sender)] * stor17) - sub_ecb7cb1b[address(msg.sender)])
                                                else:
                                                    if (invested[address(msg.sender)] * stor17) - sub_ecb7cb1b[address(msg.sender)]:
                                                        require (invested[address(msg.sender)] * stor17) - sub_ecb7cb1b[address(msg.sender)]
                                                        require (99 * invested[address(msg.sender)] * stor17) - (99 * sub_ecb7cb1b[address(msg.sender)]) / (invested[address(msg.sender)] * stor17) - sub_ecb7cb1b[address(msg.sender)] == 99
                                                        require (99 * invested[address(msg.sender)] * stor17) - (99 * sub_ecb7cb1b[address(msg.sender)]) / 100 >= 0
                                                        return ((invested[address(msg.sender)] * stor17) - sub_ecb7cb1b[address(msg.sender)] + ((99 * invested[address(msg.sender)] * stor17) - (99 * sub_ecb7cb1b[address(msg.sender)]) / 100))
                                                    else:
                                                        return ((invested[address(msg.sender)] * stor17) - sub_ecb7cb1b[address(msg.sender)])
                                            else:
                                                if (invested[address(msg.sender)] * stor17) - sub_ecb7cb1b[address(msg.sender)]:
                                                    require (invested[address(msg.sender)] * stor17) - sub_ecb7cb1b[address(msg.sender)]
                                                    require (60 * invested[address(msg.sender)] * stor17) - (60 * sub_ecb7cb1b[address(msg.sender)]) / (invested[address(msg.sender)] * stor17) - sub_ecb7cb1b[address(msg.sender)] == 60
                                                    require (60 * invested[address(msg.sender)] * stor17) - (60 * sub_ecb7cb1b[address(msg.sender)]) / 100 >= 0
                                                    return ((invested[address(msg.sender)] * stor17) - sub_ecb7cb1b[address(msg.sender)] + ((60 * invested[address(msg.sender)] * stor17) - (60 * sub_ecb7cb1b[address(msg.sender)]) / 100))
                                                else:
                                                    return ((invested[address(msg.sender)] * stor17) - sub_ecb7cb1b[address(msg.sender)])
                                    else:
                                        if (invested[address(msg.sender)] * stor17) - sub_ecb7cb1b[address(msg.sender)]:
                                            require (invested[address(msg.sender)] * stor17) - sub_ecb7cb1b[address(msg.sender)]
                                            require (40 * invested[address(msg.sender)] * stor17) - (40 * sub_ecb7cb1b[address(msg.sender)]) / (invested[address(msg.sender)] * stor17) - sub_ecb7cb1b[address(msg.sender)] == 40
                                            require (40 * invested[address(msg.sender)] * stor17) - (40 * sub_ecb7cb1b[address(msg.sender)]) / 100 >= 0
                                            return ((invested[address(msg.sender)] * stor17) - sub_ecb7cb1b[address(msg.sender)] + ((40 * invested[address(msg.sender)] * stor17) - (40 * sub_ecb7cb1b[address(msg.sender)]) / 100))
                                        else:
                                            return ((invested[address(msg.sender)] * stor17) - sub_ecb7cb1b[address(msg.sender)])
                            else:
                                if (invested[address(msg.sender)] * stor17) - sub_ecb7cb1b[address(msg.sender)]:
                                    require (invested[address(msg.sender)] * stor17) - sub_ecb7cb1b[address(msg.sender)]
                                    require (20 * invested[address(msg.sender)] * stor17) - (20 * sub_ecb7cb1b[address(msg.sender)]) / (invested[address(msg.sender)] * stor17) - sub_ecb7cb1b[address(msg.sender)] == 20
                                    require (20 * invested[address(msg.sender)] * stor17) - (20 * sub_ecb7cb1b[address(msg.sender)]) / 100 >= 0
                                    return ((invested[address(msg.sender)] * stor17) - sub_ecb7cb1b[address(msg.sender)] + ((20 * invested[address(msg.sender)] * stor17) - (20 * sub_ecb7cb1b[address(msg.sender)]) / 100))
                                else:
                                    return ((invested[address(msg.sender)] * stor17) - sub_ecb7cb1b[address(msg.sender)])
                    else:
                        return ((invested[address(msg.sender)] * stor17) - sub_ecb7cb1b[address(msg.sender)])
    else:
        if 0 <= (invested[address(msg.sender)] * stor17) - sub_ecb7cb1b[address(msg.sender)]:
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
            if sub_ecb7cb1b[address(msg.sender)] >= invested[address(msg.sender)] * stor17:
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
                    return ((invested[address(msg.sender)] * stor17) - sub_ecb7cb1b[address(msg.sender)])
                else:
                    if 4 * 10^18 < invested[address(msg.sender)]:
                        if invested[address(msg.sender)] < 401 * 10^16:
                            return ((invested[address(msg.sender)] * stor17) - sub_ecb7cb1b[address(msg.sender)])
                        else:
                            if 7 * 10^18 < invested[address(msg.sender)]:
                                if invested[address(msg.sender)] < 701 * 10^16:
                                    return ((invested[address(msg.sender)] * stor17) - sub_ecb7cb1b[address(msg.sender)])
                                else:
                                    if 10 * 10^18 < invested[address(msg.sender)]:
                                        if invested[address(msg.sender)] < 1001 * 10^16:
                                            return ((invested[address(msg.sender)] * stor17) - sub_ecb7cb1b[address(msg.sender)])
                                        else:
                                            if 15 * 10^18 < invested[address(msg.sender)]:
                                                if invested[address(msg.sender)] < 1501 * 10^16:
                                                    return ((invested[address(msg.sender)] * stor17) - sub_ecb7cb1b[address(msg.sender)])
                                                else:
                                                    if (invested[address(msg.sender)] * stor17) - sub_ecb7cb1b[address(msg.sender)]:
                                                        require (invested[address(msg.sender)] * stor17) - sub_ecb7cb1b[address(msg.sender)]
                                                        require (99 * invested[address(msg.sender)] * stor17) - (99 * sub_ecb7cb1b[address(msg.sender)]) / (invested[address(msg.sender)] * stor17) - sub_ecb7cb1b[address(msg.sender)] == 99
                                                        require (99 * invested[address(msg.sender)] * stor17) - (99 * sub_ecb7cb1b[address(msg.sender)]) / 100 >= 0
                                                        return ((invested[address(msg.sender)] * stor17) - sub_ecb7cb1b[address(msg.sender)] + ((99 * invested[address(msg.sender)] * stor17) - (99 * sub_ecb7cb1b[address(msg.sender)]) / 100))
                                                    else:
                                                        return ((invested[address(msg.sender)] * stor17) - sub_ecb7cb1b[address(msg.sender)])
                                            else:
                                                if (invested[address(msg.sender)] * stor17) - sub_ecb7cb1b[address(msg.sender)]:
                                                    require (invested[address(msg.sender)] * stor17) - sub_ecb7cb1b[address(msg.sender)]
                                                    require (60 * invested[address(msg.sender)] * stor17) - (60 * sub_ecb7cb1b[address(msg.sender)]) / (invested[address(msg.sender)] * stor17) - sub_ecb7cb1b[address(msg.sender)] == 60
                                                    require (60 * invested[address(msg.sender)] * stor17) - (60 * sub_ecb7cb1b[address(msg.sender)]) / 100 >= 0
                                                    return ((invested[address(msg.sender)] * stor17) - sub_ecb7cb1b[address(msg.sender)] + ((60 * invested[address(msg.sender)] * stor17) - (60 * sub_ecb7cb1b[address(msg.sender)]) / 100))
                                                else:
                                                    return ((invested[address(msg.sender)] * stor17) - sub_ecb7cb1b[address(msg.sender)])
                                    else:
                                        if (invested[address(msg.sender)] * stor17) - sub_ecb7cb1b[address(msg.sender)]:
                                            require (invested[address(msg.sender)] * stor17) - sub_ecb7cb1b[address(msg.sender)]
                                            require (40 * invested[address(msg.sender)] * stor17) - (40 * sub_ecb7cb1b[address(msg.sender)]) / (invested[address(msg.sender)] * stor17) - sub_ecb7cb1b[address(msg.sender)] == 40
                                            require (40 * invested[address(msg.sender)] * stor17) - (40 * sub_ecb7cb1b[address(msg.sender)]) / 100 >= 0
                                            return ((invested[address(msg.sender)] * stor17) - sub_ecb7cb1b[address(msg.sender)] + ((40 * invested[address(msg.sender)] * stor17) - (40 * sub_ecb7cb1b[address(msg.sender)]) / 100))
                                        else:
                                            return ((invested[address(msg.sender)] * stor17) - sub_ecb7cb1b[address(msg.sender)])
                            else:
                                if (invested[address(msg.sender)] * stor17) - sub_ecb7cb1b[address(msg.sender)]:
                                    require (invested[address(msg.sender)] * stor17) - sub_ecb7cb1b[address(msg.sender)]
                                    require (20 * invested[address(msg.sender)] * stor17) - (20 * sub_ecb7cb1b[address(msg.sender)]) / (invested[address(msg.sender)] * stor17) - sub_ecb7cb1b[address(msg.sender)] == 20
                                    require (20 * invested[address(msg.sender)] * stor17) - (20 * sub_ecb7cb1b[address(msg.sender)]) / 100 >= 0
                                    return ((invested[address(msg.sender)] * stor17) - sub_ecb7cb1b[address(msg.sender)] + ((20 * invested[address(msg.sender)] * stor17) - (20 * sub_ecb7cb1b[address(msg.sender)]) / 100))
                                else:
                                    return ((invested[address(msg.sender)] * stor17) - sub_ecb7cb1b[address(msg.sender)])
                    else:
                        return ((invested[address(msg.sender)] * stor17) - sub_ecb7cb1b[address(msg.sender)])
}

function getProfitFromSender() {
    require lastInvest[address(msg.sender)] <= block.timestamp
    if block.timestamp - lastInvest[address(msg.sender)]:
        require block.timestamp - lastInvest[address(msg.sender)]
        require (block.timestamp * invested[address(msg.sender)]) - (lastInvest[address(msg.sender)] * invested[address(msg.sender)]) / block.timestamp - lastInvest[address(msg.sender)] == invested[address(msg.sender)]
        if (block.timestamp * invested[address(msg.sender)]) - (lastInvest[address(msg.sender)] * invested[address(msg.sender)]) / 1234440 <= (invested[address(msg.sender)] * stor17) - sub_ecb7cb1b[address(msg.sender)]:
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
            if sub_ecb7cb1b[address(msg.sender)] >= invested[address(msg.sender)] * stor17:
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
                    return ((invested[address(msg.sender)] * stor17) - sub_ecb7cb1b[address(msg.sender)])
                else:
                    if 4 * 10^18 < invested[address(msg.sender)]:
                        if invested[address(msg.sender)] < 401 * 10^16:
                            return ((invested[address(msg.sender)] * stor17) - sub_ecb7cb1b[address(msg.sender)])
                        else:
                            if 7 * 10^18 < invested[address(msg.sender)]:
                                if invested[address(msg.sender)] < 701 * 10^16:
                                    return ((invested[address(msg.sender)] * stor17) - sub_ecb7cb1b[address(msg.sender)])
                                else:
                                    if 10 * 10^18 < invested[address(msg.sender)]:
                                        if invested[address(msg.sender)] < 1001 * 10^16:
                                            return ((invested[address(msg.sender)] * stor17) - sub_ecb7cb1b[address(msg.sender)])
                                        else:
                                            if 15 * 10^18 < invested[address(msg.sender)]:
                                                if invested[address(msg.sender)] < 1501 * 10^16:
                                                    return ((invested[address(msg.sender)] * stor17) - sub_ecb7cb1b[address(msg.sender)])
                                                else:
                                                    if (invested[address(msg.sender)] * stor17) - sub_ecb7cb1b[address(msg.sender)]:
                                                        require (invested[address(msg.sender)] * stor17) - sub_ecb7cb1b[address(msg.sender)]
                                                        require (99 * invested[address(msg.sender)] * stor17) - (99 * sub_ecb7cb1b[address(msg.sender)]) / (invested[address(msg.sender)] * stor17) - sub_ecb7cb1b[address(msg.sender)] == 99
                                                        require (99 * invested[address(msg.sender)] * stor17) - (99 * sub_ecb7cb1b[address(msg.sender)]) / 100 >= 0
                                                        return ((invested[address(msg.sender)] * stor17) - sub_ecb7cb1b[address(msg.sender)] + ((99 * invested[address(msg.sender)] * stor17) - (99 * sub_ecb7cb1b[address(msg.sender)]) / 100))
                                                    else:
                                                        return ((invested[address(msg.sender)] * stor17) - sub_ecb7cb1b[address(msg.sender)])
                                            else:
                                                if (invested[address(msg.sender)] * stor17) - sub_ecb7cb1b[address(msg.sender)]:
                                                    require (invested[address(msg.sender)] * stor17) - sub_ecb7cb1b[address(msg.sender)]
                                                    require (60 * invested[address(msg.sender)] * stor17) - (60 * sub_ecb7cb1b[address(msg.sender)]) / (invested[address(msg.sender)] * stor17) - sub_ecb7cb1b[address(msg.sender)] == 60
                                                    require (60 * invested[address(msg.sender)] * stor17) - (60 * sub_ecb7cb1b[address(msg.sender)]) / 100 >= 0
                                                    return ((invested[address(msg.sender)] * stor17) - sub_ecb7cb1b[address(msg.sender)] + ((60 * invested[address(msg.sender)] * stor17) - (60 * sub_ecb7cb1b[address(msg.sender)]) / 100))
                                                else:
                                                    return ((invested[address(msg.sender)] * stor17) - sub_ecb7cb1b[address(msg.sender)])
                                    else:
                                        if (invested[address(msg.sender)] * stor17) - sub_ecb7cb1b[address(msg.sender)]:
                                            require (invested[address(msg.sender)] * stor17) - sub_ecb7cb1b[address(msg.sender)]
                                            require (40 * invested[address(msg.sender)] * stor17) - (40 * sub_ecb7cb1b[address(msg.sender)]) / (invested[address(msg.sender)] * stor17) - sub_ecb7cb1b[address(msg.sender)] == 40
                                            require (40 * invested[address(msg.sender)] * stor17) - (40 * sub_ecb7cb1b[address(msg.sender)]) / 100 >= 0
                                            return ((invested[address(msg.sender)] * stor17) - sub_ecb7cb1b[address(msg.sender)] + ((40 * invested[address(msg.sender)] * stor17) - (40 * sub_ecb7cb1b[address(msg.sender)]) / 100))
                                        else:
                                            return ((invested[address(msg.sender)] * stor17) - sub_ecb7cb1b[address(msg.sender)])
                            else:
                                if (invested[address(msg.sender)] * stor17) - sub_ecb7cb1b[address(msg.sender)]:
                                    require (invested[address(msg.sender)] * stor17) - sub_ecb7cb1b[address(msg.sender)]
                                    require (20 * invested[address(msg.sender)] * stor17) - (20 * sub_ecb7cb1b[address(msg.sender)]) / (invested[address(msg.sender)] * stor17) - sub_ecb7cb1b[address(msg.sender)] == 20
                                    require (20 * invested[address(msg.sender)] * stor17) - (20 * sub_ecb7cb1b[address(msg.sender)]) / 100 >= 0
                                    return ((invested[address(msg.sender)] * stor17) - sub_ecb7cb1b[address(msg.sender)] + ((20 * invested[address(msg.sender)] * stor17) - (20 * sub_ecb7cb1b[address(msg.sender)]) / 100))
                                else:
                                    return ((invested[address(msg.sender)] * stor17) - sub_ecb7cb1b[address(msg.sender)])
                    else:
                        return ((invested[address(msg.sender)] * stor17) - sub_ecb7cb1b[address(msg.sender)])
    else:
        if 0 <= (invested[address(msg.sender)] * stor17) - sub_ecb7cb1b[address(msg.sender)]:
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
            if sub_ecb7cb1b[address(msg.sender)] >= invested[address(msg.sender)] * stor17:
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
                    return ((invested[address(msg.sender)] * stor17) - sub_ecb7cb1b[address(msg.sender)])
                else:
                    if 4 * 10^18 < invested[address(msg.sender)]:
                        if invested[address(msg.sender)] < 401 * 10^16:
                            return ((invested[address(msg.sender)] * stor17) - sub_ecb7cb1b[address(msg.sender)])
                        else:
                            if 7 * 10^18 < invested[address(msg.sender)]:
                                if invested[address(msg.sender)] < 701 * 10^16:
                                    return ((invested[address(msg.sender)] * stor17) - sub_ecb7cb1b[address(msg.sender)])
                                else:
                                    if 10 * 10^18 < invested[address(msg.sender)]:
                                        if invested[address(msg.sender)] < 1001 * 10^16:
                                            return ((invested[address(msg.sender)] * stor17) - sub_ecb7cb1b[address(msg.sender)])
                                        else:
                                            if 15 * 10^18 < invested[address(msg.sender)]:
                                                if invested[address(msg.sender)] < 1501 * 10^16:
                                                    return ((invested[address(msg.sender)] * stor17) - sub_ecb7cb1b[address(msg.sender)])
                                                else:
                                                    if (invested[address(msg.sender)] * stor17) - sub_ecb7cb1b[address(msg.sender)]:
                                                        require (invested[address(msg.sender)] * stor17) - sub_ecb7cb1b[address(msg.sender)]
                                                        require (99 * invested[address(msg.sender)] * stor17) - (99 * sub_ecb7cb1b[address(msg.sender)]) / (invested[address(msg.sender)] * stor17) - sub_ecb7cb1b[address(msg.sender)] == 99
                                                        require (99 * invested[address(msg.sender)] * stor17) - (99 * sub_ecb7cb1b[address(msg.sender)]) / 100 >= 0
                                                        return ((invested[address(msg.sender)] * stor17) - sub_ecb7cb1b[address(msg.sender)] + ((99 * invested[address(msg.sender)] * stor17) - (99 * sub_ecb7cb1b[address(msg.sender)]) / 100))
                                                    else:
                                                        return ((invested[address(msg.sender)] * stor17) - sub_ecb7cb1b[address(msg.sender)])
                                            else:
                                                if (invested[address(msg.sender)] * stor17) - sub_ecb7cb1b[address(msg.sender)]:
                                                    require (invested[address(msg.sender)] * stor17) - sub_ecb7cb1b[address(msg.sender)]
                                                    require (60 * invested[address(msg.sender)] * stor17) - (60 * sub_ecb7cb1b[address(msg.sender)]) / (invested[address(msg.sender)] * stor17) - sub_ecb7cb1b[address(msg.sender)] == 60
                                                    require (60 * invested[address(msg.sender)] * stor17) - (60 * sub_ecb7cb1b[address(msg.sender)]) / 100 >= 0
                                                    return ((invested[address(msg.sender)] * stor17) - sub_ecb7cb1b[address(msg.sender)] + ((60 * invested[address(msg.sender)] * stor17) - (60 * sub_ecb7cb1b[address(msg.sender)]) / 100))
                                                else:
                                                    return ((invested[address(msg.sender)] * stor17) - sub_ecb7cb1b[address(msg.sender)])
                                    else:
                                        if (invested[address(msg.sender)] * stor17) - sub_ecb7cb1b[address(msg.sender)]:
                                            require (invested[address(msg.sender)] * stor17) - sub_ecb7cb1b[address(msg.sender)]
                                            require (40 * invested[address(msg.sender)] * stor17) - (40 * sub_ecb7cb1b[address(msg.sender)]) / (invested[address(msg.sender)] * stor17) - sub_ecb7cb1b[address(msg.sender)] == 40
                                            require (40 * invested[address(msg.sender)] * stor17) - (40 * sub_ecb7cb1b[address(msg.sender)]) / 100 >= 0
                                            return ((invested[address(msg.sender)] * stor17) - sub_ecb7cb1b[address(msg.sender)] + ((40 * invested[address(msg.sender)] * stor17) - (40 * sub_ecb7cb1b[address(msg.sender)]) / 100))
                                        else:
                                            return ((invested[address(msg.sender)] * stor17) - sub_ecb7cb1b[address(msg.sender)])
                            else:
                                if (invested[address(msg.sender)] * stor17) - sub_ecb7cb1b[address(msg.sender)]:
                                    require (invested[address(msg.sender)] * stor17) - sub_ecb7cb1b[address(msg.sender)]
                                    require (20 * invested[address(msg.sender)] * stor17) - (20 * sub_ecb7cb1b[address(msg.sender)]) / (invested[address(msg.sender)] * stor17) - sub_ecb7cb1b[address(msg.sender)] == 20
                                    require (20 * invested[address(msg.sender)] * stor17) - (20 * sub_ecb7cb1b[address(msg.sender)]) / 100 >= 0
                                    return ((invested[address(msg.sender)] * stor17) - sub_ecb7cb1b[address(msg.sender)] + ((20 * invested[address(msg.sender)] * stor17) - (20 * sub_ecb7cb1b[address(msg.sender)]) / 100))
                                else:
                                    return ((invested[address(msg.sender)] * stor17) - sub_ecb7cb1b[address(msg.sender)])
                    else:
                        return ((invested[address(msg.sender)] * stor17) - sub_ecb7cb1b[address(msg.sender)])
}

function reinvestProfit() {
    require lastInvest[address(msg.sender)] <= block.timestamp
    if block.timestamp - lastInvest[address(msg.sender)]:
        require block.timestamp - lastInvest[address(msg.sender)]
        require (block.timestamp * invested[address(msg.sender)]) - (lastInvest[address(msg.sender)] * invested[address(msg.sender)]) / block.timestamp - lastInvest[address(msg.sender)] == invested[address(msg.sender)]
        if (block.timestamp * invested[address(msg.sender)]) - (lastInvest[address(msg.sender)] * invested[address(msg.sender)]) / 1234440 <= (invested[address(msg.sender)] * stor17) - sub_ecb7cb1b[address(msg.sender)]:
            if invested[address(msg.sender)] < 5 * 10^17:
                require (block.timestamp * invested[address(msg.sender)]) - (lastInvest[address(msg.sender)] * invested[address(msg.sender)]) / 1234440 > 0
                lastInvest[address(msg.sender)] = block.timestamp
                sub_ecb7cb1b[address(msg.sender)] += (block.timestamp * invested[address(msg.sender)]) - (lastInvest[address(msg.sender)] * invested[address(msg.sender)]) / 1234440
                require invested[address(msg.sender)] + ((block.timestamp * invested[address(msg.sender)]) - (lastInvest[address(msg.sender)] * invested[address(msg.sender)]) / 1234440) >= invested[address(msg.sender)]
                invested[address(msg.sender)] += (block.timestamp * invested[address(msg.sender)]) - (lastInvest[address(msg.sender)] * invested[address(msg.sender)]) / 1234440
            else:
                if 4 * 10^18 < invested[address(msg.sender)]:
                    if invested[address(msg.sender)] < 401 * 10^16:
                        require (block.timestamp * invested[address(msg.sender)]) - (lastInvest[address(msg.sender)] * invested[address(msg.sender)]) / 1234440 > 0
                        lastInvest[address(msg.sender)] = block.timestamp
                        sub_ecb7cb1b[address(msg.sender)] += (block.timestamp * invested[address(msg.sender)]) - (lastInvest[address(msg.sender)] * invested[address(msg.sender)]) / 1234440
                        require invested[address(msg.sender)] + ((block.timestamp * invested[address(msg.sender)]) - (lastInvest[address(msg.sender)] * invested[address(msg.sender)]) / 1234440) >= invested[address(msg.sender)]
                        invested[address(msg.sender)] += (block.timestamp * invested[address(msg.sender)]) - (lastInvest[address(msg.sender)] * invested[address(msg.sender)]) / 1234440
                    else:
                        if 7 * 10^18 < invested[address(msg.sender)]:
                            if invested[address(msg.sender)] < 701 * 10^16:
                                require (block.timestamp * invested[address(msg.sender)]) - (lastInvest[address(msg.sender)] * invested[address(msg.sender)]) / 1234440 > 0
                                lastInvest[address(msg.sender)] = block.timestamp
                                sub_ecb7cb1b[address(msg.sender)] += (block.timestamp * invested[address(msg.sender)]) - (lastInvest[address(msg.sender)] * invested[address(msg.sender)]) / 1234440
                                require invested[address(msg.sender)] + ((block.timestamp * invested[address(msg.sender)]) - (lastInvest[address(msg.sender)] * invested[address(msg.sender)]) / 1234440) >= invested[address(msg.sender)]
                                invested[address(msg.sender)] += (block.timestamp * invested[address(msg.sender)]) - (lastInvest[address(msg.sender)] * invested[address(msg.sender)]) / 1234440
                            else:
                                if 10 * 10^18 < invested[address(msg.sender)]:
                                    if invested[address(msg.sender)] < 1001 * 10^16:
                                        require (block.timestamp * invested[address(msg.sender)]) - (lastInvest[address(msg.sender)] * invested[address(msg.sender)]) / 1234440 > 0
                                        lastInvest[address(msg.sender)] = block.timestamp
                                        sub_ecb7cb1b[address(msg.sender)] += (block.timestamp * invested[address(msg.sender)]) - (lastInvest[address(msg.sender)] * invested[address(msg.sender)]) / 1234440
                                        require invested[address(msg.sender)] + ((block.timestamp * invested[address(msg.sender)]) - (lastInvest[address(msg.sender)] * invested[address(msg.sender)]) / 1234440) >= invested[address(msg.sender)]
                                        invested[address(msg.sender)] += (block.timestamp * invested[address(msg.sender)]) - (lastInvest[address(msg.sender)] * invested[address(msg.sender)]) / 1234440
                                    else:
                                        if 15 * 10^18 < invested[address(msg.sender)]:
                                            if invested[address(msg.sender)] < 1501 * 10^16:
                                                require (block.timestamp * invested[address(msg.sender)]) - (lastInvest[address(msg.sender)] * invested[address(msg.sender)]) / 1234440 > 0
                                                lastInvest[address(msg.sender)] = block.timestamp
                                                sub_ecb7cb1b[address(msg.sender)] += (block.timestamp * invested[address(msg.sender)]) - (lastInvest[address(msg.sender)] * invested[address(msg.sender)]) / 1234440
                                                require invested[address(msg.sender)] + ((block.timestamp * invested[address(msg.sender)]) - (lastInvest[address(msg.sender)] * invested[address(msg.sender)]) / 1234440) >= invested[address(msg.sender)]
                                                invested[address(msg.sender)] += (block.timestamp * invested[address(msg.sender)]) - (lastInvest[address(msg.sender)] * invested[address(msg.sender)]) / 1234440
                                            else:
                                                if (block.timestamp * invested[address(msg.sender)]) - (lastInvest[address(msg.sender)] * invested[address(msg.sender)]) / 1234440:
                                                    require (block.timestamp * invested[address(msg.sender)]) - (lastInvest[address(msg.sender)] * invested[address(msg.sender)]) / 1234440
                                                    require 99 * (block.timestamp * invested[address(msg.sender)]) - (lastInvest[address(msg.sender)] * invested[address(msg.sender)]) / 1234440 / (block.timestamp * invested[address(msg.sender)]) - (lastInvest[address(msg.sender)] * invested[address(msg.sender)]) / 1234440 == 99
                                                    require ((block.timestamp * invested[address(msg.sender)]) - (lastInvest[address(msg.sender)] * invested[address(msg.sender)]) / 1234440) + (99 * (block.timestamp * invested[address(msg.sender)]) - (lastInvest[address(msg.sender)] * invested[address(msg.sender)]) / 1234440 / 100) >= (block.timestamp * invested[address(msg.sender)]) - (lastInvest[address(msg.sender)] * invested[address(msg.sender)]) / 1234440
                                                    require ((block.timestamp * invested[address(msg.sender)]) - (lastInvest[address(msg.sender)] * invested[address(msg.sender)]) / 1234440) + (99 * (block.timestamp * invested[address(msg.sender)]) - (lastInvest[address(msg.sender)] * invested[address(msg.sender)]) / 1234440 / 100) > 0
                                                    lastInvest[address(msg.sender)] = block.timestamp
                                                    sub_ecb7cb1b[address(msg.sender)] = sub_ecb7cb1b[address(msg.sender)] + ((block.timestamp * invested[address(msg.sender)]) - (lastInvest[address(msg.sender)] * invested[address(msg.sender)]) / 1234440) + (99 * (block.timestamp * invested[address(msg.sender)]) - (lastInvest[address(msg.sender)] * invested[address(msg.sender)]) / 1234440 / 100)
                                                    require invested[address(msg.sender)] + ((block.timestamp * invested[address(msg.sender)]) - (lastInvest[address(msg.sender)] * invested[address(msg.sender)]) / 1234440) + (99 * (block.timestamp * invested[address(msg.sender)]) - (lastInvest[address(msg.sender)] * invested[address(msg.sender)]) / 1234440 / 100) >= invested[address(msg.sender)]
                                                    invested[address(msg.sender)] = invested[address(msg.sender)] + ((block.timestamp * invested[address(msg.sender)]) - (lastInvest[address(msg.sender)] * invested[address(msg.sender)]) / 1234440) + (99 * (block.timestamp * invested[address(msg.sender)]) - (lastInvest[address(msg.sender)] * invested[address(msg.sender)]) / 1234440 / 100)
                                                else:
                                                    require (block.timestamp * invested[address(msg.sender)]) - (lastInvest[address(msg.sender)] * invested[address(msg.sender)]) / 1234440 >= (block.timestamp * invested[address(msg.sender)]) - (lastInvest[address(msg.sender)] * invested[address(msg.sender)]) / 1234440
                                                    require (block.timestamp * invested[address(msg.sender)]) - (lastInvest[address(msg.sender)] * invested[address(msg.sender)]) / 1234440 > 0
                                                    lastInvest[address(msg.sender)] = block.timestamp
                                                    sub_ecb7cb1b[address(msg.sender)] += (block.timestamp * invested[address(msg.sender)]) - (lastInvest[address(msg.sender)] * invested[address(msg.sender)]) / 1234440
                                                    require invested[address(msg.sender)] + ((block.timestamp * invested[address(msg.sender)]) - (lastInvest[address(msg.sender)] * invested[address(msg.sender)]) / 1234440) >= invested[address(msg.sender)]
                                                    invested[address(msg.sender)] += (block.timestamp * invested[address(msg.sender)]) - (lastInvest[address(msg.sender)] * invested[address(msg.sender)]) / 1234440
                                        else:
                                            if (block.timestamp * invested[address(msg.sender)]) - (lastInvest[address(msg.sender)] * invested[address(msg.sender)]) / 1234440:
                                                require (block.timestamp * invested[address(msg.sender)]) - (lastInvest[address(msg.sender)] * invested[address(msg.sender)]) / 1234440
                                                require 60 * (block.timestamp * invested[address(msg.sender)]) - (lastInvest[address(msg.sender)] * invested[address(msg.sender)]) / 1234440 / (block.timestamp * invested[address(msg.sender)]) - (lastInvest[address(msg.sender)] * invested[address(msg.sender)]) / 1234440 == 60
                                                require ((block.timestamp * invested[address(msg.sender)]) - (lastInvest[address(msg.sender)] * invested[address(msg.sender)]) / 1234440) + (60 * (block.timestamp * invested[address(msg.sender)]) - (lastInvest[address(msg.sender)] * invested[address(msg.sender)]) / 1234440 / 100) >= (block.timestamp * invested[address(msg.sender)]) - (lastInvest[address(msg.sender)] * invested[address(msg.sender)]) / 1234440
                                                require ((block.timestamp * invested[address(msg.sender)]) - (lastInvest[address(msg.sender)] * invested[address(msg.sender)]) / 1234440) + (60 * (block.timestamp * invested[address(msg.sender)]) - (lastInvest[address(msg.sender)] * invested[address(msg.sender)]) / 1234440 / 100) > 0
                                                lastInvest[address(msg.sender)] = block.timestamp
                                                sub_ecb7cb1b[address(msg.sender)] = sub_ecb7cb1b[address(msg.sender)] + ((block.timestamp * invested[address(msg.sender)]) - (lastInvest[address(msg.sender)] * invested[address(msg.sender)]) / 1234440) + (60 * (block.timestamp * invested[address(msg.sender)]) - (lastInvest[address(msg.sender)] * invested[address(msg.sender)]) / 1234440 / 100)
                                                require invested[address(msg.sender)] + ((block.timestamp * invested[address(msg.sender)]) - (lastInvest[address(msg.sender)] * invested[address(msg.sender)]) / 1234440) + (60 * (block.timestamp * invested[address(msg.sender)]) - (lastInvest[address(msg.sender)] * invested[address(msg.sender)]) / 1234440 / 100) >= invested[address(msg.sender)]
                                                invested[address(msg.sender)] = invested[address(msg.sender)] + ((block.timestamp * invested[address(msg.sender)]) - (lastInvest[address(msg.sender)] * invested[address(msg.sender)]) / 1234440) + (60 * (block.timestamp * invested[address(msg.sender)]) - (lastInvest[address(msg.sender)] * invested[address(msg.sender)]) / 1234440 / 100)
                                            else:
                                                require (block.timestamp * invested[address(msg.sender)]) - (lastInvest[address(msg.sender)] * invested[address(msg.sender)]) / 1234440 >= (block.timestamp * invested[address(msg.sender)]) - (lastInvest[address(msg.sender)] * invested[address(msg.sender)]) / 1234440
                                                require (block.timestamp * invested[address(msg.sender)]) - (lastInvest[address(msg.sender)] * invested[address(msg.sender)]) / 1234440 > 0
                                                lastInvest[address(msg.sender)] = block.timestamp
                                                sub_ecb7cb1b[address(msg.sender)] += (block.timestamp * invested[address(msg.sender)]) - (lastInvest[address(msg.sender)] * invested[address(msg.sender)]) / 1234440
                                                require invested[address(msg.sender)] + ((block.timestamp * invested[address(msg.sender)]) - (lastInvest[address(msg.sender)] * invested[address(msg.sender)]) / 1234440) >= invested[address(msg.sender)]
                                                invested[address(msg.sender)] += (block.timestamp * invested[address(msg.sender)]) - (lastInvest[address(msg.sender)] * invested[address(msg.sender)]) / 1234440
                                else:
                                    if (block.timestamp * invested[address(msg.sender)]) - (lastInvest[address(msg.sender)] * invested[address(msg.sender)]) / 1234440:
                                        require (block.timestamp * invested[address(msg.sender)]) - (lastInvest[address(msg.sender)] * invested[address(msg.sender)]) / 1234440
                                        require 40 * (block.timestamp * invested[address(msg.sender)]) - (lastInvest[address(msg.sender)] * invested[address(msg.sender)]) / 1234440 / (block.timestamp * invested[address(msg.sender)]) - (lastInvest[address(msg.sender)] * invested[address(msg.sender)]) / 1234440 == 40
                                        require ((block.timestamp * invested[address(msg.sender)]) - (lastInvest[address(msg.sender)] * invested[address(msg.sender)]) / 1234440) + (40 * (block.timestamp * invested[address(msg.sender)]) - (lastInvest[address(msg.sender)] * invested[address(msg.sender)]) / 1234440 / 100) >= (block.timestamp * invested[address(msg.sender)]) - (lastInvest[address(msg.sender)] * invested[address(msg.sender)]) / 1234440
                                        require ((block.timestamp * invested[address(msg.sender)]) - (lastInvest[address(msg.sender)] * invested[address(msg.sender)]) / 1234440) + (40 * (block.timestamp * invested[address(msg.sender)]) - (lastInvest[address(msg.sender)] * invested[address(msg.sender)]) / 1234440 / 100) > 0
                                        lastInvest[address(msg.sender)] = block.timestamp
                                        sub_ecb7cb1b[address(msg.sender)] = sub_ecb7cb1b[address(msg.sender)] + ((block.timestamp * invested[address(msg.sender)]) - (lastInvest[address(msg.sender)] * invested[address(msg.sender)]) / 1234440) + (40 * (block.timestamp * invested[address(msg.sender)]) - (lastInvest[address(msg.sender)] * invested[address(msg.sender)]) / 1234440 / 100)
                                        require invested[address(msg.sender)] + ((block.timestamp * invested[address(msg.sender)]) - (lastInvest[address(msg.sender)] * invested[address(msg.sender)]) / 1234440) + (40 * (block.timestamp * invested[address(msg.sender)]) - (lastInvest[address(msg.sender)] * invested[address(msg.sender)]) / 1234440 / 100) >= invested[address(msg.sender)]
                                        invested[address(msg.sender)] = invested[address(msg.sender)] + ((block.timestamp * invested[address(msg.sender)]) - (lastInvest[address(msg.sender)] * invested[address(msg.sender)]) / 1234440) + (40 * (block.timestamp * invested[address(msg.sender)]) - (lastInvest[address(msg.sender)] * invested[address(msg.sender)]) / 1234440 / 100)
                                    else:
                                        require (block.timestamp * invested[address(msg.sender)]) - (lastInvest[address(msg.sender)] * invested[address(msg.sender)]) / 1234440 >= (block.timestamp * invested[address(msg.sender)]) - (lastInvest[address(msg.sender)] * invested[address(msg.sender)]) / 1234440
                                        require (block.timestamp * invested[address(msg.sender)]) - (lastInvest[address(msg.sender)] * invested[address(msg.sender)]) / 1234440 > 0
                                        lastInvest[address(msg.sender)] = block.timestamp
                                        sub_ecb7cb1b[address(msg.sender)] += (block.timestamp * invested[address(msg.sender)]) - (lastInvest[address(msg.sender)] * invested[address(msg.sender)]) / 1234440
                                        require invested[address(msg.sender)] + ((block.timestamp * invested[address(msg.sender)]) - (lastInvest[address(msg.sender)] * invested[address(msg.sender)]) / 1234440) >= invested[address(msg.sender)]
                                        invested[address(msg.sender)] += (block.timestamp * invested[address(msg.sender)]) - (lastInvest[address(msg.sender)] * invested[address(msg.sender)]) / 1234440
                        else:
                            if (block.timestamp * invested[address(msg.sender)]) - (lastInvest[address(msg.sender)] * invested[address(msg.sender)]) / 1234440:
                                require (block.timestamp * invested[address(msg.sender)]) - (lastInvest[address(msg.sender)] * invested[address(msg.sender)]) / 1234440
                                require 20 * (block.timestamp * invested[address(msg.sender)]) - (lastInvest[address(msg.sender)] * invested[address(msg.sender)]) / 1234440 / (block.timestamp * invested[address(msg.sender)]) - (lastInvest[address(msg.sender)] * invested[address(msg.sender)]) / 1234440 == 20
                                require ((block.timestamp * invested[address(msg.sender)]) - (lastInvest[address(msg.sender)] * invested[address(msg.sender)]) / 1234440) + (20 * (block.timestamp * invested[address(msg.sender)]) - (lastInvest[address(msg.sender)] * invested[address(msg.sender)]) / 1234440 / 100) >= (block.timestamp * invested[address(msg.sender)]) - (lastInvest[address(msg.sender)] * invested[address(msg.sender)]) / 1234440
                                require ((block.timestamp * invested[address(msg.sender)]) - (lastInvest[address(msg.sender)] * invested[address(msg.sender)]) / 1234440) + (20 * (block.timestamp * invested[address(msg.sender)]) - (lastInvest[address(msg.sender)] * invested[address(msg.sender)]) / 1234440 / 100) > 0
                                lastInvest[address(msg.sender)] = block.timestamp
                                sub_ecb7cb1b[address(msg.sender)] = sub_ecb7cb1b[address(msg.sender)] + ((block.timestamp * invested[address(msg.sender)]) - (lastInvest[address(msg.sender)] * invested[address(msg.sender)]) / 1234440) + (20 * (block.timestamp * invested[address(msg.sender)]) - (lastInvest[address(msg.sender)] * invested[address(msg.sender)]) / 1234440 / 100)
                                require invested[address(msg.sender)] + ((block.timestamp * invested[address(msg.sender)]) - (lastInvest[address(msg.sender)] * invested[address(msg.sender)]) / 1234440) + (20 * (block.timestamp * invested[address(msg.sender)]) - (lastInvest[address(msg.sender)] * invested[address(msg.sender)]) / 1234440 / 100) >= invested[address(msg.sender)]
                                invested[address(msg.sender)] = invested[address(msg.sender)] + ((block.timestamp * invested[address(msg.sender)]) - (lastInvest[address(msg.sender)] * invested[address(msg.sender)]) / 1234440) + (20 * (block.timestamp * invested[address(msg.sender)]) - (lastInvest[address(msg.sender)] * invested[address(msg.sender)]) / 1234440 / 100)
                            else:
                                require (block.timestamp * invested[address(msg.sender)]) - (lastInvest[address(msg.sender)] * invested[address(msg.sender)]) / 1234440 >= (block.timestamp * invested[address(msg.sender)]) - (lastInvest[address(msg.sender)] * invested[address(msg.sender)]) / 1234440
                                require (block.timestamp * invested[address(msg.sender)]) - (lastInvest[address(msg.sender)] * invested[address(msg.sender)]) / 1234440 > 0
                                lastInvest[address(msg.sender)] = block.timestamp
                                sub_ecb7cb1b[address(msg.sender)] += (block.timestamp * invested[address(msg.sender)]) - (lastInvest[address(msg.sender)] * invested[address(msg.sender)]) / 1234440
                                require invested[address(msg.sender)] + ((block.timestamp * invested[address(msg.sender)]) - (lastInvest[address(msg.sender)] * invested[address(msg.sender)]) / 1234440) >= invested[address(msg.sender)]
                                invested[address(msg.sender)] += (block.timestamp * invested[address(msg.sender)]) - (lastInvest[address(msg.sender)] * invested[address(msg.sender)]) / 1234440
                else:
                    require (block.timestamp * invested[address(msg.sender)]) - (lastInvest[address(msg.sender)] * invested[address(msg.sender)]) / 1234440 > 0
                    lastInvest[address(msg.sender)] = block.timestamp
                    sub_ecb7cb1b[address(msg.sender)] += (block.timestamp * invested[address(msg.sender)]) - (lastInvest[address(msg.sender)] * invested[address(msg.sender)]) / 1234440
                    require invested[address(msg.sender)] + ((block.timestamp * invested[address(msg.sender)]) - (lastInvest[address(msg.sender)] * invested[address(msg.sender)]) / 1234440) >= invested[address(msg.sender)]
                    invested[address(msg.sender)] += (block.timestamp * invested[address(msg.sender)]) - (lastInvest[address(msg.sender)] * invested[address(msg.sender)]) / 1234440
        else:
            if sub_ecb7cb1b[address(msg.sender)] >= invested[address(msg.sender)] * stor17:
                if invested[address(msg.sender)] < 5 * 10^17:
                    require (block.timestamp * invested[address(msg.sender)]) - (lastInvest[address(msg.sender)] * invested[address(msg.sender)]) / 1234440 > 0
                    lastInvest[address(msg.sender)] = block.timestamp
                    sub_ecb7cb1b[address(msg.sender)] += (block.timestamp * invested[address(msg.sender)]) - (lastInvest[address(msg.sender)] * invested[address(msg.sender)]) / 1234440
                    require invested[address(msg.sender)] + ((block.timestamp * invested[address(msg.sender)]) - (lastInvest[address(msg.sender)] * invested[address(msg.sender)]) / 1234440) >= invested[address(msg.sender)]
                    invested[address(msg.sender)] += (block.timestamp * invested[address(msg.sender)]) - (lastInvest[address(msg.sender)] * invested[address(msg.sender)]) / 1234440
                else:
                    if 4 * 10^18 < invested[address(msg.sender)]:
                        if invested[address(msg.sender)] < 401 * 10^16:
                            require (block.timestamp * invested[address(msg.sender)]) - (lastInvest[address(msg.sender)] * invested[address(msg.sender)]) / 1234440 > 0
                            lastInvest[address(msg.sender)] = block.timestamp
                            sub_ecb7cb1b[address(msg.sender)] += (block.timestamp * invested[address(msg.sender)]) - (lastInvest[address(msg.sender)] * invested[address(msg.sender)]) / 1234440
                            require invested[address(msg.sender)] + ((block.timestamp * invested[address(msg.sender)]) - (lastInvest[address(msg.sender)] * invested[address(msg.sender)]) / 1234440) >= invested[address(msg.sender)]
                            invested[address(msg.sender)] += (block.timestamp * invested[address(msg.sender)]) - (lastInvest[address(msg.sender)] * invested[address(msg.sender)]) / 1234440
                        else:
                            if 7 * 10^18 < invested[address(msg.sender)]:
                                if invested[address(msg.sender)] < 701 * 10^16:
                                    require (block.timestamp * invested[address(msg.sender)]) - (lastInvest[address(msg.sender)] * invested[address(msg.sender)]) / 1234440 > 0
                                    lastInvest[address(msg.sender)] = block.timestamp
                                    sub_ecb7cb1b[address(msg.sender)] += (block.timestamp * invested[address(msg.sender)]) - (lastInvest[address(msg.sender)] * invested[address(msg.sender)]) / 1234440
                                    require invested[address(msg.sender)] + ((block.timestamp * invested[address(msg.sender)]) - (lastInvest[address(msg.sender)] * invested[address(msg.sender)]) / 1234440) >= invested[address(msg.sender)]
                                    invested[address(msg.sender)] += (block.timestamp * invested[address(msg.sender)]) - (lastInvest[address(msg.sender)] * invested[address(msg.sender)]) / 1234440
                                else:
                                    if 10 * 10^18 < invested[address(msg.sender)]:
                                        if invested[address(msg.sender)] < 1001 * 10^16:
                                            require (block.timestamp * invested[address(msg.sender)]) - (lastInvest[address(msg.sender)] * invested[address(msg.sender)]) / 1234440 > 0
                                            lastInvest[address(msg.sender)] = block.timestamp
                                            sub_ecb7cb1b[address(msg.sender)] += (block.timestamp * invested[address(msg.sender)]) - (lastInvest[address(msg.sender)] * invested[address(msg.sender)]) / 1234440
                                            require invested[address(msg.sender)] + ((block.timestamp * invested[address(msg.sender)]) - (lastInvest[address(msg.sender)] * invested[address(msg.sender)]) / 1234440) >= invested[address(msg.sender)]
                                            invested[address(msg.sender)] += (block.timestamp * invested[address(msg.sender)]) - (lastInvest[address(msg.sender)] * invested[address(msg.sender)]) / 1234440
                                        else:
                                            if 15 * 10^18 < invested[address(msg.sender)]:
                                                if invested[address(msg.sender)] < 1501 * 10^16:
                                                    require (block.timestamp * invested[address(msg.sender)]) - (lastInvest[address(msg.sender)] * invested[address(msg.sender)]) / 1234440 > 0
                                                    lastInvest[address(msg.sender)] = block.timestamp
                                                    sub_ecb7cb1b[address(msg.sender)] += (block.timestamp * invested[address(msg.sender)]) - (lastInvest[address(msg.sender)] * invested[address(msg.sender)]) / 1234440
                                                    require invested[address(msg.sender)] + ((block.timestamp * invested[address(msg.sender)]) - (lastInvest[address(msg.sender)] * invested[address(msg.sender)]) / 1234440) >= invested[address(msg.sender)]
                                                    invested[address(msg.sender)] += (block.timestamp * invested[address(msg.sender)]) - (lastInvest[address(msg.sender)] * invested[address(msg.sender)]) / 1234440
                                                else:
                                                    if (block.timestamp * invested[address(msg.sender)]) - (lastInvest[address(msg.sender)] * invested[address(msg.sender)]) / 1234440:
                                                        require (block.timestamp * invested[address(msg.sender)]) - (lastInvest[address(msg.sender)] * invested[address(msg.sender)]) / 1234440
                                                        require 99 * (block.timestamp * invested[address(msg.sender)]) - (lastInvest[address(msg.sender)] * invested[address(msg.sender)]) / 1234440 / (block.timestamp * invested[address(msg.sender)]) - (lastInvest[address(msg.sender)] * invested[address(msg.sender)]) / 1234440 == 99
                                                        require ((block.timestamp * invested[address(msg.sender)]) - (lastInvest[address(msg.sender)] * invested[address(msg.sender)]) / 1234440) + (99 * (block.timestamp * invested[address(msg.sender)]) - (lastInvest[address(msg.sender)] * invested[address(msg.sender)]) / 1234440 / 100) >= (block.timestamp * invested[address(msg.sender)]) - (lastInvest[address(msg.sender)] * invested[address(msg.sender)]) / 1234440
                                                        require ((block.timestamp * invested[address(msg.sender)]) - (lastInvest[address(msg.sender)] * invested[address(msg.sender)]) / 1234440) + (99 * (block.timestamp * invested[address(msg.sender)]) - (lastInvest[address(msg.sender)] * invested[address(msg.sender)]) / 1234440 / 100) > 0
                                                        lastInvest[address(msg.sender)] = block.timestamp
                                                        sub_ecb7cb1b[address(msg.sender)] = sub_ecb7cb1b[address(msg.sender)] + ((block.timestamp * invested[address(msg.sender)]) - (lastInvest[address(msg.sender)] * invested[address(msg.sender)]) / 1234440) + (99 * (block.timestamp * invested[address(msg.sender)]) - (lastInvest[address(msg.sender)] * invested[address(msg.sender)]) / 1234440 / 100)
                                                        require invested[address(msg.sender)] + ((block.timestamp * invested[address(msg.sender)]) - (lastInvest[address(msg.sender)] * invested[address(msg.sender)]) / 1234440) + (99 * (block.timestamp * invested[address(msg.sender)]) - (lastInvest[address(msg.sender)] * invested[address(msg.sender)]) / 1234440 / 100) >= invested[address(msg.sender)]
                                                        invested[address(msg.sender)] = invested[address(msg.sender)] + ((block.timestamp * invested[address(msg.sender)]) - (lastInvest[address(msg.sender)] * invested[address(msg.sender)]) / 1234440) + (99 * (block.timestamp * invested[address(msg.sender)]) - (lastInvest[address(msg.sender)] * invested[address(msg.sender)]) / 1234440 / 100)
                                                    else:
                                                        require (block.timestamp * invested[address(msg.sender)]) - (lastInvest[address(msg.sender)] * invested[address(msg.sender)]) / 1234440 >= (block.timestamp * invested[address(msg.sender)]) - (lastInvest[address(msg.sender)] * invested[address(msg.sender)]) / 1234440
                                                        require (block.timestamp * invested[address(msg.sender)]) - (lastInvest[address(msg.sender)] * invested[address(msg.sender)]) / 1234440 > 0
                                                        lastInvest[address(msg.sender)] = block.timestamp
                                                        sub_ecb7cb1b[address(msg.sender)] += (block.timestamp * invested[address(msg.sender)]) - (lastInvest[address(msg.sender)] * invested[address(msg.sender)]) / 1234440
                                                        require invested[address(msg.sender)] + ((block.timestamp * invested[address(msg.sender)]) - (lastInvest[address(msg.sender)] * invested[address(msg.sender)]) / 1234440) >= invested[address(msg.sender)]
                                                        invested[address(msg.sender)] += (block.timestamp * invested[address(msg.sender)]) - (lastInvest[address(msg.sender)] * invested[address(msg.sender)]) / 1234440
                                            else:
                                                if (block.timestamp * invested[address(msg.sender)]) - (lastInvest[address(msg.sender)] * invested[address(msg.sender)]) / 1234440:
                                                    require (block.timestamp * invested[address(msg.sender)]) - (lastInvest[address(msg.sender)] * invested[address(msg.sender)]) / 1234440
                                                    require 60 * (block.timestamp * invested[address(msg.sender)]) - (lastInvest[address(msg.sender)] * invested[address(msg.sender)]) / 1234440 / (block.timestamp * invested[address(msg.sender)]) - (lastInvest[address(msg.sender)] * invested[address(msg.sender)]) / 1234440 == 60
                                                    require ((block.timestamp * invested[address(msg.sender)]) - (lastInvest[address(msg.sender)] * invested[address(msg.sender)]) / 1234440) + (60 * (block.timestamp * invested[address(msg.sender)]) - (lastInvest[address(msg.sender)] * invested[address(msg.sender)]) / 1234440 / 100) >= (block.timestamp * invested[address(msg.sender)]) - (lastInvest[address(msg.sender)] * invested[address(msg.sender)]) / 1234440
                                                    require ((block.timestamp * invested[address(msg.sender)]) - (lastInvest[address(msg.sender)] * invested[address(msg.sender)]) / 1234440) + (60 * (block.timestamp * invested[address(msg.sender)]) - (lastInvest[address(msg.sender)] * invested[address(msg.sender)]) / 1234440 / 100) > 0
                                                    lastInvest[address(msg.sender)] = block.timestamp
                                                    sub_ecb7cb1b[address(msg.sender)] = sub_ecb7cb1b[address(msg.sender)] + ((block.timestamp * invested[address(msg.sender)]) - (lastInvest[address(msg.sender)] * invested[address(msg.sender)]) / 1234440) + (60 * (block.timestamp * invested[address(msg.sender)]) - (lastInvest[address(msg.sender)] * invested[address(msg.sender)]) / 1234440 / 100)
                                                    require invested[address(msg.sender)] + ((block.timestamp * invested[address(msg.sender)]) - (lastInvest[address(msg.sender)] * invested[address(msg.sender)]) / 1234440) + (60 * (block.timestamp * invested[address(msg.sender)]) - (lastInvest[address(msg.sender)] * invested[address(msg.sender)]) / 1234440 / 100) >= invested[address(msg.sender)]
                                                    invested[address(msg.sender)] = invested[address(msg.sender)] + ((block.timestamp * invested[address(msg.sender)]) - (lastInvest[address(msg.sender)] * invested[address(msg.sender)]) / 1234440) + (60 * (block.timestamp * invested[address(msg.sender)]) - (lastInvest[address(msg.sender)] * invested[address(msg.sender)]) / 1234440 / 100)
                                                else:
                                                    require (block.timestamp * invested[address(msg.sender)]) - (lastInvest[address(msg.sender)] * invested[address(msg.sender)]) / 1234440 >= (block.timestamp * invested[address(msg.sender)]) - (lastInvest[address(msg.sender)] * invested[address(msg.sender)]) / 1234440
                                                    require (block.timestamp * invested[address(msg.sender)]) - (lastInvest[address(msg.sender)] * invested[address(msg.sender)]) / 1234440 > 0
                                                    lastInvest[address(msg.sender)] = block.timestamp
                                                    sub_ecb7cb1b[address(msg.sender)] += (block.timestamp * invested[address(msg.sender)]) - (lastInvest[address(msg.sender)] * invested[address(msg.sender)]) / 1234440
                                                    require invested[address(msg.sender)] + ((block.timestamp * invested[address(msg.sender)]) - (lastInvest[address(msg.sender)] * invested[address(msg.sender)]) / 1234440) >= invested[address(msg.sender)]
                                                    invested[address(msg.sender)] += (block.timestamp * invested[address(msg.sender)]) - (lastInvest[address(msg.sender)] * invested[address(msg.sender)]) / 1234440
                                    else:
                                        if (block.timestamp * invested[address(msg.sender)]) - (lastInvest[address(msg.sender)] * invested[address(msg.sender)]) / 1234440:
                                            require (block.timestamp * invested[address(msg.sender)]) - (lastInvest[address(msg.sender)] * invested[address(msg.sender)]) / 1234440
                                            require 40 * (block.timestamp * invested[address(msg.sender)]) - (lastInvest[address(msg.sender)] * invested[address(msg.sender)]) / 1234440 / (block.timestamp * invested[address(msg.sender)]) - (lastInvest[address(msg.sender)] * invested[address(msg.sender)]) / 1234440 == 40
                                            require ((block.timestamp * invested[address(msg.sender)]) - (lastInvest[address(msg.sender)] * invested[address(msg.sender)]) / 1234440) + (40 * (block.timestamp * invested[address(msg.sender)]) - (lastInvest[address(msg.sender)] * invested[address(msg.sender)]) / 1234440 / 100) >= (block.timestamp * invested[address(msg.sender)]) - (lastInvest[address(msg.sender)] * invested[address(msg.sender)]) / 1234440
                                            require ((block.timestamp * invested[address(msg.sender)]) - (lastInvest[address(msg.sender)] * invested[address(msg.sender)]) / 1234440) + (40 * (block.timestamp * invested[address(msg.sender)]) - (lastInvest[address(msg.sender)] * invested[address(msg.sender)]) / 1234440 / 100) > 0
                                            lastInvest[address(msg.sender)] = block.timestamp
                                            sub_ecb7cb1b[address(msg.sender)] = sub_ecb7cb1b[address(msg.sender)] + ((block.timestamp * invested[address(msg.sender)]) - (lastInvest[address(msg.sender)] * invested[address(msg.sender)]) / 1234440) + (40 * (block.timestamp * invested[address(msg.sender)]) - (lastInvest[address(msg.sender)] * invested[address(msg.sender)]) / 1234440 / 100)
                                            require invested[address(msg.sender)] + ((block.timestamp * invested[address(msg.sender)]) - (lastInvest[address(msg.sender)] * invested[address(msg.sender)]) / 1234440) + (40 * (block.timestamp * invested[address(msg.sender)]) - (lastInvest[address(msg.sender)] * invested[address(msg.sender)]) / 1234440 / 100) >= invested[address(msg.sender)]
                                            invested[address(msg.sender)] = invested[address(msg.sender)] + ((block.timestamp * invested[address(msg.sender)]) - (lastInvest[address(msg.sender)] * invested[address(msg.sender)]) / 1234440) + (40 * (block.timestamp * invested[address(msg.sender)]) - (lastInvest[address(msg.sender)] * invested[address(msg.sender)]) / 1234440 / 100)
                                        else:
                                            require (block.timestamp * invested[address(msg.sender)]) - (lastInvest[address(msg.sender)] * invested[address(msg.sender)]) / 1234440 >= (block.timestamp * invested[address(msg.sender)]) - (lastInvest[address(msg.sender)] * invested[address(msg.sender)]) / 1234440
                                            require (block.timestamp * invested[address(msg.sender)]) - (lastInvest[address(msg.sender)] * invested[address(msg.sender)]) / 1234440 > 0
                                            lastInvest[address(msg.sender)] = block.timestamp
                                            sub_ecb7cb1b[address(msg.sender)] += (block.timestamp * invested[address(msg.sender)]) - (lastInvest[address(msg.sender)] * invested[address(msg.sender)]) / 1234440
                                            require invested[address(msg.sender)] + ((block.timestamp * invested[address(msg.sender)]) - (lastInvest[address(msg.sender)] * invested[address(msg.sender)]) / 1234440) >= invested[address(msg.sender)]
                                            invested[address(msg.sender)] += (block.timestamp * invested[address(msg.sender)]) - (lastInvest[address(msg.sender)] * invested[address(msg.sender)]) / 1234440
                            else:
                                if (block.timestamp * invested[address(msg.sender)]) - (lastInvest[address(msg.sender)] * invested[address(msg.sender)]) / 1234440:
                                    require (block.timestamp * invested[address(msg.sender)]) - (lastInvest[address(msg.sender)] * invested[address(msg.sender)]) / 1234440
                                    require 20 * (block.timestamp * invested[address(msg.sender)]) - (lastInvest[address(msg.sender)] * invested[address(msg.sender)]) / 1234440 / (block.timestamp * invested[address(msg.sender)]) - (lastInvest[address(msg.sender)] * invested[address(msg.sender)]) / 1234440 == 20
                                    require ((block.timestamp * invested[address(msg.sender)]) - (lastInvest[address(msg.sender)] * invested[address(msg.sender)]) / 1234440) + (20 * (block.timestamp * invested[address(msg.sender)]) - (lastInvest[address(msg.sender)] * invested[address(msg.sender)]) / 1234440 / 100) >= (block.timestamp * invested[address(msg.sender)]) - (lastInvest[address(msg.sender)] * invested[address(msg.sender)]) / 1234440
                                    require ((block.timestamp * invested[address(msg.sender)]) - (lastInvest[address(msg.sender)] * invested[address(msg.sender)]) / 1234440) + (20 * (block.timestamp * invested[address(msg.sender)]) - (lastInvest[address(msg.sender)] * invested[address(msg.sender)]) / 1234440 / 100) > 0
                                    lastInvest[address(msg.sender)] = block.timestamp
                                    sub_ecb7cb1b[address(msg.sender)] = sub_ecb7cb1b[address(msg.sender)] + ((block.timestamp * invested[address(msg.sender)]) - (lastInvest[address(msg.sender)] * invested[address(msg.sender)]) / 1234440) + (20 * (block.timestamp * invested[address(msg.sender)]) - (lastInvest[address(msg.sender)] * invested[address(msg.sender)]) / 1234440 / 100)
                                    require invested[address(msg.sender)] + ((block.timestamp * invested[address(msg.sender)]) - (lastInvest[address(msg.sender)] * invested[address(msg.sender)]) / 1234440) + (20 * (block.timestamp * invested[address(msg.sender)]) - (lastInvest[address(msg.sender)] * invested[address(msg.sender)]) / 1234440 / 100) >= invested[address(msg.sender)]
                                    invested[address(msg.sender)] = invested[address(msg.sender)] + ((block.timestamp * invested[address(msg.sender)]) - (lastInvest[address(msg.sender)] * invested[address(msg.sender)]) / 1234440) + (20 * (block.timestamp * invested[address(msg.sender)]) - (lastInvest[address(msg.sender)] * invested[address(msg.sender)]) / 1234440 / 100)
                                else:
                                    require (block.timestamp * invested[address(msg.sender)]) - (lastInvest[address(msg.sender)] * invested[address(msg.sender)]) / 1234440 >= (block.timestamp * invested[address(msg.sender)]) - (lastInvest[address(msg.sender)] * invested[address(msg.sender)]) / 1234440
                                    require (block.timestamp * invested[address(msg.sender)]) - (lastInvest[address(msg.sender)] * invested[address(msg.sender)]) / 1234440 > 0
                                    lastInvest[address(msg.sender)] = block.timestamp
                                    sub_ecb7cb1b[address(msg.sender)] += (block.timestamp * invested[address(msg.sender)]) - (lastInvest[address(msg.sender)] * invested[address(msg.sender)]) / 1234440
                                    require invested[address(msg.sender)] + ((block.timestamp * invested[address(msg.sender)]) - (lastInvest[address(msg.sender)] * invested[address(msg.sender)]) / 1234440) >= invested[address(msg.sender)]
                                    invested[address(msg.sender)] += (block.timestamp * invested[address(msg.sender)]) - (lastInvest[address(msg.sender)] * invested[address(msg.sender)]) / 1234440
                    else:
                        require (block.timestamp * invested[address(msg.sender)]) - (lastInvest[address(msg.sender)] * invested[address(msg.sender)]) / 1234440 > 0
                        lastInvest[address(msg.sender)] = block.timestamp
                        sub_ecb7cb1b[address(msg.sender)] += (block.timestamp * invested[address(msg.sender)]) - (lastInvest[address(msg.sender)] * invested[address(msg.sender)]) / 1234440
                        require invested[address(msg.sender)] + ((block.timestamp * invested[address(msg.sender)]) - (lastInvest[address(msg.sender)] * invested[address(msg.sender)]) / 1234440) >= invested[address(msg.sender)]
                        invested[address(msg.sender)] += (block.timestamp * invested[address(msg.sender)]) - (lastInvest[address(msg.sender)] * invested[address(msg.sender)]) / 1234440
            else:
                if invested[address(msg.sender)] < 5 * 10^17:
                    require (invested[address(msg.sender)] * stor17) - sub_ecb7cb1b[address(msg.sender)] > 0
                    lastInvest[address(msg.sender)] = block.timestamp
                    sub_ecb7cb1b[address(msg.sender)] = invested[address(msg.sender)] * stor17
                    require invested[address(msg.sender)] + (invested[address(msg.sender)] * stor17) - sub_ecb7cb1b[address(msg.sender)] >= invested[address(msg.sender)]
                    invested[address(msg.sender)] = invested[address(msg.sender)] + (invested[address(msg.sender)] * stor17) - sub_ecb7cb1b[address(msg.sender)]
                else:
                    if 4 * 10^18 < invested[address(msg.sender)]:
                        if invested[address(msg.sender)] < 401 * 10^16:
                            require (invested[address(msg.sender)] * stor17) - sub_ecb7cb1b[address(msg.sender)] > 0
                            lastInvest[address(msg.sender)] = block.timestamp
                            sub_ecb7cb1b[address(msg.sender)] = invested[address(msg.sender)] * stor17
                            require invested[address(msg.sender)] + (invested[address(msg.sender)] * stor17) - sub_ecb7cb1b[address(msg.sender)] >= invested[address(msg.sender)]
                            invested[address(msg.sender)] = invested[address(msg.sender)] + (invested[address(msg.sender)] * stor17) - sub_ecb7cb1b[address(msg.sender)]
                        else:
                            if 7 * 10^18 < invested[address(msg.sender)]:
                                if invested[address(msg.sender)] < 701 * 10^16:
                                    require (invested[address(msg.sender)] * stor17) - sub_ecb7cb1b[address(msg.sender)] > 0
                                    lastInvest[address(msg.sender)] = block.timestamp
                                    sub_ecb7cb1b[address(msg.sender)] = invested[address(msg.sender)] * stor17
                                    require invested[address(msg.sender)] + (invested[address(msg.sender)] * stor17) - sub_ecb7cb1b[address(msg.sender)] >= invested[address(msg.sender)]
                                    invested[address(msg.sender)] = invested[address(msg.sender)] + (invested[address(msg.sender)] * stor17) - sub_ecb7cb1b[address(msg.sender)]
                                else:
                                    if 10 * 10^18 < invested[address(msg.sender)]:
                                        if invested[address(msg.sender)] < 1001 * 10^16:
                                            require (invested[address(msg.sender)] * stor17) - sub_ecb7cb1b[address(msg.sender)] > 0
                                            lastInvest[address(msg.sender)] = block.timestamp
                                            sub_ecb7cb1b[address(msg.sender)] = invested[address(msg.sender)] * stor17
                                            require invested[address(msg.sender)] + (invested[address(msg.sender)] * stor17) - sub_ecb7cb1b[address(msg.sender)] >= invested[address(msg.sender)]
                                            invested[address(msg.sender)] = invested[address(msg.sender)] + (invested[address(msg.sender)] * stor17) - sub_ecb7cb1b[address(msg.sender)]
                                        else:
                                            if 15 * 10^18 < invested[address(msg.sender)]:
                                                if invested[address(msg.sender)] < 1501 * 10^16:
                                                    require (invested[address(msg.sender)] * stor17) - sub_ecb7cb1b[address(msg.sender)] > 0
                                                    lastInvest[address(msg.sender)] = block.timestamp
                                                    sub_ecb7cb1b[address(msg.sender)] = invested[address(msg.sender)] * stor17
                                                    require invested[address(msg.sender)] + (invested[address(msg.sender)] * stor17) - sub_ecb7cb1b[address(msg.sender)] >= invested[address(msg.sender)]
                                                    invested[address(msg.sender)] = invested[address(msg.sender)] + (invested[address(msg.sender)] * stor17) - sub_ecb7cb1b[address(msg.sender)]
                                                else:
                                                    if (invested[address(msg.sender)] * stor17) - sub_ecb7cb1b[address(msg.sender)]:
                                                        require (invested[address(msg.sender)] * stor17) - sub_ecb7cb1b[address(msg.sender)]
                                                        require (99 * invested[address(msg.sender)] * stor17) - (99 * sub_ecb7cb1b[address(msg.sender)]) / (invested[address(msg.sender)] * stor17) - sub_ecb7cb1b[address(msg.sender)] == 99
                                                        require (99 * invested[address(msg.sender)] * stor17) - (99 * sub_ecb7cb1b[address(msg.sender)]) / 100 >= 0
                                                        require (invested[address(msg.sender)] * stor17) - sub_ecb7cb1b[address(msg.sender)] + ((99 * invested[address(msg.sender)] * stor17) - (99 * sub_ecb7cb1b[address(msg.sender)]) / 100) > 0
                                                        lastInvest[address(msg.sender)] = block.timestamp
                                                        sub_ecb7cb1b[address(msg.sender)] = (invested[address(msg.sender)] * stor17) + ((99 * invested[address(msg.sender)] * stor17) - (99 * sub_ecb7cb1b[address(msg.sender)]) / 100)
                                                        require invested[address(msg.sender)] + (invested[address(msg.sender)] * stor17) - sub_ecb7cb1b[address(msg.sender)] + ((99 * invested[address(msg.sender)] * stor17) - (99 * sub_ecb7cb1b[address(msg.sender)]) / 100) >= invested[address(msg.sender)]
                                                        invested[address(msg.sender)] = invested[address(msg.sender)] + (invested[address(msg.sender)] * stor17) - sub_ecb7cb1b[address(msg.sender)] + ((99 * invested[address(msg.sender)] * stor17) - (99 * sub_ecb7cb1b[address(msg.sender)]) / 100)
                                                    else:
                                                        require (invested[address(msg.sender)] * stor17) - sub_ecb7cb1b[address(msg.sender)] > 0
                                                        lastInvest[address(msg.sender)] = block.timestamp
                                                        sub_ecb7cb1b[address(msg.sender)] = invested[address(msg.sender)] * stor17
                                                        require invested[address(msg.sender)] + (invested[address(msg.sender)] * stor17) - sub_ecb7cb1b[address(msg.sender)] >= invested[address(msg.sender)]
                                                        invested[address(msg.sender)] = invested[address(msg.sender)] + (invested[address(msg.sender)] * stor17) - sub_ecb7cb1b[address(msg.sender)]
                                            else:
                                                if (invested[address(msg.sender)] * stor17) - sub_ecb7cb1b[address(msg.sender)]:
                                                    require (invested[address(msg.sender)] * stor17) - sub_ecb7cb1b[address(msg.sender)]
                                                    require (60 * invested[address(msg.sender)] * stor17) - (60 * sub_ecb7cb1b[address(msg.sender)]) / (invested[address(msg.sender)] * stor17) - sub_ecb7cb1b[address(msg.sender)] == 60
                                                    require (60 * invested[address(msg.sender)] * stor17) - (60 * sub_ecb7cb1b[address(msg.sender)]) / 100 >= 0
                                                    require (invested[address(msg.sender)] * stor17) - sub_ecb7cb1b[address(msg.sender)] + ((60 * invested[address(msg.sender)] * stor17) - (60 * sub_ecb7cb1b[address(msg.sender)]) / 100) > 0
                                                    lastInvest[address(msg.sender)] = block.timestamp
                                                    sub_ecb7cb1b[address(msg.sender)] = (invested[address(msg.sender)] * stor17) + ((60 * invested[address(msg.sender)] * stor17) - (60 * sub_ecb7cb1b[address(msg.sender)]) / 100)
                                                    require invested[address(msg.sender)] + (invested[address(msg.sender)] * stor17) - sub_ecb7cb1b[address(msg.sender)] + ((60 * invested[address(msg.sender)] * stor17) - (60 * sub_ecb7cb1b[address(msg.sender)]) / 100) >= invested[address(msg.sender)]
                                                    invested[address(msg.sender)] = invested[address(msg.sender)] + (invested[address(msg.sender)] * stor17) - sub_ecb7cb1b[address(msg.sender)] + ((60 * invested[address(msg.sender)] * stor17) - (60 * sub_ecb7cb1b[address(msg.sender)]) / 100)
                                                else:
                                                    require (invested[address(msg.sender)] * stor17) - sub_ecb7cb1b[address(msg.sender)] > 0
                                                    lastInvest[address(msg.sender)] = block.timestamp
                                                    sub_ecb7cb1b[address(msg.sender)] = invested[address(msg.sender)] * stor17
                                                    require invested[address(msg.sender)] + (invested[address(msg.sender)] * stor17) - sub_ecb7cb1b[address(msg.sender)] >= invested[address(msg.sender)]
                                                    invested[address(msg.sender)] = invested[address(msg.sender)] + (invested[address(msg.sender)] * stor17) - sub_ecb7cb1b[address(msg.sender)]
                                    else:
                                        if (invested[address(msg.sender)] * stor17) - sub_ecb7cb1b[address(msg.sender)]:
                                            require (invested[address(msg.sender)] * stor17) - sub_ecb7cb1b[address(msg.sender)]
                                            require (40 * invested[address(msg.sender)] * stor17) - (40 * sub_ecb7cb1b[address(msg.sender)]) / (invested[address(msg.sender)] * stor17) - sub_ecb7cb1b[address(msg.sender)] == 40
                                            require (40 * invested[address(msg.sender)] * stor17) - (40 * sub_ecb7cb1b[address(msg.sender)]) / 100 >= 0
                                            require (invested[address(msg.sender)] * stor17) - sub_ecb7cb1b[address(msg.sender)] + ((40 * invested[address(msg.sender)] * stor17) - (40 * sub_ecb7cb1b[address(msg.sender)]) / 100) > 0
                                            lastInvest[address(msg.sender)] = block.timestamp
                                            sub_ecb7cb1b[address(msg.sender)] = (invested[address(msg.sender)] * stor17) + ((40 * invested[address(msg.sender)] * stor17) - (40 * sub_ecb7cb1b[address(msg.sender)]) / 100)
                                            require invested[address(msg.sender)] + (invested[address(msg.sender)] * stor17) - sub_ecb7cb1b[address(msg.sender)] + ((40 * invested[address(msg.sender)] * stor17) - (40 * sub_ecb7cb1b[address(msg.sender)]) / 100) >= invested[address(msg.sender)]
                                            invested[address(msg.sender)] = invested[address(msg.sender)] + (invested[address(msg.sender)] * stor17) - sub_ecb7cb1b[address(msg.sender)] + ((40 * invested[address(msg.sender)] * stor17) - (40 * sub_ecb7cb1b[address(msg.sender)]) / 100)
                                        else:
                                            require (invested[address(msg.sender)] * stor17) - sub_ecb7cb1b[address(msg.sender)] > 0
                                            lastInvest[address(msg.sender)] = block.timestamp
                                            sub_ecb7cb1b[address(msg.sender)] = invested[address(msg.sender)] * stor17
                                            require invested[address(msg.sender)] + (invested[address(msg.sender)] * stor17) - sub_ecb7cb1b[address(msg.sender)] >= invested[address(msg.sender)]
                                            invested[address(msg.sender)] = invested[address(msg.sender)] + (invested[address(msg.sender)] * stor17) - sub_ecb7cb1b[address(msg.sender)]
                            else:
                                if (invested[address(msg.sender)] * stor17) - sub_ecb7cb1b[address(msg.sender)]:
                                    require (invested[address(msg.sender)] * stor17) - sub_ecb7cb1b[address(msg.sender)]
                                    require (20 * invested[address(msg.sender)] * stor17) - (20 * sub_ecb7cb1b[address(msg.sender)]) / (invested[address(msg.sender)] * stor17) - sub_ecb7cb1b[address(msg.sender)] == 20
                                    require (20 * invested[address(msg.sender)] * stor17) - (20 * sub_ecb7cb1b[address(msg.sender)]) / 100 >= 0
                                    require (invested[address(msg.sender)] * stor17) - sub_ecb7cb1b[address(msg.sender)] + ((20 * invested[address(msg.sender)] * stor17) - (20 * sub_ecb7cb1b[address(msg.sender)]) / 100) > 0
                                    lastInvest[address(msg.sender)] = block.timestamp
                                    sub_ecb7cb1b[address(msg.sender)] = (invested[address(msg.sender)] * stor17) + ((20 * invested[address(msg.sender)] * stor17) - (20 * sub_ecb7cb1b[address(msg.sender)]) / 100)
                                    require invested[address(msg.sender)] + (invested[address(msg.sender)] * stor17) - sub_ecb7cb1b[address(msg.sender)] + ((20 * invested[address(msg.sender)] * stor17) - (20 * sub_ecb7cb1b[address(msg.sender)]) / 100) >= invested[address(msg.sender)]
                                    invested[address(msg.sender)] = invested[address(msg.sender)] + (invested[address(msg.sender)] * stor17) - sub_ecb7cb1b[address(msg.sender)] + ((20 * invested[address(msg.sender)] * stor17) - (20 * sub_ecb7cb1b[address(msg.sender)]) / 100)
                                else:
                                    require (invested[address(msg.sender)] * stor17) - sub_ecb7cb1b[address(msg.sender)] > 0
                                    lastInvest[address(msg.sender)] = block.timestamp
                                    sub_ecb7cb1b[address(msg.sender)] = invested[address(msg.sender)] * stor17
                                    require invested[address(msg.sender)] + (invested[address(msg.sender)] * stor17) - sub_ecb7cb1b[address(msg.sender)] >= invested[address(msg.sender)]
                                    invested[address(msg.sender)] = invested[address(msg.sender)] + (invested[address(msg.sender)] * stor17) - sub_ecb7cb1b[address(msg.sender)]
                    else:
                        require (invested[address(msg.sender)] * stor17) - sub_ecb7cb1b[address(msg.sender)] > 0
                        lastInvest[address(msg.sender)] = block.timestamp
                        sub_ecb7cb1b[address(msg.sender)] = invested[address(msg.sender)] * stor17
                        require invested[address(msg.sender)] + (invested[address(msg.sender)] * stor17) - sub_ecb7cb1b[address(msg.sender)] >= invested[address(msg.sender)]
                        invested[address(msg.sender)] = invested[address(msg.sender)] + (invested[address(msg.sender)] * stor17) - sub_ecb7cb1b[address(msg.sender)]
    else:
        if 0 <= (invested[address(msg.sender)] * stor17) - sub_ecb7cb1b[address(msg.sender)]:
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
            if sub_ecb7cb1b[address(msg.sender)] >= invested[address(msg.sender)] * stor17:
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
                    require (invested[address(msg.sender)] * stor17) - sub_ecb7cb1b[address(msg.sender)] > 0
                    lastInvest[address(msg.sender)] = block.timestamp
                    sub_ecb7cb1b[address(msg.sender)] = invested[address(msg.sender)] * stor17
                    require invested[address(msg.sender)] + (invested[address(msg.sender)] * stor17) - sub_ecb7cb1b[address(msg.sender)] >= invested[address(msg.sender)]
                    invested[address(msg.sender)] = invested[address(msg.sender)] + (invested[address(msg.sender)] * stor17) - sub_ecb7cb1b[address(msg.sender)]
                else:
                    if 4 * 10^18 < invested[address(msg.sender)]:
                        if invested[address(msg.sender)] < 401 * 10^16:
                            require (invested[address(msg.sender)] * stor17) - sub_ecb7cb1b[address(msg.sender)] > 0
                            lastInvest[address(msg.sender)] = block.timestamp
                            sub_ecb7cb1b[address(msg.sender)] = invested[address(msg.sender)] * stor17
                            require invested[address(msg.sender)] + (invested[address(msg.sender)] * stor17) - sub_ecb7cb1b[address(msg.sender)] >= invested[address(msg.sender)]
                            invested[address(msg.sender)] = invested[address(msg.sender)] + (invested[address(msg.sender)] * stor17) - sub_ecb7cb1b[address(msg.sender)]
                        else:
                            if 7 * 10^18 < invested[address(msg.sender)]:
                                if invested[address(msg.sender)] < 701 * 10^16:
                                    require (invested[address(msg.sender)] * stor17) - sub_ecb7cb1b[address(msg.sender)] > 0
                                    lastInvest[address(msg.sender)] = block.timestamp
                                    sub_ecb7cb1b[address(msg.sender)] = invested[address(msg.sender)] * stor17
                                    require invested[address(msg.sender)] + (invested[address(msg.sender)] * stor17) - sub_ecb7cb1b[address(msg.sender)] >= invested[address(msg.sender)]
                                    invested[address(msg.sender)] = invested[address(msg.sender)] + (invested[address(msg.sender)] * stor17) - sub_ecb7cb1b[address(msg.sender)]
                                else:
                                    if 10 * 10^18 < invested[address(msg.sender)]:
                                        if invested[address(msg.sender)] < 1001 * 10^16:
                                            require (invested[address(msg.sender)] * stor17) - sub_ecb7cb1b[address(msg.sender)] > 0
                                            lastInvest[address(msg.sender)] = block.timestamp
                                            sub_ecb7cb1b[address(msg.sender)] = invested[address(msg.sender)] * stor17
                                            require invested[address(msg.sender)] + (invested[address(msg.sender)] * stor17) - sub_ecb7cb1b[address(msg.sender)] >= invested[address(msg.sender)]
                                            invested[address(msg.sender)] = invested[address(msg.sender)] + (invested[address(msg.sender)] * stor17) - sub_ecb7cb1b[address(msg.sender)]
                                        else:
                                            if 15 * 10^18 < invested[address(msg.sender)]:
                                                if invested[address(msg.sender)] < 1501 * 10^16:
                                                    require (invested[address(msg.sender)] * stor17) - sub_ecb7cb1b[address(msg.sender)] > 0
                                                    lastInvest[address(msg.sender)] = block.timestamp
                                                    sub_ecb7cb1b[address(msg.sender)] = invested[address(msg.sender)] * stor17
                                                    require invested[address(msg.sender)] + (invested[address(msg.sender)] * stor17) - sub_ecb7cb1b[address(msg.sender)] >= invested[address(msg.sender)]
                                                    invested[address(msg.sender)] = invested[address(msg.sender)] + (invested[address(msg.sender)] * stor17) - sub_ecb7cb1b[address(msg.sender)]
                                                else:
                                                    if (invested[address(msg.sender)] * stor17) - sub_ecb7cb1b[address(msg.sender)]:
                                                        require (invested[address(msg.sender)] * stor17) - sub_ecb7cb1b[address(msg.sender)]
                                                        require (99 * invested[address(msg.sender)] * stor17) - (99 * sub_ecb7cb1b[address(msg.sender)]) / (invested[address(msg.sender)] * stor17) - sub_ecb7cb1b[address(msg.sender)] == 99
                                                        require (99 * invested[address(msg.sender)] * stor17) - (99 * sub_ecb7cb1b[address(msg.sender)]) / 100 >= 0
                                                        require (invested[address(msg.sender)] * stor17) - sub_ecb7cb1b[address(msg.sender)] + ((99 * invested[address(msg.sender)] * stor17) - (99 * sub_ecb7cb1b[address(msg.sender)]) / 100) > 0
                                                        lastInvest[address(msg.sender)] = block.timestamp
                                                        sub_ecb7cb1b[address(msg.sender)] = (invested[address(msg.sender)] * stor17) + ((99 * invested[address(msg.sender)] * stor17) - (99 * sub_ecb7cb1b[address(msg.sender)]) / 100)
                                                        require invested[address(msg.sender)] + (invested[address(msg.sender)] * stor17) - sub_ecb7cb1b[address(msg.sender)] + ((99 * invested[address(msg.sender)] * stor17) - (99 * sub_ecb7cb1b[address(msg.sender)]) / 100) >= invested[address(msg.sender)]
                                                        invested[address(msg.sender)] = invested[address(msg.sender)] + (invested[address(msg.sender)] * stor17) - sub_ecb7cb1b[address(msg.sender)] + ((99 * invested[address(msg.sender)] * stor17) - (99 * sub_ecb7cb1b[address(msg.sender)]) / 100)
                                                    else:
                                                        require (invested[address(msg.sender)] * stor17) - sub_ecb7cb1b[address(msg.sender)] > 0
                                                        lastInvest[address(msg.sender)] = block.timestamp
                                                        sub_ecb7cb1b[address(msg.sender)] = invested[address(msg.sender)] * stor17
                                                        require invested[address(msg.sender)] + (invested[address(msg.sender)] * stor17) - sub_ecb7cb1b[address(msg.sender)] >= invested[address(msg.sender)]
                                                        invested[address(msg.sender)] = invested[address(msg.sender)] + (invested[address(msg.sender)] * stor17) - sub_ecb7cb1b[address(msg.sender)]
                                            else:
                                                if (invested[address(msg.sender)] * stor17) - sub_ecb7cb1b[address(msg.sender)]:
                                                    require (invested[address(msg.sender)] * stor17) - sub_ecb7cb1b[address(msg.sender)]
                                                    require (60 * invested[address(msg.sender)] * stor17) - (60 * sub_ecb7cb1b[address(msg.sender)]) / (invested[address(msg.sender)] * stor17) - sub_ecb7cb1b[address(msg.sender)] == 60
                                                    require (60 * invested[address(msg.sender)] * stor17) - (60 * sub_ecb7cb1b[address(msg.sender)]) / 100 >= 0
                                                    require (invested[address(msg.sender)] * stor17) - sub_ecb7cb1b[address(msg.sender)] + ((60 * invested[address(msg.sender)] * stor17) - (60 * sub_ecb7cb1b[address(msg.sender)]) / 100) > 0
                                                    lastInvest[address(msg.sender)] = block.timestamp
                                                    sub_ecb7cb1b[address(msg.sender)] = (invested[address(msg.sender)] * stor17) + ((60 * invested[address(msg.sender)] * stor17) - (60 * sub_ecb7cb1b[address(msg.sender)]) / 100)
                                                    require invested[address(msg.sender)] + (invested[address(msg.sender)] * stor17) - sub_ecb7cb1b[address(msg.sender)] + ((60 * invested[address(msg.sender)] * stor17) - (60 * sub_ecb7cb1b[address(msg.sender)]) / 100) >= invested[address(msg.sender)]
                                                    invested[address(msg.sender)] = invested[address(msg.sender)] + (invested[address(msg.sender)] * stor17) - sub_ecb7cb1b[address(msg.sender)] + ((60 * invested[address(msg.sender)] * stor17) - (60 * sub_ecb7cb1b[address(msg.sender)]) / 100)
                                                else:
                                                    require (invested[address(msg.sender)] * stor17) - sub_ecb7cb1b[address(msg.sender)] > 0
                                                    lastInvest[address(msg.sender)] = block.timestamp
                                                    sub_ecb7cb1b[address(msg.sender)] = invested[address(msg.sender)] * stor17
                                                    require invested[address(msg.sender)] + (invested[address(msg.sender)] * stor17) - sub_ecb7cb1b[address(msg.sender)] >= invested[address(msg.sender)]
                                                    invested[address(msg.sender)] = invested[address(msg.sender)] + (invested[address(msg.sender)] * stor17) - sub_ecb7cb1b[address(msg.sender)]
                                    else:
                                        if (invested[address(msg.sender)] * stor17) - sub_ecb7cb1b[address(msg.sender)]:
                                            require (invested[address(msg.sender)] * stor17) - sub_ecb7cb1b[address(msg.sender)]
                                            require (40 * invested[address(msg.sender)] * stor17) - (40 * sub_ecb7cb1b[address(msg.sender)]) / (invested[address(msg.sender)] * stor17) - sub_ecb7cb1b[address(msg.sender)] == 40
                                            require (40 * invested[address(msg.sender)] * stor17) - (40 * sub_ecb7cb1b[address(msg.sender)]) / 100 >= 0
                                            require (invested[address(msg.sender)] * stor17) - sub_ecb7cb1b[address(msg.sender)] + ((40 * invested[address(msg.sender)] * stor17) - (40 * sub_ecb7cb1b[address(msg.sender)]) / 100) > 0
                                            lastInvest[address(msg.sender)] = block.timestamp
                                            sub_ecb7cb1b[address(msg.sender)] = (invested[address(msg.sender)] * stor17) + ((40 * invested[address(msg.sender)] * stor17) - (40 * sub_ecb7cb1b[address(msg.sender)]) / 100)
                                            require invested[address(msg.sender)] + (invested[address(msg.sender)] * stor17) - sub_ecb7cb1b[address(msg.sender)] + ((40 * invested[address(msg.sender)] * stor17) - (40 * sub_ecb7cb1b[address(msg.sender)]) / 100) >= invested[address(msg.sender)]
                                            invested[address(msg.sender)] = invested[address(msg.sender)] + (invested[address(msg.sender)] * stor17) - sub_ecb7cb1b[address(msg.sender)] + ((40 * invested[address(msg.sender)] * stor17) - (40 * sub_ecb7cb1b[address(msg.sender)]) / 100)
                                        else:
                                            require (invested[address(msg.sender)] * stor17) - sub_ecb7cb1b[address(msg.sender)] > 0
                                            lastInvest[address(msg.sender)] = block.timestamp
                                            sub_ecb7cb1b[address(msg.sender)] = invested[address(msg.sender)] * stor17
                                            require invested[address(msg.sender)] + (invested[address(msg.sender)] * stor17) - sub_ecb7cb1b[address(msg.sender)] >= invested[address(msg.sender)]
                                            invested[address(msg.sender)] = invested[address(msg.sender)] + (invested[address(msg.sender)] * stor17) - sub_ecb7cb1b[address(msg.sender)]
                            else:
                                if (invested[address(msg.sender)] * stor17) - sub_ecb7cb1b[address(msg.sender)]:
                                    require (invested[address(msg.sender)] * stor17) - sub_ecb7cb1b[address(msg.sender)]
                                    require (20 * invested[address(msg.sender)] * stor17) - (20 * sub_ecb7cb1b[address(msg.sender)]) / (invested[address(msg.sender)] * stor17) - sub_ecb7cb1b[address(msg.sender)] == 20
                                    require (20 * invested[address(msg.sender)] * stor17) - (20 * sub_ecb7cb1b[address(msg.sender)]) / 100 >= 0
                                    require (invested[address(msg.sender)] * stor17) - sub_ecb7cb1b[address(msg.sender)] + ((20 * invested[address(msg.sender)] * stor17) - (20 * sub_ecb7cb1b[address(msg.sender)]) / 100) > 0
                                    lastInvest[address(msg.sender)] = block.timestamp
                                    sub_ecb7cb1b[address(msg.sender)] = (invested[address(msg.sender)] * stor17) + ((20 * invested[address(msg.sender)] * stor17) - (20 * sub_ecb7cb1b[address(msg.sender)]) / 100)
                                    require invested[address(msg.sender)] + (invested[address(msg.sender)] * stor17) - sub_ecb7cb1b[address(msg.sender)] + ((20 * invested[address(msg.sender)] * stor17) - (20 * sub_ecb7cb1b[address(msg.sender)]) / 100) >= invested[address(msg.sender)]
                                    invested[address(msg.sender)] = invested[address(msg.sender)] + (invested[address(msg.sender)] * stor17) - sub_ecb7cb1b[address(msg.sender)] + ((20 * invested[address(msg.sender)] * stor17) - (20 * sub_ecb7cb1b[address(msg.sender)]) / 100)
                                else:
                                    require (invested[address(msg.sender)] * stor17) - sub_ecb7cb1b[address(msg.sender)] > 0
                                    lastInvest[address(msg.sender)] = block.timestamp
                                    sub_ecb7cb1b[address(msg.sender)] = invested[address(msg.sender)] * stor17
                                    require invested[address(msg.sender)] + (invested[address(msg.sender)] * stor17) - sub_ecb7cb1b[address(msg.sender)] >= invested[address(msg.sender)]
                                    invested[address(msg.sender)] = invested[address(msg.sender)] + (invested[address(msg.sender)] * stor17) - sub_ecb7cb1b[address(msg.sender)]
                    else:
                        require (invested[address(msg.sender)] * stor17) - sub_ecb7cb1b[address(msg.sender)] > 0
                        lastInvest[address(msg.sender)] = block.timestamp
                        sub_ecb7cb1b[address(msg.sender)] = invested[address(msg.sender)] * stor17
                        require invested[address(msg.sender)] + (invested[address(msg.sender)] * stor17) - sub_ecb7cb1b[address(msg.sender)] >= invested[address(msg.sender)]
                        invested[address(msg.sender)] = invested[address(msg.sender)] + (invested[address(msg.sender)] * stor17) - sub_ecb7cb1b[address(msg.sender)]
}

function withdraw() {
    require lastInvest[address(msg.sender)] <= block.timestamp
    if block.timestamp - lastInvest[address(msg.sender)]:
        require block.timestamp - lastInvest[address(msg.sender)]
        require (block.timestamp * invested[address(msg.sender)]) - (lastInvest[address(msg.sender)] * invested[address(msg.sender)]) / block.timestamp - lastInvest[address(msg.sender)] == invested[address(msg.sender)]
        if (block.timestamp * invested[address(msg.sender)]) - (lastInvest[address(msg.sender)] * invested[address(msg.sender)]) / 1234440 <= (invested[address(msg.sender)] * stor17) - sub_ecb7cb1b[address(msg.sender)]:
            if invested[address(msg.sender)] < 5 * 10^17:
                require launchtime <= block.timestamp
                if sub_ce138e64:
                    require sub_ce138e64
                    require sub_ce138e64 * invested[address(msg.sender)] / sub_ce138e64 == invested[address(msg.sender)]
                    require (block.timestamp * invested[address(msg.sender)]) - (lastInvest[address(msg.sender)] * invested[address(msg.sender)]) / 1234440 > 0
                    require block.timestamp - launchtime >= 360 * 24 * 3600
                    lastInvest[address(msg.sender)] = block.timestamp
                    lastWithdraw[address(msg.sender)] = block.timestamp
                    if (block.timestamp * invested[address(msg.sender)]) - (lastInvest[address(msg.sender)] * invested[address(msg.sender)]) / 1234440 >= (invested[address(msg.sender)] * stor17) - sub_ecb7cb1b[address(msg.sender)]:
                        if sub_ecb7cb1b[address(msg.sender)] >= invested[address(msg.sender)] * stor17:
                        else:
                            if (invested[address(msg.sender)] * stor17) - sub_ecb7cb1b[address(msg.sender)] >= sub_ce138e64 * invested[address(msg.sender)] / 100:
                                require sub_ce138e64 * invested[address(msg.sender)] / 100 <= (invested[address(msg.sender)] * stor17) - sub_ecb7cb1b[address(msg.sender)]
                                sub_ecb7cb1b[address(msg.sender)] = invested[address(msg.sender)] * stor17
                                call msg.sender with:
                                   value sub_ce138e64 * invested[address(msg.sender)] / 100 wei
                                     gas 2300 * is_zero(value) wei
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                else:
                                    require invested[address(msg.sender)] + (invested[address(msg.sender)] * stor17) - sub_ecb7cb1b[address(msg.sender)] - (sub_ce138e64 * invested[address(msg.sender)] / 100) >= invested[address(msg.sender)]
                                    invested[address(msg.sender)] = invested[address(msg.sender)] + (invested[address(msg.sender)] * stor17) - sub_ecb7cb1b[address(msg.sender)] - (sub_ce138e64 * invested[address(msg.sender)] / 100)
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
                                   value (invested[address(msg.sender)] * stor17) - sub_ecb7cb1b[address(msg.sender)] wei
                                     gas 2300 * is_zero(value) wei
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                else:
                    else:
                        if (block.timestamp * invested[address(msg.sender)]) - (lastInvest[address(msg.sender)] * invested[address(msg.sender)]) / 1234440 >= sub_ce138e64 * invested[address(msg.sender)] / 100:
                            require sub_ce138e64 * invested[address(msg.sender)] / 100 <= (block.timestamp * invested[address(msg.sender)]) - (lastInvest[address(msg.sender)] * invested[address(msg.sender)]) / 1234440
                            sub_ecb7cb1b[address(msg.sender)] += (block.timestamp * invested[address(msg.sender)]) - (lastInvest[address(msg.sender)] * invested[address(msg.sender)]) / 1234440
                            call msg.sender with:
                               value sub_ce138e64 * invested[address(msg.sender)] / 100 wei
                                 gas 2300 * is_zero(value) wei
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            else:
                                require invested[address(msg.sender)] + ((block.timestamp * invested[address(msg.sender)]) - (lastInvest[address(msg.sender)] * invested[address(msg.sender)]) / 1234440) - (sub_ce138e64 * invested[address(msg.sender)] / 100) >= invested[address(msg.sender)]
                                invested[address(msg.sender)] = invested[address(msg.sender)] + ((block.timestamp * invested[address(msg.sender)]) - (lastInvest[address(msg.sender)] * invested[address(msg.sender)]) / 1234440) - (sub_ce138e64 * invested[address(msg.sender)] / 100)
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
                    require block.timestamp - launchtime >= 360 * 24 * 3600
                    lastInvest[address(msg.sender)] = block.timestamp
                    lastWithdraw[address(msg.sender)] = block.timestamp
                    if (block.timestamp * invested[address(msg.sender)]) - (lastInvest[address(msg.sender)] * invested[address(msg.sender)]) / 1234440 >= (invested[address(msg.sender)] * stor17) - sub_ecb7cb1b[address(msg.sender)]:
                        if sub_ecb7cb1b[address(msg.sender)] >= invested[address(msg.sender)] * stor17:
                        else:
                            if (invested[address(msg.sender)] * stor17) - sub_ecb7cb1b[address(msg.sender)] >= 0:
                                require 0 <= (invested[address(msg.sender)] * stor17) - sub_ecb7cb1b[address(msg.sender)]
                                sub_ecb7cb1b[address(msg.sender)] = invested[address(msg.sender)] * stor17
                                call msg.sender with:
                                     gas 2300 wei
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                else:
                                    require invested[address(msg.sender)] + (invested[address(msg.sender)] * stor17) - sub_ecb7cb1b[address(msg.sender)] >= invested[address(msg.sender)]
                                    invested[address(msg.sender)] = invested[address(msg.sender)] + (invested[address(msg.sender)] * stor17) - sub_ecb7cb1b[address(msg.sender)]
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
                                   value (invested[address(msg.sender)] * stor17) - sub_ecb7cb1b[address(msg.sender)] wei
                                     gas 2300 * is_zero(value) wei
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                else:
                    else:
                        if (block.timestamp * invested[address(msg.sender)]) - (lastInvest[address(msg.sender)] * invested[address(msg.sender)]) / 1234440 >= 0:
                            require 0 <= (block.timestamp * invested[address(msg.sender)]) - (lastInvest[address(msg.sender)] * invested[address(msg.sender)]) / 1234440
                            sub_ecb7cb1b[address(msg.sender)] += (block.timestamp * invested[address(msg.sender)]) - (lastInvest[address(msg.sender)] * invested[address(msg.sender)]) / 1234440
                            call msg.sender with:
                                 gas 2300 wei
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            else:
                                require invested[address(msg.sender)] + ((block.timestamp * invested[address(msg.sender)]) - (lastInvest[address(msg.sender)] * invested[address(msg.sender)]) / 1234440) >= invested[address(msg.sender)]
                                invested[address(msg.sender)] += (block.timestamp * invested[address(msg.sender)]) - (lastInvest[address(msg.sender)] * invested[address(msg.sender)]) / 1234440
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
                        require launchtime <= block.timestamp
                        if sub_ce138e64:
                            require sub_ce138e64
                            require sub_ce138e64 * invested[address(msg.sender)] / sub_ce138e64 == invested[address(msg.sender)]
                            require (block.timestamp * invested[address(msg.sender)]) - (lastInvest[address(msg.sender)] * invested[address(msg.sender)]) / 1234440 > 0
                            require block.timestamp - launchtime >= 360 * 24 * 3600
                            lastInvest[address(msg.sender)] = block.timestamp
                            lastWithdraw[address(msg.sender)] = block.timestamp
                            if (block.timestamp * invested[address(msg.sender)]) - (lastInvest[address(msg.sender)] * invested[address(msg.sender)]) / 1234440 >= (invested[address(msg.sender)] * stor17) - sub_ecb7cb1b[address(msg.sender)]:
                                if sub_ecb7cb1b[address(msg.sender)] >= invested[address(msg.sender)] * stor17:
                                else:
                                    if (invested[address(msg.sender)] * stor17) - sub_ecb7cb1b[address(msg.sender)] >= sub_ce138e64 * invested[address(msg.sender)] / 100:
                                        require sub_ce138e64 * invested[address(msg.sender)] / 100 <= (invested[address(msg.sender)] * stor17) - sub_ecb7cb1b[address(msg.sender)]
                                        sub_ecb7cb1b[address(msg.sender)] = invested[address(msg.sender)] * stor17
                                        call msg.sender with:
                                           value sub_ce138e64 * invested[address(msg.sender)] / 100 wei
                                             gas 2300 * is_zero(value) wei
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        else:
                                            require invested[address(msg.sender)] + (invested[address(msg.sender)] * stor17) - sub_ecb7cb1b[address(msg.sender)] - (sub_ce138e64 * invested[address(msg.sender)] / 100) >= invested[address(msg.sender)]
                                            invested[address(msg.sender)] = invested[address(msg.sender)] + (invested[address(msg.sender)] * stor17) - sub_ecb7cb1b[address(msg.sender)] - (sub_ce138e64 * invested[address(msg.sender)] / 100)
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
                                           value (invested[address(msg.sender)] * stor17) - sub_ecb7cb1b[address(msg.sender)] wei
                                             gas 2300 * is_zero(value) wei
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        else:
                            else:
                                if (block.timestamp * invested[address(msg.sender)]) - (lastInvest[address(msg.sender)] * invested[address(msg.sender)]) / 1234440 >= sub_ce138e64 * invested[address(msg.sender)] / 100:
                                    require sub_ce138e64 * invested[address(msg.sender)] / 100 <= (block.timestamp * invested[address(msg.sender)]) - (lastInvest[address(msg.sender)] * invested[address(msg.sender)]) / 1234440
                                    sub_ecb7cb1b[address(msg.sender)] += (block.timestamp * invested[address(msg.sender)]) - (lastInvest[address(msg.sender)] * invested[address(msg.sender)]) / 1234440
                                    call msg.sender with:
                                       value sub_ce138e64 * invested[address(msg.sender)] / 100 wei
                                         gas 2300 * is_zero(value) wei
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    else:
                                        require invested[address(msg.sender)] + ((block.timestamp * invested[address(msg.sender)]) - (lastInvest[address(msg.sender)] * invested[address(msg.sender)]) / 1234440) - (sub_ce138e64 * invested[address(msg.sender)] / 100) >= invested[address(msg.sender)]
                                        invested[address(msg.sender)] = invested[address(msg.sender)] + ((block.timestamp * invested[address(msg.sender)]) - (lastInvest[address(msg.sender)] * invested[address(msg.sender)]) / 1234440) - (sub_ce138e64 * invested[address(msg.sender)] / 100)
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
                            require block.timestamp - launchtime >= 360 * 24 * 3600
                            lastInvest[address(msg.sender)] = block.timestamp
                            lastWithdraw[address(msg.sender)] = block.timestamp
                            if (block.timestamp * invested[address(msg.sender)]) - (lastInvest[address(msg.sender)] * invested[address(msg.sender)]) / 1234440 >= (invested[address(msg.sender)] * stor17) - sub_ecb7cb1b[address(msg.sender)]:
                                if sub_ecb7cb1b[address(msg.sender)] >= invested[address(msg.sender)] * stor17:
                                else:
                                    if (invested[address(msg.sender)] * stor17) - sub_ecb7cb1b[address(msg.sender)] >= 0:
                                        require 0 <= (invested[address(msg.sender)] * stor17) - sub_ecb7cb1b[address(msg.sender)]
                                        sub_ecb7cb1b[address(msg.sender)] = invested[address(msg.sender)] * stor17
                                        call msg.sender with:
                                             gas 2300 wei
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        else:
                                            require invested[address(msg.sender)] + (invested[address(msg.sender)] * stor17) - sub_ecb7cb1b[address(msg.sender)] >= invested[address(msg.sender)]
                                            invested[address(msg.sender)] = invested[address(msg.sender)] + (invested[address(msg.sender)] * stor17) - sub_ecb7cb1b[address(msg.sender)]
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
                                           value (invested[address(msg.sender)] * stor17) - sub_ecb7cb1b[address(msg.sender)] wei
                                             gas 2300 * is_zero(value) wei
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        else:
                            else:
                                if (block.timestamp * invested[address(msg.sender)]) - (lastInvest[address(msg.sender)] * invested[address(msg.sender)]) / 1234440 >= 0:
                                    require 0 <= (block.timestamp * invested[address(msg.sender)]) - (lastInvest[address(msg.sender)] * invested[address(msg.sender)]) / 1234440
                                    sub_ecb7cb1b[address(msg.sender)] += (block.timestamp * invested[address(msg.sender)]) - (lastInvest[address(msg.sender)] * invested[address(msg.sender)]) / 1234440
                                    call msg.sender with:
                                         gas 2300 wei
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    else:
                                        require invested[address(msg.sender)] + ((block.timestamp * invested[address(msg.sender)]) - (lastInvest[address(msg.sender)] * invested[address(msg.sender)]) / 1234440) >= invested[address(msg.sender)]
                                        invested[address(msg.sender)] += (block.timestamp * invested[address(msg.sender)]) - (lastInvest[address(msg.sender)] * invested[address(msg.sender)]) / 1234440
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
                                require launchtime <= block.timestamp
                                if sub_ce138e64:
                                    require sub_ce138e64
                                    require sub_ce138e64 * invested[address(msg.sender)] / sub_ce138e64 == invested[address(msg.sender)]
                                    require (block.timestamp * invested[address(msg.sender)]) - (lastInvest[address(msg.sender)] * invested[address(msg.sender)]) / 1234440 > 0
                                    require block.timestamp - launchtime >= 360 * 24 * 3600
                                    lastInvest[address(msg.sender)] = block.timestamp
                                    lastWithdraw[address(msg.sender)] = block.timestamp
                                    if (block.timestamp * invested[address(msg.sender)]) - (lastInvest[address(msg.sender)] * invested[address(msg.sender)]) / 1234440 >= (invested[address(msg.sender)] * stor17) - sub_ecb7cb1b[address(msg.sender)]:
                                        if sub_ecb7cb1b[address(msg.sender)] >= invested[address(msg.sender)] * stor17:
                                        else:
                                            if (invested[address(msg.sender)] * stor17) - sub_ecb7cb1b[address(msg.sender)] >= sub_ce138e64 * invested[address(msg.sender)] / 100:
                                                require sub_ce138e64 * invested[address(msg.sender)] / 100 <= (invested[address(msg.sender)] * stor17) - sub_ecb7cb1b[address(msg.sender)]
                                                sub_ecb7cb1b[address(msg.sender)] = invested[address(msg.sender)] * stor17
                                                call msg.sender with:
                                                   value sub_ce138e64 * invested[address(msg.sender)] / 100 wei
                                                     gas 2300 * is_zero(value) wei
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                else:
                                                    require invested[address(msg.sender)] + (invested[address(msg.sender)] * stor17) - sub_ecb7cb1b[address(msg.sender)] - (sub_ce138e64 * invested[address(msg.sender)] / 100) >= invested[address(msg.sender)]
                                                    invested[address(msg.sender)] = invested[address(msg.sender)] + (invested[address(msg.sender)] * stor17) - sub_ecb7cb1b[address(msg.sender)] - (sub_ce138e64 * invested[address(msg.sender)] / 100)
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
                                                   value (invested[address(msg.sender)] * stor17) - sub_ecb7cb1b[address(msg.sender)] wei
                                                     gas 2300 * is_zero(value) wei
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                else:
                                    else:
                                        if (block.timestamp * invested[address(msg.sender)]) - (lastInvest[address(msg.sender)] * invested[address(msg.sender)]) / 1234440 >= sub_ce138e64 * invested[address(msg.sender)] / 100:
                                            require sub_ce138e64 * invested[address(msg.sender)] / 100 <= (block.timestamp * invested[address(msg.sender)]) - (lastInvest[address(msg.sender)] * invested[address(msg.sender)]) / 1234440
                                            sub_ecb7cb1b[address(msg.sender)] += (block.timestamp * invested[address(msg.sender)]) - (lastInvest[address(msg.sender)] * invested[address(msg.sender)]) / 1234440
                                            call msg.sender with:
                                               value sub_ce138e64 * invested[address(msg.sender)] / 100 wei
                                                 gas 2300 * is_zero(value) wei
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            else:
                                                require invested[address(msg.sender)] + ((block.timestamp * invested[address(msg.sender)]) - (lastInvest[address(msg.sender)] * invested[address(msg.sender)]) / 1234440) - (sub_ce138e64 * invested[address(msg.sender)] / 100) >= invested[address(msg.sender)]
                                                invested[address(msg.sender)] = invested[address(msg.sender)] + ((block.timestamp * invested[address(msg.sender)]) - (lastInvest[address(msg.sender)] * invested[address(msg.sender)]) / 1234440) - (sub_ce138e64 * invested[address(msg.sender)] / 100)
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
                                    require block.timestamp - launchtime >= 360 * 24 * 3600
                                    lastInvest[address(msg.sender)] = block.timestamp
                                    lastWithdraw[address(msg.sender)] = block.timestamp
                                    if (block.timestamp * invested[address(msg.sender)]) - (lastInvest[address(msg.sender)] * invested[address(msg.sender)]) / 1234440 >= (invested[address(msg.sender)] * stor17) - sub_ecb7cb1b[address(msg.sender)]:
                                        if sub_ecb7cb1b[address(msg.sender)] >= invested[address(msg.sender)] * stor17:
                                        else:
                                            if (invested[address(msg.sender)] * stor17) - sub_ecb7cb1b[address(msg.sender)] >= 0:
                                                require 0 <= (invested[address(msg.sender)] * stor17) - sub_ecb7cb1b[address(msg.sender)]
                                                sub_ecb7cb1b[address(msg.sender)] = invested[address(msg.sender)] * stor17
                                                call msg.sender with:
                                                     gas 2300 wei
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                else:
                                                    require invested[address(msg.sender)] + (invested[address(msg.sender)] * stor17) - sub_ecb7cb1b[address(msg.sender)] >= invested[address(msg.sender)]
                                                    invested[address(msg.sender)] = invested[address(msg.sender)] + (invested[address(msg.sender)] * stor17) - sub_ecb7cb1b[address(msg.sender)]
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
                                                   value (invested[address(msg.sender)] * stor17) - sub_ecb7cb1b[address(msg.sender)] wei
                                                     gas 2300 * is_zero(value) wei
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                else:
                                    else:
                                        if (block.timestamp * invested[address(msg.sender)]) - (lastInvest[address(msg.sender)] * invested[address(msg.sender)]) / 1234440 >= 0:
                                            require 0 <= (block.timestamp * invested[address(msg.sender)]) - (lastInvest[address(msg.sender)] * invested[address(msg.sender)]) / 1234440
                                            sub_ecb7cb1b[address(msg.sender)] += (block.timestamp * invested[address(msg.sender)]) - (lastInvest[address(msg.sender)] * invested[address(msg.sender)]) / 1234440
                                            call msg.sender with:
                                                 gas 2300 wei
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            else:
                                                require invested[address(msg.sender)] + ((block.timestamp * invested[address(msg.sender)]) - (lastInvest[address(msg.sender)] * invested[address(msg.sender)]) / 1234440) >= invested[address(msg.sender)]
                                                invested[address(msg.sender)] += (block.timestamp * invested[address(msg.sender)]) - (lastInvest[address(msg.sender)] * invested[address(msg.sender)]) / 1234440
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
                                        require launchtime <= block.timestamp
                                        if sub_ce138e64:
                                            require sub_ce138e64
                                            require sub_ce138e64 * invested[address(msg.sender)] / sub_ce138e64 == invested[address(msg.sender)]
                                            require (block.timestamp * invested[address(msg.sender)]) - (lastInvest[address(msg.sender)] * invested[address(msg.sender)]) / 1234440 > 0
                                            require block.timestamp - launchtime >= 360 * 24 * 3600
                                            lastInvest[address(msg.sender)] = block.timestamp
                                            lastWithdraw[address(msg.sender)] = block.timestamp
                                            if (block.timestamp * invested[address(msg.sender)]) - (lastInvest[address(msg.sender)] * invested[address(msg.sender)]) / 1234440 >= (invested[address(msg.sender)] * stor17) - sub_ecb7cb1b[address(msg.sender)]:
                                                if sub_ecb7cb1b[address(msg.sender)] >= invested[address(msg.sender)] * stor17:
                                                else:
                                                    if (invested[address(msg.sender)] * stor17) - sub_ecb7cb1b[address(msg.sender)] >= sub_ce138e64 * invested[address(msg.sender)] / 100:
                                                        require sub_ce138e64 * invested[address(msg.sender)] / 100 <= (invested[address(msg.sender)] * stor17) - sub_ecb7cb1b[address(msg.sender)]
                                                        sub_ecb7cb1b[address(msg.sender)] = invested[address(msg.sender)] * stor17
                                                        call msg.sender with:
                                                           value sub_ce138e64 * invested[address(msg.sender)] / 100 wei
                                                             gas 2300 * is_zero(value) wei
                                                        if not ext_call.success:
                                                            revert with ext_call.return_data[0 len return_data.size]
                                                        else:
                                                            require invested[address(msg.sender)] + (invested[address(msg.sender)] * stor17) - sub_ecb7cb1b[address(msg.sender)] - (sub_ce138e64 * invested[address(msg.sender)] / 100) >= invested[address(msg.sender)]
                                                            invested[address(msg.sender)] = invested[address(msg.sender)] + (invested[address(msg.sender)] * stor17) - sub_ecb7cb1b[address(msg.sender)] - (sub_ce138e64 * invested[address(msg.sender)] / 100)
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
                                                           value (invested[address(msg.sender)] * stor17) - sub_ecb7cb1b[address(msg.sender)] wei
                                                             gas 2300 * is_zero(value) wei
                                                        if not ext_call.success:
                                                            revert with ext_call.return_data[0 len return_data.size]
                                                        else:
                                            else:
                                                if (block.timestamp * invested[address(msg.sender)]) - (lastInvest[address(msg.sender)] * invested[address(msg.sender)]) / 1234440 >= sub_ce138e64 * invested[address(msg.sender)] / 100:
                                                    require sub_ce138e64 * invested[address(msg.sender)] / 100 <= (block.timestamp * invested[address(msg.sender)]) - (lastInvest[address(msg.sender)] * invested[address(msg.sender)]) / 1234440
                                                    sub_ecb7cb1b[address(msg.sender)] += (block.timestamp * invested[address(msg.sender)]) - (lastInvest[address(msg.sender)] * invested[address(msg.sender)]) / 1234440
                                                    call msg.sender with:
                                                       value sub_ce138e64 * invested[address(msg.sender)] / 100 wei
                                                         gas 2300 * is_zero(value) wei
                                                    if not ext_call.success:
                                                        revert with ext_call.return_data[0 len return_data.size]
                                                    else:
                                                        require invested[address(msg.sender)] + ((block.timestamp * invested[address(msg.sender)]) - (lastInvest[address(msg.sender)] * invested[address(msg.sender)]) / 1234440) - (sub_ce138e64 * invested[address(msg.sender)] / 100) >= invested[address(msg.sender)]
                                                        invested[address(msg.sender)] = invested[address(msg.sender)] + ((block.timestamp * invested[address(msg.sender)]) - (lastInvest[address(msg.sender)] * invested[address(msg.sender)]) / 1234440) - (sub_ce138e64 * invested[address(msg.sender)] / 100)
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
                                            require block.timestamp - launchtime >= 360 * 24 * 3600
                                            lastInvest[address(msg.sender)] = block.timestamp
                                            lastWithdraw[address(msg.sender)] = block.timestamp
                                            if (block.timestamp * invested[address(msg.sender)]) - (lastInvest[address(msg.sender)] * invested[address(msg.sender)]) / 1234440 >= (invested[address(msg.sender)] * stor17) - sub_ecb7cb1b[address(msg.sender)]:
                                                if sub_ecb7cb1b[address(msg.sender)] >= invested[address(msg.sender)] * stor17:
                                                else:
                                                    if (invested[address(msg.sender)] * stor17) - sub_ecb7cb1b[address(msg.sender)] >= 0:
                                                        require 0 <= (invested[address(msg.sender)] * stor17) - sub_ecb7cb1b[address(msg.sender)]
                                                        sub_ecb7cb1b[address(msg.sender)] = invested[address(msg.sender)] * stor17
                                                        call msg.sender with:
                                                             gas 2300 wei
                                                        if not ext_call.success:
                                                            revert with ext_call.return_data[0 len return_data.size]
                                                        else:
                                                            require invested[address(msg.sender)] + (invested[address(msg.sender)] * stor17) - sub_ecb7cb1b[address(msg.sender)] >= invested[address(msg.sender)]
                                                            invested[address(msg.sender)] = invested[address(msg.sender)] + (invested[address(msg.sender)] * stor17) - sub_ecb7cb1b[address(msg.sender)]
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
                                                           value (invested[address(msg.sender)] * stor17) - sub_ecb7cb1b[address(msg.sender)] wei
                                                             gas 2300 * is_zero(value) wei
                                                        if not ext_call.success:
                                                            revert with ext_call.return_data[0 len return_data.size]
                                                        else:
                                            else:
                                                if (block.timestamp * invested[address(msg.sender)]) - (lastInvest[address(msg.sender)] * invested[address(msg.sender)]) / 1234440 >= 0:
                                                    require 0 <= (block.timestamp * invested[address(msg.sender)]) - (lastInvest[address(msg.sender)] * invested[address(msg.sender)]) / 1234440
                                                    sub_ecb7cb1b[address(msg.sender)] += (block.timestamp * invested[address(msg.sender)]) - (lastInvest[address(msg.sender)] * invested[address(msg.sender)]) / 1234440
                                                    call msg.sender with:
                                                         gas 2300 wei
                                                    if not ext_call.success:
                                                        revert with ext_call.return_data[0 len return_data.size]
                                                    else:
                                                        require invested[address(msg.sender)] + ((block.timestamp * invested[address(msg.sender)]) - (lastInvest[address(msg.sender)] * invested[address(msg.sender)]) / 1234440) >= invested[address(msg.sender)]
                                                        invested[address(msg.sender)] += (block.timestamp * invested[address(msg.sender)]) - (lastInvest[address(msg.sender)] * invested[address(msg.sender)]) / 1234440
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
                                                require launchtime <= block.timestamp
                                                if sub_ce138e64:
                                                    require sub_ce138e64
                                                    require sub_ce138e64 * invested[address(msg.sender)] / sub_ce138e64 == invested[address(msg.sender)]
                                                    require (block.timestamp * invested[address(msg.sender)]) - (lastInvest[address(msg.sender)] * invested[address(msg.sender)]) / 1234440 > 0
                                                    require block.timestamp - launchtime >= 360 * 24 * 3600
                                                    lastInvest[address(msg.sender)] = block.timestamp
                                                    lastWithdraw[address(msg.sender)] = block.timestamp
                                                    if (block.timestamp * invested[address(msg.sender)]) - (lastInvest[address(msg.sender)] * invested[address(msg.sender)]) / 1234440 >= (invested[address(msg.sender)] * stor17) - sub_ecb7cb1b[address(msg.sender)]:
                                                        if sub_ecb7cb1b[address(msg.sender)] >= invested[address(msg.sender)] * stor17:
                                                        else:
                                                            if (invested[address(msg.sender)] * stor17) - sub_ecb7cb1b[address(msg.sender)] >= sub_ce138e64 * invested[address(msg.sender)] / 100:
                                                                require sub_ce138e64 * invested[address(msg.sender)] / 100 <= (invested[address(msg.sender)] * stor17) - sub_ecb7cb1b[address(msg.sender)]
                                                                sub_ecb7cb1b[address(msg.sender)] = invested[address(msg.sender)] * stor17
                                                                call msg.sender with:
                                                                   value sub_ce138e64 * invested[address(msg.sender)] / 100 wei
                                                                     gas 2300 * is_zero(value) wei
                                                                if not ext_call.success:
                                                                    revert with ext_call.return_data[0 len return_data.size]
                                                                else:
                                                                    require invested[address(msg.sender)] + (invested[address(msg.sender)] * stor17) - sub_ecb7cb1b[address(msg.sender)] - (sub_ce138e64 * invested[address(msg.sender)] / 100) >= invested[address(msg.sender)]
                                                                    invested[address(msg.sender)] = invested[address(msg.sender)] + (invested[address(msg.sender)] * stor17) - sub_ecb7cb1b[address(msg.sender)] - (sub_ce138e64 * invested[address(msg.sender)] / 100)
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
                                                                   value (invested[address(msg.sender)] * stor17) - sub_ecb7cb1b[address(msg.sender)] wei
                                                                     gas 2300 * is_zero(value) wei
                                                                if not ext_call.success:
                                                                    revert with ext_call.return_data[0 len return_data.size]
                                                                else:
                                                    else:
                                                        if (block.timestamp * invested[address(msg.sender)]) - (lastInvest[address(msg.sender)] * invested[address(msg.sender)]) / 1234440 >= sub_ce138e64 * invested[address(msg.sender)] / 100:
                                                            require sub_ce138e64 * invested[address(msg.sender)] / 100 <= (block.timestamp * invested[address(msg.sender)]) - (lastInvest[address(msg.sender)] * invested[address(msg.sender)]) / 1234440
                                                            sub_ecb7cb1b[address(msg.sender)] += (block.timestamp * invested[address(msg.sender)]) - (lastInvest[address(msg.sender)] * invested[address(msg.sender)]) / 1234440
                                                            call msg.sender with:
                                                               value sub_ce138e64 * invested[address(msg.sender)] / 100 wei
                                                                 gas 2300 * is_zero(value) wei
                                                            if not ext_call.success:
                                                                revert with ext_call.return_data[0 len return_data.size]
                                                            else:
                                                                require invested[address(msg.sender)] + ((block.timestamp * invested[address(msg.sender)]) - (lastInvest[address(msg.sender)] * invested[address(msg.sender)]) / 1234440) - (sub_ce138e64 * invested[address(msg.sender)] / 100) >= invested[address(msg.sender)]
                                                                invested[address(msg.sender)] = invested[address(msg.sender)] + ((block.timestamp * invested[address(msg.sender)]) - (lastInvest[address(msg.sender)] * invested[address(msg.sender)]) / 1234440) - (sub_ce138e64 * invested[address(msg.sender)] / 100)
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
                                                    require block.timestamp - launchtime >= 360 * 24 * 3600
                                                    lastInvest[address(msg.sender)] = block.timestamp
                                                    lastWithdraw[address(msg.sender)] = block.timestamp
                                                    if (block.timestamp * invested[address(msg.sender)]) - (lastInvest[address(msg.sender)] * invested[address(msg.sender)]) / 1234440 >= (invested[address(msg.sender)] * stor17) - sub_ecb7cb1b[address(msg.sender)]:
                                                        if sub_ecb7cb1b[address(msg.sender)] >= invested[address(msg.sender)] * stor17:
                                                        else:
                                                            if (invested[address(msg.sender)] * stor17) - sub_ecb7cb1b[address(msg.sender)] >= 0:
                                                                require 0 <= (invested[address(msg.sender)] * stor17) - sub_ecb7cb1b[address(msg.sender)]
                                                                sub_ecb7cb1b[address(msg.sender)] = invested[address(msg.sender)] * stor17
                                                                call msg.sender with:
                                                                     gas 2300 wei
                                                                if not ext_call.success:
                                                                    revert with ext_call.return_data[0 len return_data.size]
                                                                else:
                                                                    require invested[address(msg.sender)] + (invested[address(msg.sender)] * stor17) - sub_ecb7cb1b[address(msg.sender)] >= invested[address(msg.sender)]
                                                                    invested[address(msg.sender)] = invested[address(msg.sender)] + (invested[address(msg.sender)] * stor17) - sub_ecb7cb1b[address(msg.sender)]
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
                                                                   value (invested[address(msg.sender)] * stor17) - sub_ecb7cb1b[address(msg.sender)] wei
                                                                     gas 2300 * is_zero(value) wei
                                                                if not ext_call.success:
                                                                    revert with ext_call.return_data[0 len return_data.size]
                                                                else:
                                                    else:
                                                        if (block.timestamp * invested[address(msg.sender)]) - (lastInvest[address(msg.sender)] * invested[address(msg.sender)]) / 1234440 >= 0:
                                                            require 0 <= (block.timestamp * invested[address(msg.sender)]) - (lastInvest[address(msg.sender)] * invested[address(msg.sender)]) / 1234440
                                                            sub_ecb7cb1b[address(msg.sender)] += (block.timestamp * invested[address(msg.sender)]) - (lastInvest[address(msg.sender)] * invested[address(msg.sender)]) / 1234440
                                                            call msg.sender with:
                                                                 gas 2300 wei
                                                            if not ext_call.success:
                                                                revert with ext_call.return_data[0 len return_data.size]
                                                            else:
                                                                require invested[address(msg.sender)] + ((block.timestamp * invested[address(msg.sender)]) - (lastInvest[address(msg.sender)] * invested[address(msg.sender)]) / 1234440) >= invested[address(msg.sender)]
                                                                invested[address(msg.sender)] += (block.timestamp * invested[address(msg.sender)]) - (lastInvest[address(msg.sender)] * invested[address(msg.sender)]) / 1234440
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
                                                    require launchtime <= block.timestamp
                                                    if sub_ce138e64:
                                                        require sub_ce138e64
                                                        require sub_ce138e64 * invested[address(msg.sender)] / sub_ce138e64 == invested[address(msg.sender)]
                                                        require ((block.timestamp * invested[address(msg.sender)]) - (lastInvest[address(msg.sender)] * invested[address(msg.sender)]) / 1234440) + (99 * (block.timestamp * invested[address(msg.sender)]) - (lastInvest[address(msg.sender)] * invested[address(msg.sender)]) / 1234440 / 100) > 0
                                                        require block.timestamp - launchtime >= 360 * 24 * 3600
                                                        lastInvest[address(msg.sender)] = block.timestamp
                                                        lastWithdraw[address(msg.sender)] = block.timestamp
                                                        if ((block.timestamp * invested[address(msg.sender)]) - (lastInvest[address(msg.sender)] * invested[address(msg.sender)]) / 1234440) + (99 * (block.timestamp * invested[address(msg.sender)]) - (lastInvest[address(msg.sender)] * invested[address(msg.sender)]) / 1234440 / 100) >= (invested[address(msg.sender)] * stor17) - sub_ecb7cb1b[address(msg.sender)]:
                                                            if sub_ecb7cb1b[address(msg.sender)] >= invested[address(msg.sender)] * stor17:
                                                            else:
                                                                if (invested[address(msg.sender)] * stor17) - sub_ecb7cb1b[address(msg.sender)] >= sub_ce138e64 * invested[address(msg.sender)] / 100:
                                                                    require sub_ce138e64 * invested[address(msg.sender)] / 100 <= (invested[address(msg.sender)] * stor17) - sub_ecb7cb1b[address(msg.sender)]
                                                                    sub_ecb7cb1b[address(msg.sender)] = invested[address(msg.sender)] * stor17
                                                                    call msg.sender with:
                                                                       value sub_ce138e64 * invested[address(msg.sender)] / 100 wei
                                                                         gas 2300 * is_zero(value) wei
                                                                    if not ext_call.success:
                                                                        revert with ext_call.return_data[0 len return_data.size]
                                                                    else:
                                                                        require invested[address(msg.sender)] + (invested[address(msg.sender)] * stor17) - sub_ecb7cb1b[address(msg.sender)] - (sub_ce138e64 * invested[address(msg.sender)] / 100) >= invested[address(msg.sender)]
                                                                        invested[address(msg.sender)] = invested[address(msg.sender)] + (invested[address(msg.sender)] * stor17) - sub_ecb7cb1b[address(msg.sender)] - (sub_ce138e64 * invested[address(msg.sender)] / 100)
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
                                                                       value (invested[address(msg.sender)] * stor17) - sub_ecb7cb1b[address(msg.sender)] wei
                                                                         gas 2300 * is_zero(value) wei
                                                                    if not ext_call.success:
                                                                        revert with ext_call.return_data[0 len return_data.size]
                                                                    else:
                                                        else:
                                                            if ((block.timestamp * invested[address(msg.sender)]) - (lastInvest[address(msg.sender)] * invested[address(msg.sender)]) / 1234440) + (99 * (block.timestamp * invested[address(msg.sender)]) - (lastInvest[address(msg.sender)] * invested[address(msg.sender)]) / 1234440 / 100) >= sub_ce138e64 * invested[address(msg.sender)] / 100:
                                                                require sub_ce138e64 * invested[address(msg.sender)] / 100 <= ((block.timestamp * invested[address(msg.sender)]) - (lastInvest[address(msg.sender)] * invested[address(msg.sender)]) / 1234440) + (99 * (block.timestamp * invested[address(msg.sender)]) - (lastInvest[address(msg.sender)] * invested[address(msg.sender)]) / 1234440 / 100)
                                                                sub_ecb7cb1b[address(msg.sender)] = sub_ecb7cb1b[address(msg.sender)] + ((block.timestamp * invested[address(msg.sender)]) - (lastInvest[address(msg.sender)] * invested[address(msg.sender)]) / 1234440) + (99 * (block.timestamp * invested[address(msg.sender)]) - (lastInvest[address(msg.sender)] * invested[address(msg.sender)]) / 1234440 / 100)
                                                                call msg.sender with:
                                                                   value sub_ce138e64 * invested[address(msg.sender)] / 100 wei
                                                                     gas 2300 * is_zero(value) wei
                                                                if not ext_call.success:
                                                                    revert with ext_call.return_data[0 len return_data.size]
                                                                else:
                                                                    require invested[address(msg.sender)] + ((block.timestamp * invested[address(msg.sender)]) - (lastInvest[address(msg.sender)] * invested[address(msg.sender)]) / 1234440) + (99 * (block.timestamp * invested[address(msg.sender)]) - (lastInvest[address(msg.sender)] * invested[address(msg.sender)]) / 1234440 / 100) - (sub_ce138e64 * invested[address(msg.sender)] / 100) >= invested[address(msg.sender)]
                                                                    invested[address(msg.sender)] = invested[address(msg.sender)] + ((block.timestamp * invested[address(msg.sender)]) - (lastInvest[address(msg.sender)] * invested[address(msg.sender)]) / 1234440) + (99 * (block.timestamp * invested[address(msg.sender)]) - (lastInvest[address(msg.sender)] * invested[address(msg.sender)]) / 1234440 / 100) - (sub_ce138e64 * invested[address(msg.sender)] / 100)
                                                            else:
                                                                sub_ecb7cb1b[address(msg.sender)] = sub_ecb7cb1b[address(msg.sender)] + ((block.timestamp * invested[address(msg.sender)]) - (lastInvest[address(msg.sender)] * invested[address(msg.sender)]) / 1234440) + (99 * (block.timestamp * invested[address(msg.sender)]) - (lastInvest[address(msg.sender)] * invested[address(msg.sender)]) / 1234440 / 100)
                                                                call msg.sender with:
                                                                   value ((block.timestamp * invested[address(msg.sender)]) - (lastInvest[address(msg.sender)] * invested[address(msg.sender)]) / 1234440) + (99 * (block.timestamp * invested[address(msg.sender)]) - (lastInvest[address(msg.sender)] * invested[address(msg.sender)]) / 1234440 / 100) wei
                                                                     gas 2300 * is_zero(value) wei
                                                                if not ext_call.success:
                                                                    revert with ext_call.return_data[0 len return_data.size]
                                                                else:
                                                    else:
                                                        require ((block.timestamp * invested[address(msg.sender)]) - (lastInvest[address(msg.sender)] * invested[address(msg.sender)]) / 1234440) + (99 * (block.timestamp * invested[address(msg.sender)]) - (lastInvest[address(msg.sender)] * invested[address(msg.sender)]) / 1234440 / 100) > 0
                                                        require block.timestamp - launchtime >= 360 * 24 * 3600
                                                        lastInvest[address(msg.sender)] = block.timestamp
                                                        lastWithdraw[address(msg.sender)] = block.timestamp
                                                        if ((block.timestamp * invested[address(msg.sender)]) - (lastInvest[address(msg.sender)] * invested[address(msg.sender)]) / 1234440) + (99 * (block.timestamp * invested[address(msg.sender)]) - (lastInvest[address(msg.sender)] * invested[address(msg.sender)]) / 1234440 / 100) >= (invested[address(msg.sender)] * stor17) - sub_ecb7cb1b[address(msg.sender)]:
                                                            if sub_ecb7cb1b[address(msg.sender)] >= invested[address(msg.sender)] * stor17:
                                                            else:
                                                                if (invested[address(msg.sender)] * stor17) - sub_ecb7cb1b[address(msg.sender)] >= 0:
                                                                    require 0 <= (invested[address(msg.sender)] * stor17) - sub_ecb7cb1b[address(msg.sender)]
                                                                    sub_ecb7cb1b[address(msg.sender)] = invested[address(msg.sender)] * stor17
                                                                    call msg.sender with:
                                                                         gas 2300 wei
                                                                    if not ext_call.success:
                                                                        revert with ext_call.return_data[0 len return_data.size]
                                                                    else:
                                                                        require invested[address(msg.sender)] + (invested[address(msg.sender)] * stor17) - sub_ecb7cb1b[address(msg.sender)] >= invested[address(msg.sender)]
                                                                        invested[address(msg.sender)] = invested[address(msg.sender)] + (invested[address(msg.sender)] * stor17) - sub_ecb7cb1b[address(msg.sender)]
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
                                                                       value (invested[address(msg.sender)] * stor17) - sub_ecb7cb1b[address(msg.sender)] wei
                                                                         gas 2300 * is_zero(value) wei
                                                                    if not ext_call.success:
                                                                        revert with ext_call.return_data[0 len return_data.size]
                                                                    else:
                                                        else:
                                                            if ((block.timestamp * invested[address(msg.sender)]) - (lastInvest[address(msg.sender)] * invested[address(msg.sender)]) / 1234440) + (99 * (block.timestamp * invested[address(msg.sender)]) - (lastInvest[address(msg.sender)] * invested[address(msg.sender)]) / 1234440 / 100) >= 0:
                                                                require 0 <= ((block.timestamp * invested[address(msg.sender)]) - (lastInvest[address(msg.sender)] * invested[address(msg.sender)]) / 1234440) + (99 * (block.timestamp * invested[address(msg.sender)]) - (lastInvest[address(msg.sender)] * invested[address(msg.sender)]) / 1234440 / 100)
                                                                sub_ecb7cb1b[address(msg.sender)] = sub_ecb7cb1b[address(msg.sender)] + ((block.timestamp * invested[address(msg.sender)]) - (lastInvest[address(msg.sender)] * invested[address(msg.sender)]) / 1234440) + (99 * (block.timestamp * invested[address(msg.sender)]) - (lastInvest[address(msg.sender)] * invested[address(msg.sender)]) / 1234440 / 100)
                                                                call msg.sender with:
                                                                     gas 2300 wei
                                                                if not ext_call.success:
                                                                    revert with ext_call.return_data[0 len return_data.size]
                                                                else:
                                                                    require invested[address(msg.sender)] + ((block.timestamp * invested[address(msg.sender)]) - (lastInvest[address(msg.sender)] * invested[address(msg.sender)]) / 1234440) + (99 * (block.timestamp * invested[address(msg.sender)]) - (lastInvest[address(msg.sender)] * invested[address(msg.sender)]) / 1234440 / 100) >= invested[address(msg.sender)]
                                                                    invested[address(msg.sender)] = invested[address(msg.sender)] + ((block.timestamp * invested[address(msg.sender)]) - (lastInvest[address(msg.sender)] * invested[address(msg.sender)]) / 1234440) + (99 * (block.timestamp * invested[address(msg.sender)]) - (lastInvest[address(msg.sender)] * invested[address(msg.sender)]) / 1234440 / 100)
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
                                                    require launchtime <= block.timestamp
                                                    if sub_ce138e64:
                                                        require sub_ce138e64
                                                        require sub_ce138e64 * invested[address(msg.sender)] / sub_ce138e64 == invested[address(msg.sender)]
                                                        require (block.timestamp * invested[address(msg.sender)]) - (lastInvest[address(msg.sender)] * invested[address(msg.sender)]) / 1234440 > 0
                                                        require block.timestamp - launchtime >= 360 * 24 * 3600
                                                        lastInvest[address(msg.sender)] = block.timestamp
                                                        lastWithdraw[address(msg.sender)] = block.timestamp
                                                        if (block.timestamp * invested[address(msg.sender)]) - (lastInvest[address(msg.sender)] * invested[address(msg.sender)]) / 1234440 >= (invested[address(msg.sender)] * stor17) - sub_ecb7cb1b[address(msg.sender)]:
                                                            if sub_ecb7cb1b[address(msg.sender)] >= invested[address(msg.sender)] * stor17:
                                                            else:
                                                                if (invested[address(msg.sender)] * stor17) - sub_ecb7cb1b[address(msg.sender)] >= sub_ce138e64 * invested[address(msg.sender)] / 100:
                                                                    require sub_ce138e64 * invested[address(msg.sender)] / 100 <= (invested[address(msg.sender)] * stor17) - sub_ecb7cb1b[address(msg.sender)]
                                                                    sub_ecb7cb1b[address(msg.sender)] = invested[address(msg.sender)] * stor17
                                                                    call msg.sender with:
                                                                       value sub_ce138e64 * invested[address(msg.sender)] / 100 wei
                                                                         gas 2300 * is_zero(value) wei
                                                                    if not ext_call.success:
                                                                        revert with ext_call.return_data[0 len return_data.size]
                                                                    else:
                                                                        require invested[address(msg.sender)] + (invested[address(msg.sender)] * stor17) - sub_ecb7cb1b[address(msg.sender)] - (sub_ce138e64 * invested[address(msg.sender)] / 100) >= invested[address(msg.sender)]
                                                                        invested[address(msg.sender)] = invested[address(msg.sender)] + (invested[address(msg.sender)] * stor17) - sub_ecb7cb1b[address(msg.sender)] - (sub_ce138e64 * invested[address(msg.sender)] / 100)
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
                                                                       value (invested[address(msg.sender)] * stor17) - sub_ecb7cb1b[address(msg.sender)] wei
                                                                         gas 2300 * is_zero(value) wei
                                                                    if not ext_call.success:
                                                                        revert with ext_call.return_data[0 len return_data.size]
                                                                    else:
                                                        else:
                                                            if (block.timestamp * invested[address(msg.sender)]) - (lastInvest[address(msg.sender)] * invested[address(msg.sender)]) / 1234440 >= sub_ce138e64 * invested[address(msg.sender)] / 100:
                                                                require sub_ce138e64 * invested[address(msg.sender)] / 100 <= (block.timestamp * invested[address(msg.sender)]) - (lastInvest[address(msg.sender)] * invested[address(msg.sender)]) / 1234440
                                                                sub_ecb7cb1b[address(msg.sender)] += (block.timestamp * invested[address(msg.sender)]) - (lastInvest[address(msg.sender)] * invested[address(msg.sender)]) / 1234440
                                                                call msg.sender with:
                                                                   value sub_ce138e64 * invested[address(msg.sender)] / 100 wei
                                                                     gas 2300 * is_zero(value) wei
                                                                if not ext_call.success:
                                                                    revert with ext_call.return_data[0 len return_data.size]
                                                                else:
                                                                    require invested[address(msg.sender)] + ((block.timestamp * invested[address(msg.sender)]) - (lastInvest[address(msg.sender)] * invested[address(msg.sender)]) / 1234440) - (sub_ce138e64 * invested[address(msg.sender)] / 100) >= invested[address(msg.sender)]
                                                                    invested[address(msg.sender)] = invested[address(msg.sender)] + ((block.timestamp * invested[address(msg.sender)]) - (lastInvest[address(msg.sender)] * invested[address(msg.sender)]) / 1234440) - (sub_ce138e64 * invested[address(msg.sender)] / 100)
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
                                                        require block.timestamp - launchtime >= 360 * 24 * 3600
                                                        lastInvest[address(msg.sender)] = block.timestamp
                                                        lastWithdraw[address(msg.sender)] = block.timestamp
                                                        if (block.timestamp * invested[address(msg.sender)]) - (lastInvest[address(msg.sender)] * invested[address(msg.sender)]) / 1234440 >= (invested[address(msg.sender)] * stor17) - sub_ecb7cb1b[address(msg.sender)]:
                                                            if sub_ecb7cb1b[address(msg.sender)] >= invested[address(msg.sender)] * stor17:
                                                            else:
                                                                if (invested[address(msg.sender)] * stor17) - sub_ecb7cb1b[address(msg.sender)] >= 0:
                                                                    require 0 <= (invested[address(msg.sender)] * stor17) - sub_ecb7cb1b[address(msg.sender)]
                                                                    sub_ecb7cb1b[address(msg.sender)] = invested[address(msg.sender)] * stor17
                                                                    call msg.sender with:
                                                                         gas 2300 wei
                                                                    if not ext_call.success:
                                                                        revert with ext_call.return_data[0 len return_data.size]
                                                                    else:
                                                                        require invested[address(msg.sender)] + (invested[address(msg.sender)] * stor17) - sub_ecb7cb1b[address(msg.sender)] >= invested[address(msg.sender)]
                                                                        invested[address(msg.sender)] = invested[address(msg.sender)] + (invested[address(msg.sender)] * stor17) - sub_ecb7cb1b[address(msg.sender)]
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
                                                                       value (invested[address(msg.sender)] * stor17) - sub_ecb7cb1b[address(msg.sender)] wei
                                                                         gas 2300 * is_zero(value) wei
                                                                    if not ext_call.success:
                                                                        revert with ext_call.return_data[0 len return_data.size]
                                                                    else:
                                                        else:
                                                            if (block.timestamp * invested[address(msg.sender)]) - (lastInvest[address(msg.sender)] * invested[address(msg.sender)]) / 1234440 >= 0:
                                                                require 0 <= (block.timestamp * invested[address(msg.sender)]) - (lastInvest[address(msg.sender)] * invested[address(msg.sender)]) / 1234440
                                                                sub_ecb7cb1b[address(msg.sender)] += (block.timestamp * invested[address(msg.sender)]) - (lastInvest[address(msg.sender)] * invested[address(msg.sender)]) / 1234440
                                                                call msg.sender with:
                                                                     gas 2300 wei
                                                                if not ext_call.success:
                                                                    revert with ext_call.return_data[0 len return_data.size]
                                                                else:
                                                                    require invested[address(msg.sender)] + ((block.timestamp * invested[address(msg.sender)]) - (lastInvest[address(msg.sender)] * invested[address(msg.sender)]) / 1234440) >= invested[address(msg.sender)]
                                                                    invested[address(msg.sender)] += (block.timestamp * invested[address(msg.sender)]) - (lastInvest[address(msg.sender)] * invested[address(msg.sender)]) / 1234440
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
                                                require launchtime <= block.timestamp
                                                if sub_ce138e64:
                                                    require sub_ce138e64
                                                    require sub_ce138e64 * invested[address(msg.sender)] / sub_ce138e64 == invested[address(msg.sender)]
                                                    require ((block.timestamp * invested[address(msg.sender)]) - (lastInvest[address(msg.sender)] * invested[address(msg.sender)]) / 1234440) + (60 * (block.timestamp * invested[address(msg.sender)]) - (lastInvest[address(msg.sender)] * invested[address(msg.sender)]) / 1234440 / 100) > 0
                                                    require block.timestamp - launchtime >= 360 * 24 * 3600
                                                    lastInvest[address(msg.sender)] = block.timestamp
                                                    lastWithdraw[address(msg.sender)] = block.timestamp
                                                    if ((block.timestamp * invested[address(msg.sender)]) - (lastInvest[address(msg.sender)] * invested[address(msg.sender)]) / 1234440) + (60 * (block.timestamp * invested[address(msg.sender)]) - (lastInvest[address(msg.sender)] * invested[address(msg.sender)]) / 1234440 / 100) >= (invested[address(msg.sender)] * stor17) - sub_ecb7cb1b[address(msg.sender)]:
                                                        if sub_ecb7cb1b[address(msg.sender)] >= invested[address(msg.sender)] * stor17:
                                                        else:
                                                            if (invested[address(msg.sender)] * stor17) - sub_ecb7cb1b[address(msg.sender)] >= sub_ce138e64 * invested[address(msg.sender)] / 100:
                                                                require sub_ce138e64 * invested[address(msg.sender)] / 100 <= (invested[address(msg.sender)] * stor17) - sub_ecb7cb1b[address(msg.sender)]
                                                                sub_ecb7cb1b[address(msg.sender)] = invested[address(msg.sender)] * stor17
                                                                call msg.sender with:
                                                                   value sub_ce138e64 * invested[address(msg.sender)] / 100 wei
                                                                     gas 2300 * is_zero(value) wei
                                                                if not ext_call.success:
                                                                    revert with ext_call.return_data[0 len return_data.size]
                                                                else:
                                                                    require invested[address(msg.sender)] + (invested[address(msg.sender)] * stor17) - sub_ecb7cb1b[address(msg.sender)] - (sub_ce138e64 * invested[address(msg.sender)] / 100) >= invested[address(msg.sender)]
                                                                    invested[address(msg.sender)] = invested[address(msg.sender)] + (invested[address(msg.sender)] * stor17) - sub_ecb7cb1b[address(msg.sender)] - (sub_ce138e64 * invested[address(msg.sender)] / 100)
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
                                                                   value (invested[address(msg.sender)] * stor17) - sub_ecb7cb1b[address(msg.sender)] wei
                                                                     gas 2300 * is_zero(value) wei
                                                                if not ext_call.success:
                                                                    revert with ext_call.return_data[0 len return_data.size]
                                                                else:
                                                    else:
                                                        if ((block.timestamp * invested[address(msg.sender)]) - (lastInvest[address(msg.sender)] * invested[address(msg.sender)]) / 1234440) + (60 * (block.timestamp * invested[address(msg.sender)]) - (lastInvest[address(msg.sender)] * invested[address(msg.sender)]) / 1234440 / 100) >= sub_ce138e64 * invested[address(msg.sender)] / 100:
                                                            require sub_ce138e64 * invested[address(msg.sender)] / 100 <= ((block.timestamp * invested[address(msg.sender)]) - (lastInvest[address(msg.sender)] * invested[address(msg.sender)]) / 1234440) + (60 * (block.timestamp * invested[address(msg.sender)]) - (lastInvest[address(msg.sender)] * invested[address(msg.sender)]) / 1234440 / 100)
                                                            sub_ecb7cb1b[address(msg.sender)] = sub_ecb7cb1b[address(msg.sender)] + ((block.timestamp * invested[address(msg.sender)]) - (lastInvest[address(msg.sender)] * invested[address(msg.sender)]) / 1234440) + (60 * (block.timestamp * invested[address(msg.sender)]) - (lastInvest[address(msg.sender)] * invested[address(msg.sender)]) / 1234440 / 100)
                                                            call msg.sender with:
                                                               value sub_ce138e64 * invested[address(msg.sender)] / 100 wei
                                                                 gas 2300 * is_zero(value) wei
                                                            if not ext_call.success:
                                                                revert with ext_call.return_data[0 len return_data.size]
                                                            else:
                                                                require invested[address(msg.sender)] + ((block.timestamp * invested[address(msg.sender)]) - (lastInvest[address(msg.sender)] * invested[address(msg.sender)]) / 1234440) + (60 * (block.timestamp * invested[address(msg.sender)]) - (lastInvest[address(msg.sender)] * invested[address(msg.sender)]) / 1234440 / 100) - (sub_ce138e64 * invested[address(msg.sender)] / 100) >= invested[address(msg.sender)]
                                                                invested[address(msg.sender)] = invested[address(msg.sender)] + ((block.timestamp * invested[address(msg.sender)]) - (lastInvest[address(msg.sender)] * invested[address(msg.sender)]) / 1234440) + (60 * (block.timestamp * invested[address(msg.sender)]) - (lastInvest[address(msg.sender)] * invested[address(msg.sender)]) / 1234440 / 100) - (sub_ce138e64 * invested[address(msg.sender)] / 100)
                                                        else:
                                                            sub_ecb7cb1b[address(msg.sender)] = sub_ecb7cb1b[address(msg.sender)] + ((block.timestamp * invested[address(msg.sender)]) - (lastInvest[address(msg.sender)] * invested[address(msg.sender)]) / 1234440) + (60 * (block.timestamp * invested[address(msg.sender)]) - (lastInvest[address(msg.sender)] * invested[address(msg.sender)]) / 1234440 / 100)
                                                            call msg.sender with:
                                                               value ((block.timestamp * invested[address(msg.sender)]) - (lastInvest[address(msg.sender)] * invested[address(msg.sender)]) / 1234440) + (60 * (block.timestamp * invested[address(msg.sender)]) - (lastInvest[address(msg.sender)] * invested[address(msg.sender)]) / 1234440 / 100) wei
                                                                 gas 2300 * is_zero(value) wei
                                                            if not ext_call.success:
                                                                revert with ext_call.return_data[0 len return_data.size]
                                                            else:
                                                else:
                                                    require ((block.timestamp * invested[address(msg.sender)]) - (lastInvest[address(msg.sender)] * invested[address(msg.sender)]) / 1234440) + (60 * (block.timestamp * invested[address(msg.sender)]) - (lastInvest[address(msg.sender)] * invested[address(msg.sender)]) / 1234440 / 100) > 0
                                                    require block.timestamp - launchtime >= 360 * 24 * 3600
                                                    lastInvest[address(msg.sender)] = block.timestamp
                                                    lastWithdraw[address(msg.sender)] = block.timestamp
                                                    if ((block.timestamp * invested[address(msg.sender)]) - (lastInvest[address(msg.sender)] * invested[address(msg.sender)]) / 1234440) + (60 * (block.timestamp * invested[address(msg.sender)]) - (lastInvest[address(msg.sender)] * invested[address(msg.sender)]) / 1234440 / 100) >= (invested[address(msg.sender)] * stor17) - sub_ecb7cb1b[address(msg.sender)]:
                                                        if sub_ecb7cb1b[address(msg.sender)] >= invested[address(msg.sender)] * stor17:
                                                        else:
                                                            if (invested[address(msg.sender)] * stor17) - sub_ecb7cb1b[address(msg.sender)] >= 0:
                                                                require 0 <= (invested[address(msg.sender)] * stor17) - sub_ecb7cb1b[address(msg.sender)]
                                                                sub_ecb7cb1b[address(msg.sender)] = invested[address(msg.sender)] * stor17
                                                                call msg.sender with:
                                                                     gas 2300 wei
                                                                if not ext_call.success:
                                                                    revert with ext_call.return_data[0 len return_data.size]
                                                                else:
                                                                    require invested[address(msg.sender)] + (invested[address(msg.sender)] * stor17) - sub_ecb7cb1b[address(msg.sender)] >= invested[address(msg.sender)]
                                                                    invested[address(msg.sender)] = invested[address(msg.sender)] + (invested[address(msg.sender)] * stor17) - sub_ecb7cb1b[address(msg.sender)]
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
                                                                   value (invested[address(msg.sender)] * stor17) - sub_ecb7cb1b[address(msg.sender)] wei
                                                                     gas 2300 * is_zero(value) wei
                                                                if not ext_call.success:
                                                                    revert with ext_call.return_data[0 len return_data.size]
                                                                else:
                                                    else:
                                                        if ((block.timestamp * invested[address(msg.sender)]) - (lastInvest[address(msg.sender)] * invested[address(msg.sender)]) / 1234440) + (60 * (block.timestamp * invested[address(msg.sender)]) - (lastInvest[address(msg.sender)] * invested[address(msg.sender)]) / 1234440 / 100) >= 0:
                                                            require 0 <= ((block.timestamp * invested[address(msg.sender)]) - (lastInvest[address(msg.sender)] * invested[address(msg.sender)]) / 1234440) + (60 * (block.timestamp * invested[address(msg.sender)]) - (lastInvest[address(msg.sender)] * invested[address(msg.sender)]) / 1234440 / 100)
                                                            sub_ecb7cb1b[address(msg.sender)] = sub_ecb7cb1b[address(msg.sender)] + ((block.timestamp * invested[address(msg.sender)]) - (lastInvest[address(msg.sender)] * invested[address(msg.sender)]) / 1234440) + (60 * (block.timestamp * invested[address(msg.sender)]) - (lastInvest[address(msg.sender)] * invested[address(msg.sender)]) / 1234440 / 100)
                                                            call msg.sender with:
                                                                 gas 2300 wei
                                                            if not ext_call.success:
                                                                revert with ext_call.return_data[0 len return_data.size]
                                                            else:
                                                                require invested[address(msg.sender)] + ((block.timestamp * invested[address(msg.sender)]) - (lastInvest[address(msg.sender)] * invested[address(msg.sender)]) / 1234440) + (60 * (block.timestamp * invested[address(msg.sender)]) - (lastInvest[address(msg.sender)] * invested[address(msg.sender)]) / 1234440 / 100) >= invested[address(msg.sender)]
                                                                invested[address(msg.sender)] = invested[address(msg.sender)] + ((block.timestamp * invested[address(msg.sender)]) - (lastInvest[address(msg.sender)] * invested[address(msg.sender)]) / 1234440) + (60 * (block.timestamp * invested[address(msg.sender)]) - (lastInvest[address(msg.sender)] * invested[address(msg.sender)]) / 1234440 / 100)
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
                                                require launchtime <= block.timestamp
                                                if sub_ce138e64:
                                                    require sub_ce138e64
                                                    require sub_ce138e64 * invested[address(msg.sender)] / sub_ce138e64 == invested[address(msg.sender)]
                                                    require (block.timestamp * invested[address(msg.sender)]) - (lastInvest[address(msg.sender)] * invested[address(msg.sender)]) / 1234440 > 0
                                                    require block.timestamp - launchtime >= 360 * 24 * 3600
                                                    lastInvest[address(msg.sender)] = block.timestamp
                                                    lastWithdraw[address(msg.sender)] = block.timestamp
                                                    if (block.timestamp * invested[address(msg.sender)]) - (lastInvest[address(msg.sender)] * invested[address(msg.sender)]) / 1234440 >= (invested[address(msg.sender)] * stor17) - sub_ecb7cb1b[address(msg.sender)]:
                                                        if sub_ecb7cb1b[address(msg.sender)] >= invested[address(msg.sender)] * stor17:
                                                        else:
                                                            if (invested[address(msg.sender)] * stor17) - sub_ecb7cb1b[address(msg.sender)] >= sub_ce138e64 * invested[address(msg.sender)] / 100:
                                                                require sub_ce138e64 * invested[address(msg.sender)] / 100 <= (invested[address(msg.sender)] * stor17) - sub_ecb7cb1b[address(msg.sender)]
                                                                sub_ecb7cb1b[address(msg.sender)] = invested[address(msg.sender)] * stor17
                                                                call msg.sender with:
                                                                   value sub_ce138e64 * invested[address(msg.sender)] / 100 wei
                                                                     gas 2300 * is_zero(value) wei
                                                                if not ext_call.success:
                                                                    revert with ext_call.return_data[0 len return_data.size]
                                                                else:
                                                                    require invested[address(msg.sender)] + (invested[address(msg.sender)] * stor17) - sub_ecb7cb1b[address(msg.sender)] - (sub_ce138e64 * invested[address(msg.sender)] / 100) >= invested[address(msg.sender)]
                                                                    invested[address(msg.sender)] = invested[address(msg.sender)] + (invested[address(msg.sender)] * stor17) - sub_ecb7cb1b[address(msg.sender)] - (sub_ce138e64 * invested[address(msg.sender)] / 100)
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
                                                                   value (invested[address(msg.sender)] * stor17) - sub_ecb7cb1b[address(msg.sender)] wei
                                                                     gas 2300 * is_zero(value) wei
                                                                if not ext_call.success:
                                                                    revert with ext_call.return_data[0 len return_data.size]
                                                                else:
                                                    else:
                                                        if (block.timestamp * invested[address(msg.sender)]) - (lastInvest[address(msg.sender)] * invested[address(msg.sender)]) / 1234440 >= sub_ce138e64 * invested[address(msg.sender)] / 100:
                                                            require sub_ce138e64 * invested[address(msg.sender)] / 100 <= (block.timestamp * invested[address(msg.sender)]) - (lastInvest[address(msg.sender)] * invested[address(msg.sender)]) / 1234440
                                                            sub_ecb7cb1b[address(msg.sender)] += (block.timestamp * invested[address(msg.sender)]) - (lastInvest[address(msg.sender)] * invested[address(msg.sender)]) / 1234440
                                                            call msg.sender with:
                                                               value sub_ce138e64 * invested[address(msg.sender)] / 100 wei
                                                                 gas 2300 * is_zero(value) wei
                                                            if not ext_call.success:
                                                                revert with ext_call.return_data[0 len return_data.size]
                                                            else:
                                                                require invested[address(msg.sender)] + ((block.timestamp * invested[address(msg.sender)]) - (lastInvest[address(msg.sender)] * invested[address(msg.sender)]) / 1234440) - (sub_ce138e64 * invested[address(msg.sender)] / 100) >= invested[address(msg.sender)]
                                                                invested[address(msg.sender)] = invested[address(msg.sender)] + ((block.timestamp * invested[address(msg.sender)]) - (lastInvest[address(msg.sender)] * invested[address(msg.sender)]) / 1234440) - (sub_ce138e64 * invested[address(msg.sender)] / 100)
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
                                                    require block.timestamp - launchtime >= 360 * 24 * 3600
                                                    lastInvest[address(msg.sender)] = block.timestamp
                                                    lastWithdraw[address(msg.sender)] = block.timestamp
                                                    if (block.timestamp * invested[address(msg.sender)]) - (lastInvest[address(msg.sender)] * invested[address(msg.sender)]) / 1234440 >= (invested[address(msg.sender)] * stor17) - sub_ecb7cb1b[address(msg.sender)]:
                                                        if sub_ecb7cb1b[address(msg.sender)] >= invested[address(msg.sender)] * stor17:
                                                        else:
                                                            if (invested[address(msg.sender)] * stor17) - sub_ecb7cb1b[address(msg.sender)] >= 0:
                                                                require 0 <= (invested[address(msg.sender)] * stor17) - sub_ecb7cb1b[address(msg.sender)]
                                                                sub_ecb7cb1b[address(msg.sender)] = invested[address(msg.sender)] * stor17
                                                                call msg.sender with:
                                                                     gas 2300 wei
                                                                if not ext_call.success:
                                                                    revert with ext_call.return_data[0 len return_data.size]
                                                                else:
                                                                    require invested[address(msg.sender)] + (invested[address(msg.sender)] * stor17) - sub_ecb7cb1b[address(msg.sender)] >= invested[address(msg.sender)]
                                                                    invested[address(msg.sender)] = invested[address(msg.sender)] + (invested[address(msg.sender)] * stor17) - sub_ecb7cb1b[address(msg.sender)]
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
                                                                   value (invested[address(msg.sender)] * stor17) - sub_ecb7cb1b[address(msg.sender)] wei
                                                                     gas 2300 * is_zero(value) wei
                                                                if not ext_call.success:
                                                                    revert with ext_call.return_data[0 len return_data.size]
                                                                else:
                                                    else:
                                                        if (block.timestamp * invested[address(msg.sender)]) - (lastInvest[address(msg.sender)] * invested[address(msg.sender)]) / 1234440 >= 0:
                                                            require 0 <= (block.timestamp * invested[address(msg.sender)]) - (lastInvest[address(msg.sender)] * invested[address(msg.sender)]) / 1234440
                                                            sub_ecb7cb1b[address(msg.sender)] += (block.timestamp * invested[address(msg.sender)]) - (lastInvest[address(msg.sender)] * invested[address(msg.sender)]) / 1234440
                                                            call msg.sender with:
                                                                 gas 2300 wei
                                                            if not ext_call.success:
                                                                revert with ext_call.return_data[0 len return_data.size]
                                                            else:
                                                                require invested[address(msg.sender)] + ((block.timestamp * invested[address(msg.sender)]) - (lastInvest[address(msg.sender)] * invested[address(msg.sender)]) / 1234440) >= invested[address(msg.sender)]
                                                                invested[address(msg.sender)] += (block.timestamp * invested[address(msg.sender)]) - (lastInvest[address(msg.sender)] * invested[address(msg.sender)]) / 1234440
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
                                        require launchtime <= block.timestamp
                                        if sub_ce138e64:
                                            require sub_ce138e64
                                            require sub_ce138e64 * invested[address(msg.sender)] / sub_ce138e64 == invested[address(msg.sender)]
                                            require ((block.timestamp * invested[address(msg.sender)]) - (lastInvest[address(msg.sender)] * invested[address(msg.sender)]) / 1234440) + (40 * (block.timestamp * invested[address(msg.sender)]) - (lastInvest[address(msg.sender)] * invested[address(msg.sender)]) / 1234440 / 100) > 0
                                            require block.timestamp - launchtime >= 360 * 24 * 3600
                                            lastInvest[address(msg.sender)] = block.timestamp
                                            lastWithdraw[address(msg.sender)] = block.timestamp
                                            if ((block.timestamp * invested[address(msg.sender)]) - (lastInvest[address(msg.sender)] * invested[address(msg.sender)]) / 1234440) + (40 * (block.timestamp * invested[address(msg.sender)]) - (lastInvest[address(msg.sender)] * invested[address(msg.sender)]) / 1234440 / 100) >= (invested[address(msg.sender)] * stor17) - sub_ecb7cb1b[address(msg.sender)]:
                                                if sub_ecb7cb1b[address(msg.sender)] >= invested[address(msg.sender)] * stor17:
                                                else:
                                                    if (invested[address(msg.sender)] * stor17) - sub_ecb7cb1b[address(msg.sender)] >= sub_ce138e64 * invested[address(msg.sender)] / 100:
                                                        require sub_ce138e64 * invested[address(msg.sender)] / 100 <= (invested[address(msg.sender)] * stor17) - sub_ecb7cb1b[address(msg.sender)]
                                                        sub_ecb7cb1b[address(msg.sender)] = invested[address(msg.sender)] * stor17
                                                        call msg.sender with:
                                                           value sub_ce138e64 * invested[address(msg.sender)] / 100 wei
                                                             gas 2300 * is_zero(value) wei
                                                        if not ext_call.success:
                                                            revert with ext_call.return_data[0 len return_data.size]
                                                        else:
                                                            require invested[address(msg.sender)] + (invested[address(msg.sender)] * stor17) - sub_ecb7cb1b[address(msg.sender)] - (sub_ce138e64 * invested[address(msg.sender)] / 100) >= invested[address(msg.sender)]
                                                            invested[address(msg.sender)] = invested[address(msg.sender)] + (invested[address(msg.sender)] * stor17) - sub_ecb7cb1b[address(msg.sender)] - (sub_ce138e64 * invested[address(msg.sender)] / 100)
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
                                                           value (invested[address(msg.sender)] * stor17) - sub_ecb7cb1b[address(msg.sender)] wei
                                                             gas 2300 * is_zero(value) wei
                                                        if not ext_call.success:
                                                            revert with ext_call.return_data[0 len return_data.size]
                                                        else:
                                            else:
                                                if ((block.timestamp * invested[address(msg.sender)]) - (lastInvest[address(msg.sender)] * invested[address(msg.sender)]) / 1234440) + (40 * (block.timestamp * invested[address(msg.sender)]) - (lastInvest[address(msg.sender)] * invested[address(msg.sender)]) / 1234440 / 100) >= sub_ce138e64 * invested[address(msg.sender)] / 100:
                                                    require sub_ce138e64 * invested[address(msg.sender)] / 100 <= ((block.timestamp * invested[address(msg.sender)]) - (lastInvest[address(msg.sender)] * invested[address(msg.sender)]) / 1234440) + (40 * (block.timestamp * invested[address(msg.sender)]) - (lastInvest[address(msg.sender)] * invested[address(msg.sender)]) / 1234440 / 100)
                                                    sub_ecb7cb1b[address(msg.sender)] = sub_ecb7cb1b[address(msg.sender)] + ((block.timestamp * invested[address(msg.sender)]) - (lastInvest[address(msg.sender)] * invested[address(msg.sender)]) / 1234440) + (40 * (block.timestamp * invested[address(msg.sender)]) - (lastInvest[address(msg.sender)] * invested[address(msg.sender)]) / 1234440 / 100)
                                                    call msg.sender with:
                                                       value sub_ce138e64 * invested[address(msg.sender)] / 100 wei
                                                         gas 2300 * is_zero(value) wei
                                                    if not ext_call.success:
                                                        revert with ext_call.return_data[0 len return_data.size]
                                                    else:
                                                        require invested[address(msg.sender)] + ((block.timestamp * invested[address(msg.sender)]) - (lastInvest[address(msg.sender)] * invested[address(msg.sender)]) / 1234440) + (40 * (block.timestamp * invested[address(msg.sender)]) - (lastInvest[address(msg.sender)] * invested[address(msg.sender)]) / 1234440 / 100) - (sub_ce138e64 * invested[address(msg.sender)] / 100) >= invested[address(msg.sender)]
                                                        invested[address(msg.sender)] = invested[address(msg.sender)] + ((block.timestamp * invested[address(msg.sender)]) - (lastInvest[address(msg.sender)] * invested[address(msg.sender)]) / 1234440) + (40 * (block.timestamp * invested[address(msg.sender)]) - (lastInvest[address(msg.sender)] * invested[address(msg.sender)]) / 1234440 / 100) - (sub_ce138e64 * invested[address(msg.sender)] / 100)
                                                else:
                                                    sub_ecb7cb1b[address(msg.sender)] = sub_ecb7cb1b[address(msg.sender)] + ((block.timestamp * invested[address(msg.sender)]) - (lastInvest[address(msg.sender)] * invested[address(msg.sender)]) / 1234440) + (40 * (block.timestamp * invested[address(msg.sender)]) - (lastInvest[address(msg.sender)] * invested[address(msg.sender)]) / 1234440 / 100)
                                                    call msg.sender with:
                                                       value ((block.timestamp * invested[address(msg.sender)]) - (lastInvest[address(msg.sender)] * invested[address(msg.sender)]) / 1234440) + (40 * (block.timestamp * invested[address(msg.sender)]) - (lastInvest[address(msg.sender)] * invested[address(msg.sender)]) / 1234440 / 100) wei
                                                         gas 2300 * is_zero(value) wei
                                                    if not ext_call.success:
                                                        revert with ext_call.return_data[0 len return_data.size]
                                                    else:
                                        else:
                                            require ((block.timestamp * invested[address(msg.sender)]) - (lastInvest[address(msg.sender)] * invested[address(msg.sender)]) / 1234440) + (40 * (block.timestamp * invested[address(msg.sender)]) - (lastInvest[address(msg.sender)] * invested[address(msg.sender)]) / 1234440 / 100) > 0
                                            require block.timestamp - launchtime >= 360 * 24 * 3600
                                            lastInvest[address(msg.sender)] = block.timestamp
                                            lastWithdraw[address(msg.sender)] = block.timestamp
                                            if ((block.timestamp * invested[address(msg.sender)]) - (lastInvest[address(msg.sender)] * invested[address(msg.sender)]) / 1234440) + (40 * (block.timestamp * invested[address(msg.sender)]) - (lastInvest[address(msg.sender)] * invested[address(msg.sender)]) / 1234440 / 100) >= (invested[address(msg.sender)] * stor17) - sub_ecb7cb1b[address(msg.sender)]:
                                                if sub_ecb7cb1b[address(msg.sender)] >= invested[address(msg.sender)] * stor17:
                                                else:
                                                    if (invested[address(msg.sender)] * stor17) - sub_ecb7cb1b[address(msg.sender)] >= 0:
                                                        require 0 <= (invested[address(msg.sender)] * stor17) - sub_ecb7cb1b[address(msg.sender)]
                                                        sub_ecb7cb1b[address(msg.sender)] = invested[address(msg.sender)] * stor17
                                                        call msg.sender with:
                                                             gas 2300 wei
                                                        if not ext_call.success:
                                                            revert with ext_call.return_data[0 len return_data.size]
                                                        else:
                                                            require invested[address(msg.sender)] + (invested[address(msg.sender)] * stor17) - sub_ecb7cb1b[address(msg.sender)] >= invested[address(msg.sender)]
                                                            invested[address(msg.sender)] = invested[address(msg.sender)] + (invested[address(msg.sender)] * stor17) - sub_ecb7cb1b[address(msg.sender)]
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
                                                           value (invested[address(msg.sender)] * stor17) - sub_ecb7cb1b[address(msg.sender)] wei
                                                             gas 2300 * is_zero(value) wei
                                                        if not ext_call.success:
                                                            revert with ext_call.return_data[0 len return_data.size]
                                                        else:
                                            else:
                                                if ((block.timestamp * invested[address(msg.sender)]) - (lastInvest[address(msg.sender)] * invested[address(msg.sender)]) / 1234440) + (40 * (block.timestamp * invested[address(msg.sender)]) - (lastInvest[address(msg.sender)] * invested[address(msg.sender)]) / 1234440 / 100) >= 0:
                                                    require 0 <= ((block.timestamp * invested[address(msg.sender)]) - (lastInvest[address(msg.sender)] * invested[address(msg.sender)]) / 1234440) + (40 * (block.timestamp * invested[address(msg.sender)]) - (lastInvest[address(msg.sender)] * invested[address(msg.sender)]) / 1234440 / 100)
                                                    sub_ecb7cb1b[address(msg.sender)] = sub_ecb7cb1b[address(msg.sender)] + ((block.timestamp * invested[address(msg.sender)]) - (lastInvest[address(msg.sender)] * invested[address(msg.sender)]) / 1234440) + (40 * (block.timestamp * invested[address(msg.sender)]) - (lastInvest[address(msg.sender)] * invested[address(msg.sender)]) / 1234440 / 100)
                                                    call msg.sender with:
                                                         gas 2300 wei
                                                    if not ext_call.success:
                                                        revert with ext_call.return_data[0 len return_data.size]
                                                    else:
                                                        require invested[address(msg.sender)] + ((block.timestamp * invested[address(msg.sender)]) - (lastInvest[address(msg.sender)] * invested[address(msg.sender)]) / 1234440) + (40 * (block.timestamp * invested[address(msg.sender)]) - (lastInvest[address(msg.sender)] * invested[address(msg.sender)]) / 1234440 / 100) >= invested[address(msg.sender)]
                                                        invested[address(msg.sender)] = invested[address(msg.sender)] + ((block.timestamp * invested[address(msg.sender)]) - (lastInvest[address(msg.sender)] * invested[address(msg.sender)]) / 1234440) + (40 * (block.timestamp * invested[address(msg.sender)]) - (lastInvest[address(msg.sender)] * invested[address(msg.sender)]) / 1234440 / 100)
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
                                        require launchtime <= block.timestamp
                                        if sub_ce138e64:
                                            require sub_ce138e64
                                            require sub_ce138e64 * invested[address(msg.sender)] / sub_ce138e64 == invested[address(msg.sender)]
                                            require (block.timestamp * invested[address(msg.sender)]) - (lastInvest[address(msg.sender)] * invested[address(msg.sender)]) / 1234440 > 0
                                            require block.timestamp - launchtime >= 360 * 24 * 3600
                                            lastInvest[address(msg.sender)] = block.timestamp
                                            lastWithdraw[address(msg.sender)] = block.timestamp
                                            if (block.timestamp * invested[address(msg.sender)]) - (lastInvest[address(msg.sender)] * invested[address(msg.sender)]) / 1234440 >= (invested[address(msg.sender)] * stor17) - sub_ecb7cb1b[address(msg.sender)]:
                                                if sub_ecb7cb1b[address(msg.sender)] >= invested[address(msg.sender)] * stor17:
                                                else:
                                                    if (invested[address(msg.sender)] * stor17) - sub_ecb7cb1b[address(msg.sender)] >= sub_ce138e64 * invested[address(msg.sender)] / 100:
                                                        require sub_ce138e64 * invested[address(msg.sender)] / 100 <= (invested[address(msg.sender)] * stor17) - sub_ecb7cb1b[address(msg.sender)]
                                                        sub_ecb7cb1b[address(msg.sender)] = invested[address(msg.sender)] * stor17
                                                        call msg.sender with:
                                                           value sub_ce138e64 * invested[address(msg.sender)] / 100 wei
                                                             gas 2300 * is_zero(value) wei
                                                        if not ext_call.success:
                                                            revert with ext_call.return_data[0 len return_data.size]
                                                        else:
                                                            require invested[address(msg.sender)] + (invested[address(msg.sender)] * stor17) - sub_ecb7cb1b[address(msg.sender)] - (sub_ce138e64 * invested[address(msg.sender)] / 100) >= invested[address(msg.sender)]
                                                            invested[address(msg.sender)] = invested[address(msg.sender)] + (invested[address(msg.sender)] * stor17) - sub_ecb7cb1b[address(msg.sender)] - (sub_ce138e64 * invested[address(msg.sender)] / 100)
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
                                                           value (invested[address(msg.sender)] * stor17) - sub_ecb7cb1b[address(msg.sender)] wei
                                                             gas 2300 * is_zero(value) wei
                                                        if not ext_call.success:
                                                            revert with ext_call.return_data[0 len return_data.size]
                                                        else:
                                            else:
                                                if (block.timestamp * invested[address(msg.sender)]) - (lastInvest[address(msg.sender)] * invested[address(msg.sender)]) / 1234440 >= sub_ce138e64 * invested[address(msg.sender)] / 100:
                                                    require sub_ce138e64 * invested[address(msg.sender)] / 100 <= (block.timestamp * invested[address(msg.sender)]) - (lastInvest[address(msg.sender)] * invested[address(msg.sender)]) / 1234440
                                                    sub_ecb7cb1b[address(msg.sender)] += (block.timestamp * invested[address(msg.sender)]) - (lastInvest[address(msg.sender)] * invested[address(msg.sender)]) / 1234440
                                                    call msg.sender with:
                                                       value sub_ce138e64 * invested[address(msg.sender)] / 100 wei
                                                         gas 2300 * is_zero(value) wei
                                                    if not ext_call.success:
                                                        revert with ext_call.return_data[0 len return_data.size]
                                                    else:
                                                        require invested[address(msg.sender)] + ((block.timestamp * invested[address(msg.sender)]) - (lastInvest[address(msg.sender)] * invested[address(msg.sender)]) / 1234440) - (sub_ce138e64 * invested[address(msg.sender)] / 100) >= invested[address(msg.sender)]
                                                        invested[address(msg.sender)] = invested[address(msg.sender)] + ((block.timestamp * invested[address(msg.sender)]) - (lastInvest[address(msg.sender)] * invested[address(msg.sender)]) / 1234440) - (sub_ce138e64 * invested[address(msg.sender)] / 100)
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
                                            require block.timestamp - launchtime >= 360 * 24 * 3600
                                            lastInvest[address(msg.sender)] = block.timestamp
                                            lastWithdraw[address(msg.sender)] = block.timestamp
                                            if (block.timestamp * invested[address(msg.sender)]) - (lastInvest[address(msg.sender)] * invested[address(msg.sender)]) / 1234440 >= (invested[address(msg.sender)] * stor17) - sub_ecb7cb1b[address(msg.sender)]:
                                                if sub_ecb7cb1b[address(msg.sender)] >= invested[address(msg.sender)] * stor17:
                                                else:
                                                    if (invested[address(msg.sender)] * stor17) - sub_ecb7cb1b[address(msg.sender)] >= 0:
                                                        require 0 <= (invested[address(msg.sender)] * stor17) - sub_ecb7cb1b[address(msg.sender)]
                                                        sub_ecb7cb1b[address(msg.sender)] = invested[address(msg.sender)] * stor17
                                                        call msg.sender with:
                                                             gas 2300 wei
                                                        if not ext_call.success:
                                                            revert with ext_call.return_data[0 len return_data.size]
                                                        else:
                                                            require invested[address(msg.sender)] + (invested[address(msg.sender)] * stor17) - sub_ecb7cb1b[address(msg.sender)] >= invested[address(msg.sender)]
                                                            invested[address(msg.sender)] = invested[address(msg.sender)] + (invested[address(msg.sender)] * stor17) - sub_ecb7cb1b[address(msg.sender)]
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
                                                           value (invested[address(msg.sender)] * stor17) - sub_ecb7cb1b[address(msg.sender)] wei
                                                             gas 2300 * is_zero(value) wei
                                                        if not ext_call.success:
                                                            revert with ext_call.return_data[0 len return_data.size]
                                                        else:
                                            else:
                                                if (block.timestamp * invested[address(msg.sender)]) - (lastInvest[address(msg.sender)] * invested[address(msg.sender)]) / 1234440 >= 0:
                                                    require 0 <= (block.timestamp * invested[address(msg.sender)]) - (lastInvest[address(msg.sender)] * invested[address(msg.sender)]) / 1234440
                                                    sub_ecb7cb1b[address(msg.sender)] += (block.timestamp * invested[address(msg.sender)]) - (lastInvest[address(msg.sender)] * invested[address(msg.sender)]) / 1234440
                                                    call msg.sender with:
                                                         gas 2300 wei
                                                    if not ext_call.success:
                                                        revert with ext_call.return_data[0 len return_data.size]
                                                    else:
                                                        require invested[address(msg.sender)] + ((block.timestamp * invested[address(msg.sender)]) - (lastInvest[address(msg.sender)] * invested[address(msg.sender)]) / 1234440) >= invested[address(msg.sender)]
                                                        invested[address(msg.sender)] += (block.timestamp * invested[address(msg.sender)]) - (lastInvest[address(msg.sender)] * invested[address(msg.sender)]) / 1234440
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
                                require launchtime <= block.timestamp
                                if sub_ce138e64:
                                    require sub_ce138e64
                                    require sub_ce138e64 * invested[address(msg.sender)] / sub_ce138e64 == invested[address(msg.sender)]
                                    require ((block.timestamp * invested[address(msg.sender)]) - (lastInvest[address(msg.sender)] * invested[address(msg.sender)]) / 1234440) + (20 * (block.timestamp * invested[address(msg.sender)]) - (lastInvest[address(msg.sender)] * invested[address(msg.sender)]) / 1234440 / 100) > 0
                                    require block.timestamp - launchtime >= 360 * 24 * 3600
                                    lastInvest[address(msg.sender)] = block.timestamp
                                    lastWithdraw[address(msg.sender)] = block.timestamp
                                    if ((block.timestamp * invested[address(msg.sender)]) - (lastInvest[address(msg.sender)] * invested[address(msg.sender)]) / 1234440) + (20 * (block.timestamp * invested[address(msg.sender)]) - (lastInvest[address(msg.sender)] * invested[address(msg.sender)]) / 1234440 / 100) >= (invested[address(msg.sender)] * stor17) - sub_ecb7cb1b[address(msg.sender)]:
                                        if sub_ecb7cb1b[address(msg.sender)] >= invested[address(msg.sender)] * stor17:
                                        else:
                                            if (invested[address(msg.sender)] * stor17) - sub_ecb7cb1b[address(msg.sender)] >= sub_ce138e64 * invested[address(msg.sender)] / 100:
                                                require sub_ce138e64 * invested[address(msg.sender)] / 100 <= (invested[address(msg.sender)] * stor17) - sub_ecb7cb1b[address(msg.sender)]
                                                sub_ecb7cb1b[address(msg.sender)] = invested[address(msg.sender)] * stor17
                                                call msg.sender with:
                                                   value sub_ce138e64 * invested[address(msg.sender)] / 100 wei
                                                     gas 2300 * is_zero(value) wei
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                else:
                                                    require invested[address(msg.sender)] + (invested[address(msg.sender)] * stor17) - sub_ecb7cb1b[address(msg.sender)] - (sub_ce138e64 * invested[address(msg.sender)] / 100) >= invested[address(msg.sender)]
                                                    invested[address(msg.sender)] = invested[address(msg.sender)] + (invested[address(msg.sender)] * stor17) - sub_ecb7cb1b[address(msg.sender)] - (sub_ce138e64 * invested[address(msg.sender)] / 100)
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
                                                   value (invested[address(msg.sender)] * stor17) - sub_ecb7cb1b[address(msg.sender)] wei
                                                     gas 2300 * is_zero(value) wei
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                else:
                                    else:
                                        if ((block.timestamp * invested[address(msg.sender)]) - (lastInvest[address(msg.sender)] * invested[address(msg.sender)]) / 1234440) + (20 * (block.timestamp * invested[address(msg.sender)]) - (lastInvest[address(msg.sender)] * invested[address(msg.sender)]) / 1234440 / 100) >= sub_ce138e64 * invested[address(msg.sender)] / 100:
                                            require sub_ce138e64 * invested[address(msg.sender)] / 100 <= ((block.timestamp * invested[address(msg.sender)]) - (lastInvest[address(msg.sender)] * invested[address(msg.sender)]) / 1234440) + (20 * (block.timestamp * invested[address(msg.sender)]) - (lastInvest[address(msg.sender)] * invested[address(msg.sender)]) / 1234440 / 100)
                                            sub_ecb7cb1b[address(msg.sender)] = sub_ecb7cb1b[address(msg.sender)] + ((block.timestamp * invested[address(msg.sender)]) - (lastInvest[address(msg.sender)] * invested[address(msg.sender)]) / 1234440) + (20 * (block.timestamp * invested[address(msg.sender)]) - (lastInvest[address(msg.sender)] * invested[address(msg.sender)]) / 1234440 / 100)
                                            call msg.sender with:
                                               value sub_ce138e64 * invested[address(msg.sender)] / 100 wei
                                                 gas 2300 * is_zero(value) wei
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            else:
                                                require invested[address(msg.sender)] + ((block.timestamp * invested[address(msg.sender)]) - (lastInvest[address(msg.sender)] * invested[address(msg.sender)]) / 1234440) + (20 * (block.timestamp * invested[address(msg.sender)]) - (lastInvest[address(msg.sender)] * invested[address(msg.sender)]) / 1234440 / 100) - (sub_ce138e64 * invested[address(msg.sender)] / 100) >= invested[address(msg.sender)]
                                                invested[address(msg.sender)] = invested[address(msg.sender)] + ((block.timestamp * invested[address(msg.sender)]) - (lastInvest[address(msg.sender)] * invested[address(msg.sender)]) / 1234440) + (20 * (block.timestamp * invested[address(msg.sender)]) - (lastInvest[address(msg.sender)] * invested[address(msg.sender)]) / 1234440 / 100) - (sub_ce138e64 * invested[address(msg.sender)] / 100)
                                        else:
                                            sub_ecb7cb1b[address(msg.sender)] = sub_ecb7cb1b[address(msg.sender)] + ((block.timestamp * invested[address(msg.sender)]) - (lastInvest[address(msg.sender)] * invested[address(msg.sender)]) / 1234440) + (20 * (block.timestamp * invested[address(msg.sender)]) - (lastInvest[address(msg.sender)] * invested[address(msg.sender)]) / 1234440 / 100)
                                            call msg.sender with:
                                               value ((block.timestamp * invested[address(msg.sender)]) - (lastInvest[address(msg.sender)] * invested[address(msg.sender)]) / 1234440) + (20 * (block.timestamp * invested[address(msg.sender)]) - (lastInvest[address(msg.sender)] * invested[address(msg.sender)]) / 1234440 / 100) wei
                                                 gas 2300 * is_zero(value) wei
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            else:
                                else:
                                    require ((block.timestamp * invested[address(msg.sender)]) - (lastInvest[address(msg.sender)] * invested[address(msg.sender)]) / 1234440) + (20 * (block.timestamp * invested[address(msg.sender)]) - (lastInvest[address(msg.sender)] * invested[address(msg.sender)]) / 1234440 / 100) > 0
                                    require block.timestamp - launchtime >= 360 * 24 * 3600
                                    lastInvest[address(msg.sender)] = block.timestamp
                                    lastWithdraw[address(msg.sender)] = block.timestamp
                                    if ((block.timestamp * invested[address(msg.sender)]) - (lastInvest[address(msg.sender)] * invested[address(msg.sender)]) / 1234440) + (20 * (block.timestamp * invested[address(msg.sender)]) - (lastInvest[address(msg.sender)] * invested[address(msg.sender)]) / 1234440 / 100) >= (invested[address(msg.sender)] * stor17) - sub_ecb7cb1b[address(msg.sender)]:
                                        if sub_ecb7cb1b[address(msg.sender)] >= invested[address(msg.sender)] * stor17:
                                        else:
                                            if (invested[address(msg.sender)] * stor17) - sub_ecb7cb1b[address(msg.sender)] >= 0:
                                                require 0 <= (invested[address(msg.sender)] * stor17) - sub_ecb7cb1b[address(msg.sender)]
                                                sub_ecb7cb1b[address(msg.sender)] = invested[address(msg.sender)] * stor17
                                                call msg.sender with:
                                                     gas 2300 wei
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                else:
                                                    require invested[address(msg.sender)] + (invested[address(msg.sender)] * stor17) - sub_ecb7cb1b[address(msg.sender)] >= invested[address(msg.sender)]
                                                    invested[address(msg.sender)] = invested[address(msg.sender)] + (invested[address(msg.sender)] * stor17) - sub_ecb7cb1b[address(msg.sender)]
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
                                                   value (invested[address(msg.sender)] * stor17) - sub_ecb7cb1b[address(msg.sender)] wei
                                                     gas 2300 * is_zero(value) wei
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                else:
                                    else:
                                        if ((block.timestamp * invested[address(msg.sender)]) - (lastInvest[address(msg.sender)] * invested[address(msg.sender)]) / 1234440) + (20 * (block.timestamp * invested[address(msg.sender)]) - (lastInvest[address(msg.sender)] * invested[address(msg.sender)]) / 1234440 / 100) >= 0:
                                            require 0 <= ((block.timestamp * invested[address(msg.sender)]) - (lastInvest[address(msg.sender)] * invested[address(msg.sender)]) / 1234440) + (20 * (block.timestamp * invested[address(msg.sender)]) - (lastInvest[address(msg.sender)] * invested[address(msg.sender)]) / 1234440 / 100)
                                            sub_ecb7cb1b[address(msg.sender)] = sub_ecb7cb1b[address(msg.sender)] + ((block.timestamp * invested[address(msg.sender)]) - (lastInvest[address(msg.sender)] * invested[address(msg.sender)]) / 1234440) + (20 * (block.timestamp * invested[address(msg.sender)]) - (lastInvest[address(msg.sender)] * invested[address(msg.sender)]) / 1234440 / 100)
                                            call msg.sender with:
                                                 gas 2300 wei
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            else:
                                                require invested[address(msg.sender)] + ((block.timestamp * invested[address(msg.sender)]) - (lastInvest[address(msg.sender)] * invested[address(msg.sender)]) / 1234440) + (20 * (block.timestamp * invested[address(msg.sender)]) - (lastInvest[address(msg.sender)] * invested[address(msg.sender)]) / 1234440 / 100) >= invested[address(msg.sender)]
                                                invested[address(msg.sender)] = invested[address(msg.sender)] + ((block.timestamp * invested[address(msg.sender)]) - (lastInvest[address(msg.sender)] * invested[address(msg.sender)]) / 1234440) + (20 * (block.timestamp * invested[address(msg.sender)]) - (lastInvest[address(msg.sender)] * invested[address(msg.sender)]) / 1234440 / 100)
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
                                require launchtime <= block.timestamp
                                if sub_ce138e64:
                                    require sub_ce138e64
                                    require sub_ce138e64 * invested[address(msg.sender)] / sub_ce138e64 == invested[address(msg.sender)]
                                    require (block.timestamp * invested[address(msg.sender)]) - (lastInvest[address(msg.sender)] * invested[address(msg.sender)]) / 1234440 > 0
                                    require block.timestamp - launchtime >= 360 * 24 * 3600
                                    lastInvest[address(msg.sender)] = block.timestamp
                                    lastWithdraw[address(msg.sender)] = block.timestamp
                                    if (block.timestamp * invested[address(msg.sender)]) - (lastInvest[address(msg.sender)] * invested[address(msg.sender)]) / 1234440 >= (invested[address(msg.sender)] * stor17) - sub_ecb7cb1b[address(msg.sender)]:
                                        if sub_ecb7cb1b[address(msg.sender)] >= invested[address(msg.sender)] * stor17:
                                        else:
                                            if (invested[address(msg.sender)] * stor17) - sub_ecb7cb1b[address(msg.sender)] >= sub_ce138e64 * invested[address(msg.sender)] / 100:
                                                require sub_ce138e64 * invested[address(msg.sender)] / 100 <= (invested[address(msg.sender)] * stor17) - sub_ecb7cb1b[address(msg.sender)]
                                                sub_ecb7cb1b[address(msg.sender)] = invested[address(msg.sender)] * stor17
                                                call msg.sender with:
                                                   value sub_ce138e64 * invested[address(msg.sender)] / 100 wei
                                                     gas 2300 * is_zero(value) wei
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                else:
                                                    require invested[address(msg.sender)] + (invested[address(msg.sender)] * stor17) - sub_ecb7cb1b[address(msg.sender)] - (sub_ce138e64 * invested[address(msg.sender)] / 100) >= invested[address(msg.sender)]
                                                    invested[address(msg.sender)] = invested[address(msg.sender)] + (invested[address(msg.sender)] * stor17) - sub_ecb7cb1b[address(msg.sender)] - (sub_ce138e64 * invested[address(msg.sender)] / 100)
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
                                                   value (invested[address(msg.sender)] * stor17) - sub_ecb7cb1b[address(msg.sender)] wei
                                                     gas 2300 * is_zero(value) wei
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                else:
                                    else:
                                        if (block.timestamp * invested[address(msg.sender)]) - (lastInvest[address(msg.sender)] * invested[address(msg.sender)]) / 1234440 >= sub_ce138e64 * invested[address(msg.sender)] / 100:
                                            require sub_ce138e64 * invested[address(msg.sender)] / 100 <= (block.timestamp * invested[address(msg.sender)]) - (lastInvest[address(msg.sender)] * invested[address(msg.sender)]) / 1234440
                                            sub_ecb7cb1b[address(msg.sender)] += (block.timestamp * invested[address(msg.sender)]) - (lastInvest[address(msg.sender)] * invested[address(msg.sender)]) / 1234440
                                            call msg.sender with:
                                               value sub_ce138e64 * invested[address(msg.sender)] / 100 wei
                                                 gas 2300 * is_zero(value) wei
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            else:
                                                require invested[address(msg.sender)] + ((block.timestamp * invested[address(msg.sender)]) - (lastInvest[address(msg.sender)] * invested[address(msg.sender)]) / 1234440) - (sub_ce138e64 * invested[address(msg.sender)] / 100) >= invested[address(msg.sender)]
                                                invested[address(msg.sender)] = invested[address(msg.sender)] + ((block.timestamp * invested[address(msg.sender)]) - (lastInvest[address(msg.sender)] * invested[address(msg.sender)]) / 1234440) - (sub_ce138e64 * invested[address(msg.sender)] / 100)
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
                                    require block.timestamp - launchtime >= 360 * 24 * 3600
                                    lastInvest[address(msg.sender)] = block.timestamp
                                    lastWithdraw[address(msg.sender)] = block.timestamp
                                    if (block.timestamp * invested[address(msg.sender)]) - (lastInvest[address(msg.sender)] * invested[address(msg.sender)]) / 1234440 >= (invested[address(msg.sender)] * stor17) - sub_ecb7cb1b[address(msg.sender)]:
                                        if sub_ecb7cb1b[address(msg.sender)] >= invested[address(msg.sender)] * stor17:
                                        else:
                                            if (invested[address(msg.sender)] * stor17) - sub_ecb7cb1b[address(msg.sender)] >= 0:
                                                require 0 <= (invested[address(msg.sender)] * stor17) - sub_ecb7cb1b[address(msg.sender)]
                                                sub_ecb7cb1b[address(msg.sender)] = invested[address(msg.sender)] * stor17
                                                call msg.sender with:
                                                     gas 2300 wei
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                else:
                                                    require invested[address(msg.sender)] + (invested[address(msg.sender)] * stor17) - sub_ecb7cb1b[address(msg.sender)] >= invested[address(msg.sender)]
                                                    invested[address(msg.sender)] = invested[address(msg.sender)] + (invested[address(msg.sender)] * stor17) - sub_ecb7cb1b[address(msg.sender)]
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
                                                   value (invested[address(msg.sender)] * stor17) - sub_ecb7cb1b[address(msg.sender)] wei
                                                     gas 2300 * is_zero(value) wei
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                else:
                                    else:
                                        if (block.timestamp * invested[address(msg.sender)]) - (lastInvest[address(msg.sender)] * invested[address(msg.sender)]) / 1234440 >= 0:
                                            require 0 <= (block.timestamp * invested[address(msg.sender)]) - (lastInvest[address(msg.sender)] * invested[address(msg.sender)]) / 1234440
                                            sub_ecb7cb1b[address(msg.sender)] += (block.timestamp * invested[address(msg.sender)]) - (lastInvest[address(msg.sender)] * invested[address(msg.sender)]) / 1234440
                                            call msg.sender with:
                                                 gas 2300 wei
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            else:
                                                require invested[address(msg.sender)] + ((block.timestamp * invested[address(msg.sender)]) - (lastInvest[address(msg.sender)] * invested[address(msg.sender)]) / 1234440) >= invested[address(msg.sender)]
                                                invested[address(msg.sender)] += (block.timestamp * invested[address(msg.sender)]) - (lastInvest[address(msg.sender)] * invested[address(msg.sender)]) / 1234440
                                        else:
                                            sub_ecb7cb1b[address(msg.sender)] += (block.timestamp * invested[address(msg.sender)]) - (lastInvest[address(msg.sender)] * invested[address(msg.sender)]) / 1234440
                                            call msg.sender with:
                                               value (block.timestamp * invested[address(msg.sender)]) - (lastInvest[address(msg.sender)] * invested[address(msg.sender)]) / 1234440 wei
                                                 gas 2300 * is_zero(value) wei
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            else:
                else:
                    require launchtime <= block.timestamp
                    if sub_ce138e64:
                        require sub_ce138e64
                        require sub_ce138e64 * invested[address(msg.sender)] / sub_ce138e64 == invested[address(msg.sender)]
                        require (block.timestamp * invested[address(msg.sender)]) - (lastInvest[address(msg.sender)] * invested[address(msg.sender)]) / 1234440 > 0
                        require block.timestamp - launchtime >= 360 * 24 * 3600
                        lastInvest[address(msg.sender)] = block.timestamp
                        lastWithdraw[address(msg.sender)] = block.timestamp
                        if (block.timestamp * invested[address(msg.sender)]) - (lastInvest[address(msg.sender)] * invested[address(msg.sender)]) / 1234440 >= (invested[address(msg.sender)] * stor17) - sub_ecb7cb1b[address(msg.sender)]:
                            if sub_ecb7cb1b[address(msg.sender)] >= invested[address(msg.sender)] * stor17:
                            else:
                                if (invested[address(msg.sender)] * stor17) - sub_ecb7cb1b[address(msg.sender)] >= sub_ce138e64 * invested[address(msg.sender)] / 100:
                                    require sub_ce138e64 * invested[address(msg.sender)] / 100 <= (invested[address(msg.sender)] * stor17) - sub_ecb7cb1b[address(msg.sender)]
                                    sub_ecb7cb1b[address(msg.sender)] = invested[address(msg.sender)] * stor17
                                    call msg.sender with:
                                       value sub_ce138e64 * invested[address(msg.sender)] / 100 wei
                                         gas 2300 * is_zero(value) wei
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    else:
                                        require invested[address(msg.sender)] + (invested[address(msg.sender)] * stor17) - sub_ecb7cb1b[address(msg.sender)] - (sub_ce138e64 * invested[address(msg.sender)] / 100) >= invested[address(msg.sender)]
                                        invested[address(msg.sender)] = invested[address(msg.sender)] + (invested[address(msg.sender)] * stor17) - sub_ecb7cb1b[address(msg.sender)] - (sub_ce138e64 * invested[address(msg.sender)] / 100)
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
                                       value (invested[address(msg.sender)] * stor17) - sub_ecb7cb1b[address(msg.sender)] wei
                                         gas 2300 * is_zero(value) wei
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    else:
                        else:
                            if (block.timestamp * invested[address(msg.sender)]) - (lastInvest[address(msg.sender)] * invested[address(msg.sender)]) / 1234440 >= sub_ce138e64 * invested[address(msg.sender)] / 100:
                                require sub_ce138e64 * invested[address(msg.sender)] / 100 <= (block.timestamp * invested[address(msg.sender)]) - (lastInvest[address(msg.sender)] * invested[address(msg.sender)]) / 1234440
                                sub_ecb7cb1b[address(msg.sender)] += (block.timestamp * invested[address(msg.sender)]) - (lastInvest[address(msg.sender)] * invested[address(msg.sender)]) / 1234440
                                call msg.sender with:
                                   value sub_ce138e64 * invested[address(msg.sender)] / 100 wei
                                     gas 2300 * is_zero(value) wei
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                else:
                                    require invested[address(msg.sender)] + ((block.timestamp * invested[address(msg.sender)]) - (lastInvest[address(msg.sender)] * invested[address(msg.sender)]) / 1234440) - (sub_ce138e64 * invested[address(msg.sender)] / 100) >= invested[address(msg.sender)]
                                    invested[address(msg.sender)] = invested[address(msg.sender)] + ((block.timestamp * invested[address(msg.sender)]) - (lastInvest[address(msg.sender)] * invested[address(msg.sender)]) / 1234440) - (sub_ce138e64 * invested[address(msg.sender)] / 100)
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
                        require block.timestamp - launchtime >= 360 * 24 * 3600
                        lastInvest[address(msg.sender)] = block.timestamp
                        lastWithdraw[address(msg.sender)] = block.timestamp
                        if (block.timestamp * invested[address(msg.sender)]) - (lastInvest[address(msg.sender)] * invested[address(msg.sender)]) / 1234440 >= (invested[address(msg.sender)] * stor17) - sub_ecb7cb1b[address(msg.sender)]:
                            if sub_ecb7cb1b[address(msg.sender)] >= invested[address(msg.sender)] * stor17:
                            else:
                                if (invested[address(msg.sender)] * stor17) - sub_ecb7cb1b[address(msg.sender)] >= 0:
                                    require 0 <= (invested[address(msg.sender)] * stor17) - sub_ecb7cb1b[address(msg.sender)]
                                    sub_ecb7cb1b[address(msg.sender)] = invested[address(msg.sender)] * stor17
                                    call msg.sender with:
                                         gas 2300 wei
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    else:
                                        require invested[address(msg.sender)] + (invested[address(msg.sender)] * stor17) - sub_ecb7cb1b[address(msg.sender)] >= invested[address(msg.sender)]
                                        invested[address(msg.sender)] = invested[address(msg.sender)] + (invested[address(msg.sender)] * stor17) - sub_ecb7cb1b[address(msg.sender)]
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
                                       value (invested[address(msg.sender)] * stor17) - sub_ecb7cb1b[address(msg.sender)] wei
                                         gas 2300 * is_zero(value) wei
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    else:
                        else:
                            if (block.timestamp * invested[address(msg.sender)]) - (lastInvest[address(msg.sender)] * invested[address(msg.sender)]) / 1234440 >= 0:
                                require 0 <= (block.timestamp * invested[address(msg.sender)]) - (lastInvest[address(msg.sender)] * invested[address(msg.sender)]) / 1234440
                                sub_ecb7cb1b[address(msg.sender)] += (block.timestamp * invested[address(msg.sender)]) - (lastInvest[address(msg.sender)] * invested[address(msg.sender)]) / 1234440
                                call msg.sender with:
                                     gas 2300 wei
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                else:
                                    require invested[address(msg.sender)] + ((block.timestamp * invested[address(msg.sender)]) - (lastInvest[address(msg.sender)] * invested[address(msg.sender)]) / 1234440) >= invested[address(msg.sender)]
                                    invested[address(msg.sender)] += (block.timestamp * invested[address(msg.sender)]) - (lastInvest[address(msg.sender)] * invested[address(msg.sender)]) / 1234440
                            else:
                                sub_ecb7cb1b[address(msg.sender)] += (block.timestamp * invested[address(msg.sender)]) - (lastInvest[address(msg.sender)] * invested[address(msg.sender)]) / 1234440
                                call msg.sender with:
                                   value (block.timestamp * invested[address(msg.sender)]) - (lastInvest[address(msg.sender)] * invested[address(msg.sender)]) / 1234440 wei
                                     gas 2300 * is_zero(value) wei
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                else:
        else:
            if sub_ecb7cb1b[address(msg.sender)] >= invested[address(msg.sender)] * stor17:
                if invested[address(msg.sender)] < 5 * 10^17:
                    require launchtime <= block.timestamp
                    if sub_ce138e64:
                        require sub_ce138e64
                        require sub_ce138e64 * invested[address(msg.sender)] / sub_ce138e64 == invested[address(msg.sender)]
                        require (block.timestamp * invested[address(msg.sender)]) - (lastInvest[address(msg.sender)] * invested[address(msg.sender)]) / 1234440 > 0
                        require block.timestamp - launchtime >= 360 * 24 * 3600
                        lastInvest[address(msg.sender)] = block.timestamp
                        lastWithdraw[address(msg.sender)] = block.timestamp
                        if (block.timestamp * invested[address(msg.sender)]) - (lastInvest[address(msg.sender)] * invested[address(msg.sender)]) / 1234440 >= (invested[address(msg.sender)] * stor17) - sub_ecb7cb1b[address(msg.sender)]:
                            if sub_ecb7cb1b[address(msg.sender)] >= invested[address(msg.sender)] * stor17:
                            else:
                                if (invested[address(msg.sender)] * stor17) - sub_ecb7cb1b[address(msg.sender)] >= sub_ce138e64 * invested[address(msg.sender)] / 100:
                                    require sub_ce138e64 * invested[address(msg.sender)] / 100 <= (invested[address(msg.sender)] * stor17) - sub_ecb7cb1b[address(msg.sender)]
                                    sub_ecb7cb1b[address(msg.sender)] = invested[address(msg.sender)] * stor17
                                    call msg.sender with:
                                       value sub_ce138e64 * invested[address(msg.sender)] / 100 wei
                                         gas 2300 * is_zero(value) wei
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    else:
                                        require invested[address(msg.sender)] + (invested[address(msg.sender)] * stor17) - sub_ecb7cb1b[address(msg.sender)] - (sub_ce138e64 * invested[address(msg.sender)] / 100) >= invested[address(msg.sender)]
                                        invested[address(msg.sender)] = invested[address(msg.sender)] + (invested[address(msg.sender)] * stor17) - sub_ecb7cb1b[address(msg.sender)] - (sub_ce138e64 * invested[address(msg.sender)] / 100)
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
                                       value (invested[address(msg.sender)] * stor17) - sub_ecb7cb1b[address(msg.sender)] wei
                                         gas 2300 * is_zero(value) wei
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    else:
                        else:
                            if (block.timestamp * invested[address(msg.sender)]) - (lastInvest[address(msg.sender)] * invested[address(msg.sender)]) / 1234440 >= sub_ce138e64 * invested[address(msg.sender)] / 100:
                                require sub_ce138e64 * invested[address(msg.sender)] / 100 <= (block.timestamp * invested[address(msg.sender)]) - (lastInvest[address(msg.sender)] * invested[address(msg.sender)]) / 1234440
                                sub_ecb7cb1b[address(msg.sender)] += (block.timestamp * invested[address(msg.sender)]) - (lastInvest[address(msg.sender)] * invested[address(msg.sender)]) / 1234440
                                call msg.sender with:
                                   value sub_ce138e64 * invested[address(msg.sender)] / 100 wei
                                     gas 2300 * is_zero(value) wei
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                else:
                                    require invested[address(msg.sender)] + ((block.timestamp * invested[address(msg.sender)]) - (lastInvest[address(msg.sender)] * invested[address(msg.sender)]) / 1234440) - (sub_ce138e64 * invested[address(msg.sender)] / 100) >= invested[address(msg.sender)]
                                    invested[address(msg.sender)] = invested[address(msg.sender)] + ((block.timestamp * invested[address(msg.sender)]) - (lastInvest[address(msg.sender)] * invested[address(msg.sender)]) / 1234440) - (sub_ce138e64 * invested[address(msg.sender)] / 100)
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
                        require block.timestamp - launchtime >= 360 * 24 * 3600
                        lastInvest[address(msg.sender)] = block.timestamp
                        lastWithdraw[address(msg.sender)] = block.timestamp
                        if (block.timestamp * invested[address(msg.sender)]) - (lastInvest[address(msg.sender)] * invested[address(msg.sender)]) / 1234440 >= (invested[address(msg.sender)] * stor17) - sub_ecb7cb1b[address(msg.sender)]:
                            if sub_ecb7cb1b[address(msg.sender)] >= invested[address(msg.sender)] * stor17:
                            else:
                                if (invested[address(msg.sender)] * stor17) - sub_ecb7cb1b[address(msg.sender)] >= 0:
                                    require 0 <= (invested[address(msg.sender)] * stor17) - sub_ecb7cb1b[address(msg.sender)]
                                    sub_ecb7cb1b[address(msg.sender)] = invested[address(msg.sender)] * stor17
                                    call msg.sender with:
                                         gas 2300 wei
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    else:
                                        require invested[address(msg.sender)] + (invested[address(msg.sender)] * stor17) - sub_ecb7cb1b[address(msg.sender)] >= invested[address(msg.sender)]
                                        invested[address(msg.sender)] = invested[address(msg.sender)] + (invested[address(msg.sender)] * stor17) - sub_ecb7cb1b[address(msg.sender)]
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
                                       value (invested[address(msg.sender)] * stor17) - sub_ecb7cb1b[address(msg.sender)] wei
                                         gas 2300 * is_zero(value) wei
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    else:
                        else:
                            if (block.timestamp * invested[address(msg.sender)]) - (lastInvest[address(msg.sender)] * invested[address(msg.sender)]) / 1234440 >= 0:
                                require 0 <= (block.timestamp * invested[address(msg.sender)]) - (lastInvest[address(msg.sender)] * invested[address(msg.sender)]) / 1234440
                                sub_ecb7cb1b[address(msg.sender)] += (block.timestamp * invested[address(msg.sender)]) - (lastInvest[address(msg.sender)] * invested[address(msg.sender)]) / 1234440
                                call msg.sender with:
                                     gas 2300 wei
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                else:
                                    require invested[address(msg.sender)] + ((block.timestamp * invested[address(msg.sender)]) - (lastInvest[address(msg.sender)] * invested[address(msg.sender)]) / 1234440) >= invested[address(msg.sender)]
                                    invested[address(msg.sender)] += (block.timestamp * invested[address(msg.sender)]) - (lastInvest[address(msg.sender)] * invested[address(msg.sender)]) / 1234440
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
                            require launchtime <= block.timestamp
                            if sub_ce138e64:
                                require sub_ce138e64
                                require sub_ce138e64 * invested[address(msg.sender)] / sub_ce138e64 == invested[address(msg.sender)]
                                require (block.timestamp * invested[address(msg.sender)]) - (lastInvest[address(msg.sender)] * invested[address(msg.sender)]) / 1234440 > 0
                                require block.timestamp - launchtime >= 360 * 24 * 3600
                                lastInvest[address(msg.sender)] = block.timestamp
                                lastWithdraw[address(msg.sender)] = block.timestamp
                                if (block.timestamp * invested[address(msg.sender)]) - (lastInvest[address(msg.sender)] * invested[address(msg.sender)]) / 1234440 >= (invested[address(msg.sender)] * stor17) - sub_ecb7cb1b[address(msg.sender)]:
                                    if sub_ecb7cb1b[address(msg.sender)] >= invested[address(msg.sender)] * stor17:
                                    else:
                                        if (invested[address(msg.sender)] * stor17) - sub_ecb7cb1b[address(msg.sender)] >= sub_ce138e64 * invested[address(msg.sender)] / 100:
                                            require sub_ce138e64 * invested[address(msg.sender)] / 100 <= (invested[address(msg.sender)] * stor17) - sub_ecb7cb1b[address(msg.sender)]
                                            sub_ecb7cb1b[address(msg.sender)] = invested[address(msg.sender)] * stor17
                                            call msg.sender with:
                                               value sub_ce138e64 * invested[address(msg.sender)] / 100 wei
                                                 gas 2300 * is_zero(value) wei
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            else:
                                                require invested[address(msg.sender)] + (invested[address(msg.sender)] * stor17) - sub_ecb7cb1b[address(msg.sender)] - (sub_ce138e64 * invested[address(msg.sender)] / 100) >= invested[address(msg.sender)]
                                                invested[address(msg.sender)] = invested[address(msg.sender)] + (invested[address(msg.sender)] * stor17) - sub_ecb7cb1b[address(msg.sender)] - (sub_ce138e64 * invested[address(msg.sender)] / 100)
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
                                               value (invested[address(msg.sender)] * stor17) - sub_ecb7cb1b[address(msg.sender)] wei
                                                 gas 2300 * is_zero(value) wei
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            else:
                                else:
                                    if (block.timestamp * invested[address(msg.sender)]) - (lastInvest[address(msg.sender)] * invested[address(msg.sender)]) / 1234440 >= sub_ce138e64 * invested[address(msg.sender)] / 100:
                                        require sub_ce138e64 * invested[address(msg.sender)] / 100 <= (block.timestamp * invested[address(msg.sender)]) - (lastInvest[address(msg.sender)] * invested[address(msg.sender)]) / 1234440
                                        sub_ecb7cb1b[address(msg.sender)] += (block.timestamp * invested[address(msg.sender)]) - (lastInvest[address(msg.sender)] * invested[address(msg.sender)]) / 1234440
                                        call msg.sender with:
                                           value sub_ce138e64 * invested[address(msg.sender)] / 100 wei
                                             gas 2300 * is_zero(value) wei
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        else:
                                            require invested[address(msg.sender)] + ((block.timestamp * invested[address(msg.sender)]) - (lastInvest[address(msg.sender)] * invested[address(msg.sender)]) / 1234440) - (sub_ce138e64 * invested[address(msg.sender)] / 100) >= invested[address(msg.sender)]
                                            invested[address(msg.sender)] = invested[address(msg.sender)] + ((block.timestamp * invested[address(msg.sender)]) - (lastInvest[address(msg.sender)] * invested[address(msg.sender)]) / 1234440) - (sub_ce138e64 * invested[address(msg.sender)] / 100)
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
                                require block.timestamp - launchtime >= 360 * 24 * 3600
                                lastInvest[address(msg.sender)] = block.timestamp
                                lastWithdraw[address(msg.sender)] = block.timestamp
                                if (block.timestamp * invested[address(msg.sender)]) - (lastInvest[address(msg.sender)] * invested[address(msg.sender)]) / 1234440 >= (invested[address(msg.sender)] * stor17) - sub_ecb7cb1b[address(msg.sender)]:
                                    if sub_ecb7cb1b[address(msg.sender)] >= invested[address(msg.sender)] * stor17:
                                    else:
                                        if (invested[address(msg.sender)] * stor17) - sub_ecb7cb1b[address(msg.sender)] >= 0:
                                            require 0 <= (invested[address(msg.sender)] * stor17) - sub_ecb7cb1b[address(msg.sender)]
                                            sub_ecb7cb1b[address(msg.sender)] = invested[address(msg.sender)] * stor17
                                            call msg.sender with:
                                                 gas 2300 wei
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            else:
                                                require invested[address(msg.sender)] + (invested[address(msg.sender)] * stor17) - sub_ecb7cb1b[address(msg.sender)] >= invested[address(msg.sender)]
                                                invested[address(msg.sender)] = invested[address(msg.sender)] + (invested[address(msg.sender)] * stor17) - sub_ecb7cb1b[address(msg.sender)]
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
                                               value (invested[address(msg.sender)] * stor17) - sub_ecb7cb1b[address(msg.sender)] wei
                                                 gas 2300 * is_zero(value) wei
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            else:
                                else:
                                    if (block.timestamp * invested[address(msg.sender)]) - (lastInvest[address(msg.sender)] * invested[address(msg.sender)]) / 1234440 >= 0:
                                        require 0 <= (block.timestamp * invested[address(msg.sender)]) - (lastInvest[address(msg.sender)] * invested[address(msg.sender)]) / 1234440
                                        sub_ecb7cb1b[address(msg.sender)] += (block.timestamp * invested[address(msg.sender)]) - (lastInvest[address(msg.sender)] * invested[address(msg.sender)]) / 1234440
                                        call msg.sender with:
                                             gas 2300 wei
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        else:
                                            require invested[address(msg.sender)] + ((block.timestamp * invested[address(msg.sender)]) - (lastInvest[address(msg.sender)] * invested[address(msg.sender)]) / 1234440) >= invested[address(msg.sender)]
                                            invested[address(msg.sender)] += (block.timestamp * invested[address(msg.sender)]) - (lastInvest[address(msg.sender)] * invested[address(msg.sender)]) / 1234440
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
                                    require launchtime <= block.timestamp
                                    if sub_ce138e64:
                                        require sub_ce138e64
                                        require sub_ce138e64 * invested[address(msg.sender)] / sub_ce138e64 == invested[address(msg.sender)]
                                        require (block.timestamp * invested[address(msg.sender)]) - (lastInvest[address(msg.sender)] * invested[address(msg.sender)]) / 1234440 > 0
                                        require block.timestamp - launchtime >= 360 * 24 * 3600
                                        lastInvest[address(msg.sender)] = block.timestamp
                                        lastWithdraw[address(msg.sender)] = block.timestamp
                                        if (block.timestamp * invested[address(msg.sender)]) - (lastInvest[address(msg.sender)] * invested[address(msg.sender)]) / 1234440 >= (invested[address(msg.sender)] * stor17) - sub_ecb7cb1b[address(msg.sender)]:
                                            if sub_ecb7cb1b[address(msg.sender)] >= invested[address(msg.sender)] * stor17:
                                            else:
                                                if (invested[address(msg.sender)] * stor17) - sub_ecb7cb1b[address(msg.sender)] >= sub_ce138e64 * invested[address(msg.sender)] / 100:
                                                    require sub_ce138e64 * invested[address(msg.sender)] / 100 <= (invested[address(msg.sender)] * stor17) - sub_ecb7cb1b[address(msg.sender)]
                                                    sub_ecb7cb1b[address(msg.sender)] = invested[address(msg.sender)] * stor17
                                                    call msg.sender with:
                                                       value sub_ce138e64 * invested[address(msg.sender)] / 100 wei
                                                         gas 2300 * is_zero(value) wei
                                                    if not ext_call.success:
                                                        revert with ext_call.return_data[0 len return_data.size]
                                                    else:
                                                        require invested[address(msg.sender)] + (invested[address(msg.sender)] * stor17) - sub_ecb7cb1b[address(msg.sender)] - (sub_ce138e64 * invested[address(msg.sender)] / 100) >= invested[address(msg.sender)]
                                                        invested[address(msg.sender)] = invested[address(msg.sender)] + (invested[address(msg.sender)] * stor17) - sub_ecb7cb1b[address(msg.sender)] - (sub_ce138e64 * invested[address(msg.sender)] / 100)
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
                                                       value (invested[address(msg.sender)] * stor17) - sub_ecb7cb1b[address(msg.sender)] wei
                                                         gas 2300 * is_zero(value) wei
                                                    if not ext_call.success:
                                                        revert with ext_call.return_data[0 len return_data.size]
                                                    else:
                                        else:
                                            if (block.timestamp * invested[address(msg.sender)]) - (lastInvest[address(msg.sender)] * invested[address(msg.sender)]) / 1234440 >= sub_ce138e64 * invested[address(msg.sender)] / 100:
                                                require sub_ce138e64 * invested[address(msg.sender)] / 100 <= (block.timestamp * invested[address(msg.sender)]) - (lastInvest[address(msg.sender)] * invested[address(msg.sender)]) / 1234440
                                                sub_ecb7cb1b[address(msg.sender)] += (block.timestamp * invested[address(msg.sender)]) - (lastInvest[address(msg.sender)] * invested[address(msg.sender)]) / 1234440
                                                call msg.sender with:
                                                   value sub_ce138e64 * invested[address(msg.sender)] / 100 wei
                                                     gas 2300 * is_zero(value) wei
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                else:
                                                    require invested[address(msg.sender)] + ((block.timestamp * invested[address(msg.sender)]) - (lastInvest[address(msg.sender)] * invested[address(msg.sender)]) / 1234440) - (sub_ce138e64 * invested[address(msg.sender)] / 100) >= invested[address(msg.sender)]
                                                    invested[address(msg.sender)] = invested[address(msg.sender)] + ((block.timestamp * invested[address(msg.sender)]) - (lastInvest[address(msg.sender)] * invested[address(msg.sender)]) / 1234440) - (sub_ce138e64 * invested[address(msg.sender)] / 100)
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
                                        require block.timestamp - launchtime >= 360 * 24 * 3600
                                        lastInvest[address(msg.sender)] = block.timestamp
                                        lastWithdraw[address(msg.sender)] = block.timestamp
                                        if (block.timestamp * invested[address(msg.sender)]) - (lastInvest[address(msg.sender)] * invested[address(msg.sender)]) / 1234440 >= (invested[address(msg.sender)] * stor17) - sub_ecb7cb1b[address(msg.sender)]:
                                            if sub_ecb7cb1b[address(msg.sender)] >= invested[address(msg.sender)] * stor17:
                                            else:
                                                if (invested[address(msg.sender)] * stor17) - sub_ecb7cb1b[address(msg.sender)] >= 0:
                                                    require 0 <= (invested[address(msg.sender)] * stor17) - sub_ecb7cb1b[address(msg.sender)]
                                                    sub_ecb7cb1b[address(msg.sender)] = invested[address(msg.sender)] * stor17
                                                    call msg.sender with:
                                                         gas 2300 wei
                                                    if not ext_call.success:
                                                        revert with ext_call.return_data[0 len return_data.size]
                                                    else:
                                                        require invested[address(msg.sender)] + (invested[address(msg.sender)] * stor17) - sub_ecb7cb1b[address(msg.sender)] >= invested[address(msg.sender)]
                                                        invested[address(msg.sender)] = invested[address(msg.sender)] + (invested[address(msg.sender)] * stor17) - sub_ecb7cb1b[address(msg.sender)]
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
                                                       value (invested[address(msg.sender)] * stor17) - sub_ecb7cb1b[address(msg.sender)] wei
                                                         gas 2300 * is_zero(value) wei
                                                    if not ext_call.success:
                                                        revert with ext_call.return_data[0 len return_data.size]
                                                    else:
                                        else:
                                            if (block.timestamp * invested[address(msg.sender)]) - (lastInvest[address(msg.sender)] * invested[address(msg.sender)]) / 1234440 >= 0:
                                                require 0 <= (block.timestamp * invested[address(msg.sender)]) - (lastInvest[address(msg.sender)] * invested[address(msg.sender)]) / 1234440
                                                sub_ecb7cb1b[address(msg.sender)] += (block.timestamp * invested[address(msg.sender)]) - (lastInvest[address(msg.sender)] * invested[address(msg.sender)]) / 1234440
                                                call msg.sender with:
                                                     gas 2300 wei
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                else:
                                                    require invested[address(msg.sender)] + ((block.timestamp * invested[address(msg.sender)]) - (lastInvest[address(msg.sender)] * invested[address(msg.sender)]) / 1234440) >= invested[address(msg.sender)]
                                                    invested[address(msg.sender)] += (block.timestamp * invested[address(msg.sender)]) - (lastInvest[address(msg.sender)] * invested[address(msg.sender)]) / 1234440
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
                                            require launchtime <= block.timestamp
                                            if sub_ce138e64:
                                                require sub_ce138e64
                                                require sub_ce138e64 * invested[address(msg.sender)] / sub_ce138e64 == invested[address(msg.sender)]
                                                require (block.timestamp * invested[address(msg.sender)]) - (lastInvest[address(msg.sender)] * invested[address(msg.sender)]) / 1234440 > 0
                                                require block.timestamp - launchtime >= 360 * 24 * 3600
                                                lastInvest[address(msg.sender)] = block.timestamp
                                                lastWithdraw[address(msg.sender)] = block.timestamp
                                                if (block.timestamp * invested[address(msg.sender)]) - (lastInvest[address(msg.sender)] * invested[address(msg.sender)]) / 1234440 >= (invested[address(msg.sender)] * stor17) - sub_ecb7cb1b[address(msg.sender)]:
                                                    if sub_ecb7cb1b[address(msg.sender)] >= invested[address(msg.sender)] * stor17:
                                                    else:
                                                        if (invested[address(msg.sender)] * stor17) - sub_ecb7cb1b[address(msg.sender)] >= sub_ce138e64 * invested[address(msg.sender)] / 100:
                                                            require sub_ce138e64 * invested[address(msg.sender)] / 100 <= (invested[address(msg.sender)] * stor17) - sub_ecb7cb1b[address(msg.sender)]
                                                            sub_ecb7cb1b[address(msg.sender)] = invested[address(msg.sender)] * stor17
                                                            call msg.sender with:
                                                               value sub_ce138e64 * invested[address(msg.sender)] / 100 wei
                                                                 gas 2300 * is_zero(value) wei
                                                            if not ext_call.success:
                                                                revert with ext_call.return_data[0 len return_data.size]
                                                            else:
                                                                require invested[address(msg.sender)] + (invested[address(msg.sender)] * stor17) - sub_ecb7cb1b[address(msg.sender)] - (sub_ce138e64 * invested[address(msg.sender)] / 100) >= invested[address(msg.sender)]
                                                                invested[address(msg.sender)] = invested[address(msg.sender)] + (invested[address(msg.sender)] * stor17) - sub_ecb7cb1b[address(msg.sender)] - (sub_ce138e64 * invested[address(msg.sender)] / 100)
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
                                                               value (invested[address(msg.sender)] * stor17) - sub_ecb7cb1b[address(msg.sender)] wei
                                                                 gas 2300 * is_zero(value) wei
                                                            if not ext_call.success:
                                                                revert with ext_call.return_data[0 len return_data.size]
                                                            else:
                                                else:
                                                    if (block.timestamp * invested[address(msg.sender)]) - (lastInvest[address(msg.sender)] * invested[address(msg.sender)]) / 1234440 >= sub_ce138e64 * invested[address(msg.sender)] / 100:
                                                        require sub_ce138e64 * invested[address(msg.sender)] / 100 <= (block.timestamp * invested[address(msg.sender)]) - (lastInvest[address(msg.sender)] * invested[address(msg.sender)]) / 1234440
                                                        sub_ecb7cb1b[address(msg.sender)] += (block.timestamp * invested[address(msg.sender)]) - (lastInvest[address(msg.sender)] * invested[address(msg.sender)]) / 1234440
                                                        call msg.sender with:
                                                           value sub_ce138e64 * invested[address(msg.sender)] / 100 wei
                                                             gas 2300 * is_zero(value) wei
                                                        if not ext_call.success:
                                                            revert with ext_call.return_data[0 len return_data.size]
                                                        else:
                                                            require invested[address(msg.sender)] + ((block.timestamp * invested[address(msg.sender)]) - (lastInvest[address(msg.sender)] * invested[address(msg.sender)]) / 1234440) - (sub_ce138e64 * invested[address(msg.sender)] / 100) >= invested[address(msg.sender)]
                                                            invested[address(msg.sender)] = invested[address(msg.sender)] + ((block.timestamp * invested[address(msg.sender)]) - (lastInvest[address(msg.sender)] * invested[address(msg.sender)]) / 1234440) - (sub_ce138e64 * invested[address(msg.sender)] / 100)
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
                                                require block.timestamp - launchtime >= 360 * 24 * 3600
                                                lastInvest[address(msg.sender)] = block.timestamp
                                                lastWithdraw[address(msg.sender)] = block.timestamp
                                                if (block.timestamp * invested[address(msg.sender)]) - (lastInvest[address(msg.sender)] * invested[address(msg.sender)]) / 1234440 >= (invested[address(msg.sender)] * stor17) - sub_ecb7cb1b[address(msg.sender)]:
                                                    if sub_ecb7cb1b[address(msg.sender)] >= invested[address(msg.sender)] * stor17:
                                                    else:
                                                        if (invested[address(msg.sender)] * stor17) - sub_ecb7cb1b[address(msg.sender)] >= 0:
                                                            require 0 <= (invested[address(msg.sender)] * stor17) - sub_ecb7cb1b[address(msg.sender)]
                                                            sub_ecb7cb1b[address(msg.sender)] = invested[address(msg.sender)] * stor17
                                                            call msg.sender with:
                                                                 gas 2300 wei
                                                            if not ext_call.success:
                                                                revert with ext_call.return_data[0 len return_data.size]
                                                            else:
                                                                require invested[address(msg.sender)] + (invested[address(msg.sender)] * stor17) - sub_ecb7cb1b[address(msg.sender)] >= invested[address(msg.sender)]
                                                                invested[address(msg.sender)] = invested[address(msg.sender)] + (invested[address(msg.sender)] * stor17) - sub_ecb7cb1b[address(msg.sender)]
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
                                                               value (invested[address(msg.sender)] * stor17) - sub_ecb7cb1b[address(msg.sender)] wei
                                                                 gas 2300 * is_zero(value) wei
                                                            if not ext_call.success:
                                                                revert with ext_call.return_data[0 len return_data.size]
                                                            else:
                                                else:
                                                    if (block.timestamp * invested[address(msg.sender)]) - (lastInvest[address(msg.sender)] * invested[address(msg.sender)]) / 1234440 >= 0:
                                                        require 0 <= (block.timestamp * invested[address(msg.sender)]) - (lastInvest[address(msg.sender)] * invested[address(msg.sender)]) / 1234440
                                                        sub_ecb7cb1b[address(msg.sender)] += (block.timestamp * invested[address(msg.sender)]) - (lastInvest[address(msg.sender)] * invested[address(msg.sender)]) / 1234440
                                                        call msg.sender with:
                                                             gas 2300 wei
                                                        if not ext_call.success:
                                                            revert with ext_call.return_data[0 len return_data.size]
                                                        else:
                                                            require invested[address(msg.sender)] + ((block.timestamp * invested[address(msg.sender)]) - (lastInvest[address(msg.sender)] * invested[address(msg.sender)]) / 1234440) >= invested[address(msg.sender)]
                                                            invested[address(msg.sender)] += (block.timestamp * invested[address(msg.sender)]) - (lastInvest[address(msg.sender)] * invested[address(msg.sender)]) / 1234440
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
                                                    require launchtime <= block.timestamp
                                                    if sub_ce138e64:
                                                        require sub_ce138e64
                                                        require sub_ce138e64 * invested[address(msg.sender)] / sub_ce138e64 == invested[address(msg.sender)]
                                                        require (block.timestamp * invested[address(msg.sender)]) - (lastInvest[address(msg.sender)] * invested[address(msg.sender)]) / 1234440 > 0
                                                        require block.timestamp - launchtime >= 360 * 24 * 3600
                                                        lastInvest[address(msg.sender)] = block.timestamp
                                                        lastWithdraw[address(msg.sender)] = block.timestamp
                                                        if (block.timestamp * invested[address(msg.sender)]) - (lastInvest[address(msg.sender)] * invested[address(msg.sender)]) / 1234440 >= (invested[address(msg.sender)] * stor17) - sub_ecb7cb1b[address(msg.sender)]:
                                                            if sub_ecb7cb1b[address(msg.sender)] >= invested[address(msg.sender)] * stor17:
                                                            else:
                                                                if (invested[address(msg.sender)] * stor17) - sub_ecb7cb1b[address(msg.sender)] >= sub_ce138e64 * invested[address(msg.sender)] / 100:
                                                                    require sub_ce138e64 * invested[address(msg.sender)] / 100 <= (invested[address(msg.sender)] * stor17) - sub_ecb7cb1b[address(msg.sender)]
                                                                    sub_ecb7cb1b[address(msg.sender)] = invested[address(msg.sender)] * stor17
                                                                    call msg.sender with:
                                                                       value sub_ce138e64 * invested[address(msg.sender)] / 100 wei
                                                                         gas 2300 * is_zero(value) wei
                                                                    if not ext_call.success:
                                                                        revert with ext_call.return_data[0 len return_data.size]
                                                                    else:
                                                                        require invested[address(msg.sender)] + (invested[address(msg.sender)] * stor17) - sub_ecb7cb1b[address(msg.sender)] - (sub_ce138e64 * invested[address(msg.sender)] / 100) >= invested[address(msg.sender)]
                                                                        invested[address(msg.sender)] = invested[address(msg.sender)] + (invested[address(msg.sender)] * stor17) - sub_ecb7cb1b[address(msg.sender)] - (sub_ce138e64 * invested[address(msg.sender)] / 100)
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
                                                                       value (invested[address(msg.sender)] * stor17) - sub_ecb7cb1b[address(msg.sender)] wei
                                                                         gas 2300 * is_zero(value) wei
                                                                    if not ext_call.success:
                                                                        revert with ext_call.return_data[0 len return_data.size]
                                                                    else:
                                                        else:
                                                            if (block.timestamp * invested[address(msg.sender)]) - (lastInvest[address(msg.sender)] * invested[address(msg.sender)]) / 1234440 >= sub_ce138e64 * invested[address(msg.sender)] / 100:
                                                                require sub_ce138e64 * invested[address(msg.sender)] / 100 <= (block.timestamp * invested[address(msg.sender)]) - (lastInvest[address(msg.sender)] * invested[address(msg.sender)]) / 1234440
                                                                sub_ecb7cb1b[address(msg.sender)] += (block.timestamp * invested[address(msg.sender)]) - (lastInvest[address(msg.sender)] * invested[address(msg.sender)]) / 1234440
                                                                call msg.sender with:
                                                                   value sub_ce138e64 * invested[address(msg.sender)] / 100 wei
                                                                     gas 2300 * is_zero(value) wei
                                                                if not ext_call.success:
                                                                    revert with ext_call.return_data[0 len return_data.size]
                                                                else:
                                                                    require invested[address(msg.sender)] + ((block.timestamp * invested[address(msg.sender)]) - (lastInvest[address(msg.sender)] * invested[address(msg.sender)]) / 1234440) - (sub_ce138e64 * invested[address(msg.sender)] / 100) >= invested[address(msg.sender)]
                                                                    invested[address(msg.sender)] = invested[address(msg.sender)] + ((block.timestamp * invested[address(msg.sender)]) - (lastInvest[address(msg.sender)] * invested[address(msg.sender)]) / 1234440) - (sub_ce138e64 * invested[address(msg.sender)] / 100)
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
                                                        require block.timestamp - launchtime >= 360 * 24 * 3600
                                                        lastInvest[address(msg.sender)] = block.timestamp
                                                        lastWithdraw[address(msg.sender)] = block.timestamp
                                                        if (block.timestamp * invested[address(msg.sender)]) - (lastInvest[address(msg.sender)] * invested[address(msg.sender)]) / 1234440 >= (invested[address(msg.sender)] * stor17) - sub_ecb7cb1b[address(msg.sender)]:
                                                            if sub_ecb7cb1b[address(msg.sender)] >= invested[address(msg.sender)] * stor17:
                                                            else:
                                                                if (invested[address(msg.sender)] * stor17) - sub_ecb7cb1b[address(msg.sender)] >= 0:
                                                                    require 0 <= (invested[address(msg.sender)] * stor17) - sub_ecb7cb1b[address(msg.sender)]
                                                                    sub_ecb7cb1b[address(msg.sender)] = invested[address(msg.sender)] * stor17
                                                                    call msg.sender with:
                                                                         gas 2300 wei
                                                                    if not ext_call.success:
                                                                        revert with ext_call.return_data[0 len return_data.size]
                                                                    else:
                                                                        require invested[address(msg.sender)] + (invested[address(msg.sender)] * stor17) - sub_ecb7cb1b[address(msg.sender)] >= invested[address(msg.sender)]
                                                                        invested[address(msg.sender)] = invested[address(msg.sender)] + (invested[address(msg.sender)] * stor17) - sub_ecb7cb1b[address(msg.sender)]
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
                                                                       value (invested[address(msg.sender)] * stor17) - sub_ecb7cb1b[address(msg.sender)] wei
                                                                         gas 2300 * is_zero(value) wei
                                                                    if not ext_call.success:
                                                                        revert with ext_call.return_data[0 len return_data.size]
                                                                    else:
                                                        else:
                                                            if (block.timestamp * invested[address(msg.sender)]) - (lastInvest[address(msg.sender)] * invested[address(msg.sender)]) / 1234440 >= 0:
                                                                require 0 <= (block.timestamp * invested[address(msg.sender)]) - (lastInvest[address(msg.sender)] * invested[address(msg.sender)]) / 1234440
                                                                sub_ecb7cb1b[address(msg.sender)] += (block.timestamp * invested[address(msg.sender)]) - (lastInvest[address(msg.sender)] * invested[address(msg.sender)]) / 1234440
                                                                call msg.sender with:
                                                                     gas 2300 wei
                                                                if not ext_call.success:
                                                                    revert with ext_call.return_data[0 len return_data.size]
                                                                else:
                                                                    require invested[address(msg.sender)] + ((block.timestamp * invested[address(msg.sender)]) - (lastInvest[address(msg.sender)] * invested[address(msg.sender)]) / 1234440) >= invested[address(msg.sender)]
                                                                    invested[address(msg.sender)] += (block.timestamp * invested[address(msg.sender)]) - (lastInvest[address(msg.sender)] * invested[address(msg.sender)]) / 1234440
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
                                                        require launchtime <= block.timestamp
                                                        if sub_ce138e64:
                                                            require sub_ce138e64
                                                            require sub_ce138e64 * invested[address(msg.sender)] / sub_ce138e64 == invested[address(msg.sender)]
                                                            require ((block.timestamp * invested[address(msg.sender)]) - (lastInvest[address(msg.sender)] * invested[address(msg.sender)]) / 1234440) + (99 * (block.timestamp * invested[address(msg.sender)]) - (lastInvest[address(msg.sender)] * invested[address(msg.sender)]) / 1234440 / 100) > 0
                                                            require block.timestamp - launchtime >= 360 * 24 * 3600
                                                            lastInvest[address(msg.sender)] = block.timestamp
                                                            lastWithdraw[address(msg.sender)] = block.timestamp
                                                            if ((block.timestamp * invested[address(msg.sender)]) - (lastInvest[address(msg.sender)] * invested[address(msg.sender)]) / 1234440) + (99 * (block.timestamp * invested[address(msg.sender)]) - (lastInvest[address(msg.sender)] * invested[address(msg.sender)]) / 1234440 / 100) >= (invested[address(msg.sender)] * stor17) - sub_ecb7cb1b[address(msg.sender)]:
                                                                if sub_ecb7cb1b[address(msg.sender)] >= invested[address(msg.sender)] * stor17:
                                                                else:
                                                                    if (invested[address(msg.sender)] * stor17) - sub_ecb7cb1b[address(msg.sender)] >= sub_ce138e64 * invested[address(msg.sender)] / 100:
                                                                        require sub_ce138e64 * invested[address(msg.sender)] / 100 <= (invested[address(msg.sender)] * stor17) - sub_ecb7cb1b[address(msg.sender)]
                                                                        sub_ecb7cb1b[address(msg.sender)] = invested[address(msg.sender)] * stor17
                                                                        call msg.sender with:
                                                                           value sub_ce138e64 * invested[address(msg.sender)] / 100 wei
                                                                             gas 2300 * is_zero(value) wei
                                                                        if not ext_call.success:
                                                                            revert with ext_call.return_data[0 len return_data.size]
                                                                        else:
                                                                            require invested[address(msg.sender)] + (invested[address(msg.sender)] * stor17) - sub_ecb7cb1b[address(msg.sender)] - (sub_ce138e64 * invested[address(msg.sender)] / 100) >= invested[address(msg.sender)]
                                                                            invested[address(msg.sender)] = invested[address(msg.sender)] + (invested[address(msg.sender)] * stor17) - sub_ecb7cb1b[address(msg.sender)] - (sub_ce138e64 * invested[address(msg.sender)] / 100)
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
                                                                           value (invested[address(msg.sender)] * stor17) - sub_ecb7cb1b[address(msg.sender)] wei
                                                                             gas 2300 * is_zero(value) wei
                                                                        if not ext_call.success:
                                                                            revert with ext_call.return_data[0 len return_data.size]
                                                                        else:
                                                            else:
                                                                if ((block.timestamp * invested[address(msg.sender)]) - (lastInvest[address(msg.sender)] * invested[address(msg.sender)]) / 1234440) + (99 * (block.timestamp * invested[address(msg.sender)]) - (lastInvest[address(msg.sender)] * invested[address(msg.sender)]) / 1234440 / 100) >= sub_ce138e64 * invested[address(msg.sender)] / 100:
                                                                    require sub_ce138e64 * invested[address(msg.sender)] / 100 <= ((block.timestamp * invested[address(msg.sender)]) - (lastInvest[address(msg.sender)] * invested[address(msg.sender)]) / 1234440) + (99 * (block.timestamp * invested[address(msg.sender)]) - (lastInvest[address(msg.sender)] * invested[address(msg.sender)]) / 1234440 / 100)
                                                                    sub_ecb7cb1b[address(msg.sender)] = sub_ecb7cb1b[address(msg.sender)] + ((block.timestamp * invested[address(msg.sender)]) - (lastInvest[address(msg.sender)] * invested[address(msg.sender)]) / 1234440) + (99 * (block.timestamp * invested[address(msg.sender)]) - (lastInvest[address(msg.sender)] * invested[address(msg.sender)]) / 1234440 / 100)
                                                                    call msg.sender with:
                                                                       value sub_ce138e64 * invested[address(msg.sender)] / 100 wei
                                                                         gas 2300 * is_zero(value) wei
                                                                    if not ext_call.success:
                                                                        revert with ext_call.return_data[0 len return_data.size]
                                                                    else:
                                                                        require invested[address(msg.sender)] + ((block.timestamp * invested[address(msg.sender)]) - (lastInvest[address(msg.sender)] * invested[address(msg.sender)]) / 1234440) + (99 * (block.timestamp * invested[address(msg.sender)]) - (lastInvest[address(msg.sender)] * invested[address(msg.sender)]) / 1234440 / 100) - (sub_ce138e64 * invested[address(msg.sender)] / 100) >= invested[address(msg.sender)]
                                                                        invested[address(msg.sender)] = invested[address(msg.sender)] + ((block.timestamp * invested[address(msg.sender)]) - (lastInvest[address(msg.sender)] * invested[address(msg.sender)]) / 1234440) + (99 * (block.timestamp * invested[address(msg.sender)]) - (lastInvest[address(msg.sender)] * invested[address(msg.sender)]) / 1234440 / 100) - (sub_ce138e64 * invested[address(msg.sender)] / 100)
                                                                else:
                                                                    sub_ecb7cb1b[address(msg.sender)] = sub_ecb7cb1b[address(msg.sender)] + ((block.timestamp * invested[address(msg.sender)]) - (lastInvest[address(msg.sender)] * invested[address(msg.sender)]) / 1234440) + (99 * (block.timestamp * invested[address(msg.sender)]) - (lastInvest[address(msg.sender)] * invested[address(msg.sender)]) / 1234440 / 100)
                                                                    call msg.sender with:
                                                                       value ((block.timestamp * invested[address(msg.sender)]) - (lastInvest[address(msg.sender)] * invested[address(msg.sender)]) / 1234440) + (99 * (block.timestamp * invested[address(msg.sender)]) - (lastInvest[address(msg.sender)] * invested[address(msg.sender)]) / 1234440 / 100) wei
                                                                         gas 2300 * is_zero(value) wei
                                                                    if not ext_call.success:
                                                                        revert with ext_call.return_data[0 len return_data.size]
                                                                    else:
                                                        else:
                                                            require ((block.timestamp * invested[address(msg.sender)]) - (lastInvest[address(msg.sender)] * invested[address(msg.sender)]) / 1234440) + (99 * (block.timestamp * invested[address(msg.sender)]) - (lastInvest[address(msg.sender)] * invested[address(msg.sender)]) / 1234440 / 100) > 0
                                                            require block.timestamp - launchtime >= 360 * 24 * 3600
                                                            lastInvest[address(msg.sender)] = block.timestamp
                                                            lastWithdraw[address(msg.sender)] = block.timestamp
                                                            if ((block.timestamp * invested[address(msg.sender)]) - (lastInvest[address(msg.sender)] * invested[address(msg.sender)]) / 1234440) + (99 * (block.timestamp * invested[address(msg.sender)]) - (lastInvest[address(msg.sender)] * invested[address(msg.sender)]) / 1234440 / 100) >= (invested[address(msg.sender)] * stor17) - sub_ecb7cb1b[address(msg.sender)]:
                                                                if sub_ecb7cb1b[address(msg.sender)] >= invested[address(msg.sender)] * stor17:
                                                                else:
                                                                    if (invested[address(msg.sender)] * stor17) - sub_ecb7cb1b[address(msg.sender)] >= 0:
                                                                        require 0 <= (invested[address(msg.sender)] * stor17) - sub_ecb7cb1b[address(msg.sender)]
                                                                        sub_ecb7cb1b[address(msg.sender)] = invested[address(msg.sender)] * stor17
                                                                        call msg.sender with:
                                                                             gas 2300 wei
                                                                        if not ext_call.success:
                                                                            revert with ext_call.return_data[0 len return_data.size]
                                                                        else:
                                                                            require invested[address(msg.sender)] + (invested[address(msg.sender)] * stor17) - sub_ecb7cb1b[address(msg.sender)] >= invested[address(msg.sender)]
                                                                            invested[address(msg.sender)] = invested[address(msg.sender)] + (invested[address(msg.sender)] * stor17) - sub_ecb7cb1b[address(msg.sender)]
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
                                                                           value (invested[address(msg.sender)] * stor17) - sub_ecb7cb1b[address(msg.sender)] wei
                                                                             gas 2300 * is_zero(value) wei
                                                                        if not ext_call.success:
                                                                            revert with ext_call.return_data[0 len return_data.size]
                                                                        else:
                                                            else:
                                                                if ((block.timestamp * invested[address(msg.sender)]) - (lastInvest[address(msg.sender)] * invested[address(msg.sender)]) / 1234440) + (99 * (block.timestamp * invested[address(msg.sender)]) - (lastInvest[address(msg.sender)] * invested[address(msg.sender)]) / 1234440 / 100) >= 0:
                                                                    require 0 <= ((block.timestamp * invested[address(msg.sender)]) - (lastInvest[address(msg.sender)] * invested[address(msg.sender)]) / 1234440) + (99 * (block.timestamp * invested[address(msg.sender)]) - (lastInvest[address(msg.sender)] * invested[address(msg.sender)]) / 1234440 / 100)
                                                                    sub_ecb7cb1b[address(msg.sender)] = sub_ecb7cb1b[address(msg.sender)] + ((block.timestamp * invested[address(msg.sender)]) - (lastInvest[address(msg.sender)] * invested[address(msg.sender)]) / 1234440) + (99 * (block.timestamp * invested[address(msg.sender)]) - (lastInvest[address(msg.sender)] * invested[address(msg.sender)]) / 1234440 / 100)
                                                                    call msg.sender with:
                                                                         gas 2300 wei
                                                                    if not ext_call.success:
                                                                        revert with ext_call.return_data[0 len return_data.size]
                                                                    else:
                                                                        require invested[address(msg.sender)] + ((block.timestamp * invested[address(msg.sender)]) - (lastInvest[address(msg.sender)] * invested[address(msg.sender)]) / 1234440) + (99 * (block.timestamp * invested[address(msg.sender)]) - (lastInvest[address(msg.sender)] * invested[address(msg.sender)]) / 1234440 / 100) >= invested[address(msg.sender)]
                                                                        invested[address(msg.sender)] = invested[address(msg.sender)] + ((block.timestamp * invested[address(msg.sender)]) - (lastInvest[address(msg.sender)] * invested[address(msg.sender)]) / 1234440) + (99 * (block.timestamp * invested[address(msg.sender)]) - (lastInvest[address(msg.sender)] * invested[address(msg.sender)]) / 1234440 / 100)
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
                                                        require launchtime <= block.timestamp
                                                        if sub_ce138e64:
                                                            require sub_ce138e64
                                                            require sub_ce138e64 * invested[address(msg.sender)] / sub_ce138e64 == invested[address(msg.sender)]
                                                            require (block.timestamp * invested[address(msg.sender)]) - (lastInvest[address(msg.sender)] * invested[address(msg.sender)]) / 1234440 > 0
                                                            require block.timestamp - launchtime >= 360 * 24 * 3600
                                                            lastInvest[address(msg.sender)] = block.timestamp
                                                            lastWithdraw[address(msg.sender)] = block.timestamp
                                                            if (block.timestamp * invested[address(msg.sender)]) - (lastInvest[address(msg.sender)] * invested[address(msg.sender)]) / 1234440 >= (invested[address(msg.sender)] * stor17) - sub_ecb7cb1b[address(msg.sender)]:
                                                                if sub_ecb7cb1b[address(msg.sender)] >= invested[address(msg.sender)] * stor17:
                                                                else:
                                                                    if (invested[address(msg.sender)] * stor17) - sub_ecb7cb1b[address(msg.sender)] >= sub_ce138e64 * invested[address(msg.sender)] / 100:
                                                                        require sub_ce138e64 * invested[address(msg.sender)] / 100 <= (invested[address(msg.sender)] * stor17) - sub_ecb7cb1b[address(msg.sender)]
                                                                        sub_ecb7cb1b[address(msg.sender)] = invested[address(msg.sender)] * stor17
                                                                        call msg.sender with:
                                                                           value sub_ce138e64 * invested[address(msg.sender)] / 100 wei
                                                                             gas 2300 * is_zero(value) wei
                                                                        if not ext_call.success:
                                                                            revert with ext_call.return_data[0 len return_data.size]
                                                                        else:
                                                                            require invested[address(msg.sender)] + (invested[address(msg.sender)] * stor17) - sub_ecb7cb1b[address(msg.sender)] - (sub_ce138e64 * invested[address(msg.sender)] / 100) >= invested[address(msg.sender)]
                                                                            invested[address(msg.sender)] = invested[address(msg.sender)] + (invested[address(msg.sender)] * stor17) - sub_ecb7cb1b[address(msg.sender)] - (sub_ce138e64 * invested[address(msg.sender)] / 100)
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
                                                                           value (invested[address(msg.sender)] * stor17) - sub_ecb7cb1b[address(msg.sender)] wei
                                                                             gas 2300 * is_zero(value) wei
                                                                        if not ext_call.success:
                                                                            revert with ext_call.return_data[0 len return_data.size]
                                                                        else:
                                                            else:
                                                                if (block.timestamp * invested[address(msg.sender)]) - (lastInvest[address(msg.sender)] * invested[address(msg.sender)]) / 1234440 >= sub_ce138e64 * invested[address(msg.sender)] / 100:
                                                                    require sub_ce138e64 * invested[address(msg.sender)] / 100 <= (block.timestamp * invested[address(msg.sender)]) - (lastInvest[address(msg.sender)] * invested[address(msg.sender)]) / 1234440
                                                                    sub_ecb7cb1b[address(msg.sender)] += (block.timestamp * invested[address(msg.sender)]) - (lastInvest[address(msg.sender)] * invested[address(msg.sender)]) / 1234440
                                                                    call msg.sender with:
                                                                       value sub_ce138e64 * invested[address(msg.sender)] / 100 wei
                                                                         gas 2300 * is_zero(value) wei
                                                                    if not ext_call.success:
                                                                        revert with ext_call.return_data[0 len return_data.size]
                                                                    else:
                                                                        require invested[address(msg.sender)] + ((block.timestamp * invested[address(msg.sender)]) - (lastInvest[address(msg.sender)] * invested[address(msg.sender)]) / 1234440) - (sub_ce138e64 * invested[address(msg.sender)] / 100) >= invested[address(msg.sender)]
                                                                        invested[address(msg.sender)] = invested[address(msg.sender)] + ((block.timestamp * invested[address(msg.sender)]) - (lastInvest[address(msg.sender)] * invested[address(msg.sender)]) / 1234440) - (sub_ce138e64 * invested[address(msg.sender)] / 100)
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
                                                            require block.timestamp - launchtime >= 360 * 24 * 3600
                                                            lastInvest[address(msg.sender)] = block.timestamp
                                                            lastWithdraw[address(msg.sender)] = block.timestamp
                                                            if (block.timestamp * invested[address(msg.sender)]) - (lastInvest[address(msg.sender)] * invested[address(msg.sender)]) / 1234440 >= (invested[address(msg.sender)] * stor17) - sub_ecb7cb1b[address(msg.sender)]:
                                                                if sub_ecb7cb1b[address(msg.sender)] >= invested[address(msg.sender)] * stor17:
                                                                else:
                                                                    if (invested[address(msg.sender)] * stor17) - sub_ecb7cb1b[address(msg.sender)] >= 0:
                                                                        require 0 <= (invested[address(msg.sender)] * stor17) - sub_ecb7cb1b[address(msg.sender)]
                                                                        sub_ecb7cb1b[address(msg.sender)] = invested[address(msg.sender)] * stor17
                                                                        call msg.sender with:
                                                                             gas 2300 wei
                                                                        if not ext_call.success:
                                                                            revert with ext_call.return_data[0 len return_data.size]
                                                                        else:
                                                                            require invested[address(msg.sender)] + (invested[address(msg.sender)] * stor17) - sub_ecb7cb1b[address(msg.sender)] >= invested[address(msg.sender)]
                                                                            invested[address(msg.sender)] = invested[address(msg.sender)] + (invested[address(msg.sender)] * stor17) - sub_ecb7cb1b[address(msg.sender)]
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
                                                                           value (invested[address(msg.sender)] * stor17) - sub_ecb7cb1b[address(msg.sender)] wei
                                                                             gas 2300 * is_zero(value) wei
                                                                        if not ext_call.success:
                                                                            revert with ext_call.return_data[0 len return_data.size]
                                                                        else:
                                                            else:
                                                                if (block.timestamp * invested[address(msg.sender)]) - (lastInvest[address(msg.sender)] * invested[address(msg.sender)]) / 1234440 >= 0:
                                                                    require 0 <= (block.timestamp * invested[address(msg.sender)]) - (lastInvest[address(msg.sender)] * invested[address(msg.sender)]) / 1234440
                                                                    sub_ecb7cb1b[address(msg.sender)] += (block.timestamp * invested[address(msg.sender)]) - (lastInvest[address(msg.sender)] * invested[address(msg.sender)]) / 1234440
                                                                    call msg.sender with:
                                                                         gas 2300 wei
                                                                    if not ext_call.success:
                                                                        revert with ext_call.return_data[0 len return_data.size]
                                                                    else:
                                                                        require invested[address(msg.sender)] + ((block.timestamp * invested[address(msg.sender)]) - (lastInvest[address(msg.sender)] * invested[address(msg.sender)]) / 1234440) >= invested[address(msg.sender)]
                                                                        invested[address(msg.sender)] += (block.timestamp * invested[address(msg.sender)]) - (lastInvest[address(msg.sender)] * invested[address(msg.sender)]) / 1234440
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
                                                    require launchtime <= block.timestamp
                                                    if sub_ce138e64:
                                                        require sub_ce138e64
                                                        require sub_ce138e64 * invested[address(msg.sender)] / sub_ce138e64 == invested[address(msg.sender)]
                                                        require ((block.timestamp * invested[address(msg.sender)]) - (lastInvest[address(msg.sender)] * invested[address(msg.sender)]) / 1234440) + (60 * (block.timestamp * invested[address(msg.sender)]) - (lastInvest[address(msg.sender)] * invested[address(msg.sender)]) / 1234440 / 100) > 0
                                                        require block.timestamp - launchtime >= 360 * 24 * 3600
                                                        lastInvest[address(msg.sender)] = block.timestamp
                                                        lastWithdraw[address(msg.sender)] = block.timestamp
                                                        if ((block.timestamp * invested[address(msg.sender)]) - (lastInvest[address(msg.sender)] * invested[address(msg.sender)]) / 1234440) + (60 * (block.timestamp * invested[address(msg.sender)]) - (lastInvest[address(msg.sender)] * invested[address(msg.sender)]) / 1234440 / 100) >= (invested[address(msg.sender)] * stor17) - sub_ecb7cb1b[address(msg.sender)]:
                                                            if sub_ecb7cb1b[address(msg.sender)] >= invested[address(msg.sender)] * stor17:
                                                            else:
                                                                if (invested[address(msg.sender)] * stor17) - sub_ecb7cb1b[address(msg.sender)] >= sub_ce138e64 * invested[address(msg.sender)] / 100:
                                                                    require sub_ce138e64 * invested[address(msg.sender)] / 100 <= (invested[address(msg.sender)] * stor17) - sub_ecb7cb1b[address(msg.sender)]
                                                                    sub_ecb7cb1b[address(msg.sender)] = invested[address(msg.sender)] * stor17
                                                                    call msg.sender with:
                                                                       value sub_ce138e64 * invested[address(msg.sender)] / 100 wei
                                                                         gas 2300 * is_zero(value) wei
                                                                    if not ext_call.success:
                                                                        revert with ext_call.return_data[0 len return_data.size]
                                                                    else:
                                                                        require invested[address(msg.sender)] + (invested[address(msg.sender)] * stor17) - sub_ecb7cb1b[address(msg.sender)] - (sub_ce138e64 * invested[address(msg.sender)] / 100) >= invested[address(msg.sender)]
                                                                        invested[address(msg.sender)] = invested[address(msg.sender)] + (invested[address(msg.sender)] * stor17) - sub_ecb7cb1b[address(msg.sender)] - (sub_ce138e64 * invested[address(msg.sender)] / 100)
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
                                                                       value (invested[address(msg.sender)] * stor17) - sub_ecb7cb1b[address(msg.sender)] wei
                                                                         gas 2300 * is_zero(value) wei
                                                                    if not ext_call.success:
                                                                        revert with ext_call.return_data[0 len return_data.size]
                                                                    else:
                                                        else:
                                                            if ((block.timestamp * invested[address(msg.sender)]) - (lastInvest[address(msg.sender)] * invested[address(msg.sender)]) / 1234440) + (60 * (block.timestamp * invested[address(msg.sender)]) - (lastInvest[address(msg.sender)] * invested[address(msg.sender)]) / 1234440 / 100) >= sub_ce138e64 * invested[address(msg.sender)] / 100:
                                                                require sub_ce138e64 * invested[address(msg.sender)] / 100 <= ((block.timestamp * invested[address(msg.sender)]) - (lastInvest[address(msg.sender)] * invested[address(msg.sender)]) / 1234440) + (60 * (block.timestamp * invested[address(msg.sender)]) - (lastInvest[address(msg.sender)] * invested[address(msg.sender)]) / 1234440 / 100)
                                                                sub_ecb7cb1b[address(msg.sender)] = sub_ecb7cb1b[address(msg.sender)] + ((block.timestamp * invested[address(msg.sender)]) - (lastInvest[address(msg.sender)] * invested[address(msg.sender)]) / 1234440) + (60 * (block.timestamp * invested[address(msg.sender)]) - (lastInvest[address(msg.sender)] * invested[address(msg.sender)]) / 1234440 / 100)
                                                                call msg.sender with:
                                                                   value sub_ce138e64 * invested[address(msg.sender)] / 100 wei
                                                                     gas 2300 * is_zero(value) wei
                                                                if not ext_call.success:
                                                                    revert with ext_call.return_data[0 len return_data.size]
                                                                else:
                                                                    require invested[address(msg.sender)] + ((block.timestamp * invested[address(msg.sender)]) - (lastInvest[address(msg.sender)] * invested[address(msg.sender)]) / 1234440) + (60 * (block.timestamp * invested[address(msg.sender)]) - (lastInvest[address(msg.sender)] * invested[address(msg.sender)]) / 1234440 / 100) - (sub_ce138e64 * invested[address(msg.sender)] / 100) >= invested[address(msg.sender)]
                                                                    invested[address(msg.sender)] = invested[address(msg.sender)] + ((block.timestamp * invested[address(msg.sender)]) - (lastInvest[address(msg.sender)] * invested[address(msg.sender)]) / 1234440) + (60 * (block.timestamp * invested[address(msg.sender)]) - (lastInvest[address(msg.sender)] * invested[address(msg.sender)]) / 1234440 / 100) - (sub_ce138e64 * invested[address(msg.sender)] / 100)
                                                            else:
                                                                sub_ecb7cb1b[address(msg.sender)] = sub_ecb7cb1b[address(msg.sender)] + ((block.timestamp * invested[address(msg.sender)]) - (lastInvest[address(msg.sender)] * invested[address(msg.sender)]) / 1234440) + (60 * (block.timestamp * invested[address(msg.sender)]) - (lastInvest[address(msg.sender)] * invested[address(msg.sender)]) / 1234440 / 100)
                                                                call msg.sender with:
                                                                   value ((block.timestamp * invested[address(msg.sender)]) - (lastInvest[address(msg.sender)] * invested[address(msg.sender)]) / 1234440) + (60 * (block.timestamp * invested[address(msg.sender)]) - (lastInvest[address(msg.sender)] * invested[address(msg.sender)]) / 1234440 / 100) wei
                                                                     gas 2300 * is_zero(value) wei
                                                                if not ext_call.success:
                                                                    revert with ext_call.return_data[0 len return_data.size]
                                                                else:
                                                    else:
                                                        require ((block.timestamp * invested[address(msg.sender)]) - (lastInvest[address(msg.sender)] * invested[address(msg.sender)]) / 1234440) + (60 * (block.timestamp * invested[address(msg.sender)]) - (lastInvest[address(msg.sender)] * invested[address(msg.sender)]) / 1234440 / 100) > 0
                                                        require block.timestamp - launchtime >= 360 * 24 * 3600
                                                        lastInvest[address(msg.sender)] = block.timestamp
                                                        lastWithdraw[address(msg.sender)] = block.timestamp
                                                        if ((block.timestamp * invested[address(msg.sender)]) - (lastInvest[address(msg.sender)] * invested[address(msg.sender)]) / 1234440) + (60 * (block.timestamp * invested[address(msg.sender)]) - (lastInvest[address(msg.sender)] * invested[address(msg.sender)]) / 1234440 / 100) >= (invested[address(msg.sender)] * stor17) - sub_ecb7cb1b[address(msg.sender)]:
                                                            if sub_ecb7cb1b[address(msg.sender)] >= invested[address(msg.sender)] * stor17:
                                                            else:
                                                                if (invested[address(msg.sender)] * stor17) - sub_ecb7cb1b[address(msg.sender)] >= 0:
                                                                    require 0 <= (invested[address(msg.sender)] * stor17) - sub_ecb7cb1b[address(msg.sender)]
                                                                    sub_ecb7cb1b[address(msg.sender)] = invested[address(msg.sender)] * stor17
                                                                    call msg.sender with:
                                                                         gas 2300 wei
                                                                    if not ext_call.success:
                                                                        revert with ext_call.return_data[0 len return_data.size]
                                                                    else:
                                                                        require invested[address(msg.sender)] + (invested[address(msg.sender)] * stor17) - sub_ecb7cb1b[address(msg.sender)] >= invested[address(msg.sender)]
                                                                        invested[address(msg.sender)] = invested[address(msg.sender)] + (invested[address(msg.sender)] * stor17) - sub_ecb7cb1b[address(msg.sender)]
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
                                                                       value (invested[address(msg.sender)] * stor17) - sub_ecb7cb1b[address(msg.sender)] wei
                                                                         gas 2300 * is_zero(value) wei
                                                                    if not ext_call.success:
                                                                        revert with ext_call.return_data[0 len return_data.size]
                                                                    else:
                                                        else:
                                                            if ((block.timestamp * invested[address(msg.sender)]) - (lastInvest[address(msg.sender)] * invested[address(msg.sender)]) / 1234440) + (60 * (block.timestamp * invested[address(msg.sender)]) - (lastInvest[address(msg.sender)] * invested[address(msg.sender)]) / 1234440 / 100) >= 0:
                                                                require 0 <= ((block.timestamp * invested[address(msg.sender)]) - (lastInvest[address(msg.sender)] * invested[address(msg.sender)]) / 1234440) + (60 * (block.timestamp * invested[address(msg.sender)]) - (lastInvest[address(msg.sender)] * invested[address(msg.sender)]) / 1234440 / 100)
                                                                sub_ecb7cb1b[address(msg.sender)] = sub_ecb7cb1b[address(msg.sender)] + ((block.timestamp * invested[address(msg.sender)]) - (lastInvest[address(msg.sender)] * invested[address(msg.sender)]) / 1234440) + (60 * (block.timestamp * invested[address(msg.sender)]) - (lastInvest[address(msg.sender)] * invested[address(msg.sender)]) / 1234440 / 100)
                                                                call msg.sender with:
                                                                     gas 2300 wei
                                                                if not ext_call.success:
                                                                    revert with ext_call.return_data[0 len return_data.size]
                                                                else:
                                                                    require invested[address(msg.sender)] + ((block.timestamp * invested[address(msg.sender)]) - (lastInvest[address(msg.sender)] * invested[address(msg.sender)]) / 1234440) + (60 * (block.timestamp * invested[address(msg.sender)]) - (lastInvest[address(msg.sender)] * invested[address(msg.sender)]) / 1234440 / 100) >= invested[address(msg.sender)]
                                                                    invested[address(msg.sender)] = invested[address(msg.sender)] + ((block.timestamp * invested[address(msg.sender)]) - (lastInvest[address(msg.sender)] * invested[address(msg.sender)]) / 1234440) + (60 * (block.timestamp * invested[address(msg.sender)]) - (lastInvest[address(msg.sender)] * invested[address(msg.sender)]) / 1234440 / 100)
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
                                                    require launchtime <= block.timestamp
                                                    if sub_ce138e64:
                                                        require sub_ce138e64
                                                        require sub_ce138e64 * invested[address(msg.sender)] / sub_ce138e64 == invested[address(msg.sender)]
                                                        require (block.timestamp * invested[address(msg.sender)]) - (lastInvest[address(msg.sender)] * invested[address(msg.sender)]) / 1234440 > 0
                                                        require block.timestamp - launchtime >= 360 * 24 * 3600
                                                        lastInvest[address(msg.sender)] = block.timestamp
                                                        lastWithdraw[address(msg.sender)] = block.timestamp
                                                        if (block.timestamp * invested[address(msg.sender)]) - (lastInvest[address(msg.sender)] * invested[address(msg.sender)]) / 1234440 >= (invested[address(msg.sender)] * stor17) - sub_ecb7cb1b[address(msg.sender)]:
                                                            if sub_ecb7cb1b[address(msg.sender)] >= invested[address(msg.sender)] * stor17:
                                                            else:
                                                                if (invested[address(msg.sender)] * stor17) - sub_ecb7cb1b[address(msg.sender)] >= sub_ce138e64 * invested[address(msg.sender)] / 100:
                                                                    require sub_ce138e64 * invested[address(msg.sender)] / 100 <= (invested[address(msg.sender)] * stor17) - sub_ecb7cb1b[address(msg.sender)]
                                                                    sub_ecb7cb1b[address(msg.sender)] = invested[address(msg.sender)] * stor17
                                                                    call msg.sender with:
                                                                       value sub_ce138e64 * invested[address(msg.sender)] / 100 wei
                                                                         gas 2300 * is_zero(value) wei
                                                                    if not ext_call.success:
                                                                        revert with ext_call.return_data[0 len return_data.size]
                                                                    else:
                                                                        require invested[address(msg.sender)] + (invested[address(msg.sender)] * stor17) - sub_ecb7cb1b[address(msg.sender)] - (sub_ce138e64 * invested[address(msg.sender)] / 100) >= invested[address(msg.sender)]
                                                                        invested[address(msg.sender)] = invested[address(msg.sender)] + (invested[address(msg.sender)] * stor17) - sub_ecb7cb1b[address(msg.sender)] - (sub_ce138e64 * invested[address(msg.sender)] / 100)
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
                                                                       value (invested[address(msg.sender)] * stor17) - sub_ecb7cb1b[address(msg.sender)] wei
                                                                         gas 2300 * is_zero(value) wei
                                                                    if not ext_call.success:
                                                                        revert with ext_call.return_data[0 len return_data.size]
                                                                    else:
                                                        else:
                                                            if (block.timestamp * invested[address(msg.sender)]) - (lastInvest[address(msg.sender)] * invested[address(msg.sender)]) / 1234440 >= sub_ce138e64 * invested[address(msg.sender)] / 100:
                                                                require sub_ce138e64 * invested[address(msg.sender)] / 100 <= (block.timestamp * invested[address(msg.sender)]) - (lastInvest[address(msg.sender)] * invested[address(msg.sender)]) / 1234440
                                                                sub_ecb7cb1b[address(msg.sender)] += (block.timestamp * invested[address(msg.sender)]) - (lastInvest[address(msg.sender)] * invested[address(msg.sender)]) / 1234440
                                                                call msg.sender with:
                                                                   value sub_ce138e64 * invested[address(msg.sender)] / 100 wei
                                                                     gas 2300 * is_zero(value) wei
                                                                if not ext_call.success:
                                                                    revert with ext_call.return_data[0 len return_data.size]
                                                                else:
                                                                    require invested[address(msg.sender)] + ((block.timestamp * invested[address(msg.sender)]) - (lastInvest[address(msg.sender)] * invested[address(msg.sender)]) / 1234440) - (sub_ce138e64 * invested[address(msg.sender)] / 100) >= invested[address(msg.sender)]
                                                                    invested[address(msg.sender)] = invested[address(msg.sender)] + ((block.timestamp * invested[address(msg.sender)]) - (lastInvest[address(msg.sender)] * invested[address(msg.sender)]) / 1234440) - (sub_ce138e64 * invested[address(msg.sender)] / 100)
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
                                                        require block.timestamp - launchtime >= 360 * 24 * 3600
                                                        lastInvest[address(msg.sender)] = block.timestamp
                                                        lastWithdraw[address(msg.sender)] = block.timestamp
                                                        if (block.timestamp * invested[address(msg.sender)]) - (lastInvest[address(msg.sender)] * invested[address(msg.sender)]) / 1234440 >= (invested[address(msg.sender)] * stor17) - sub_ecb7cb1b[address(msg.sender)]:
                                                            if sub_ecb7cb1b[address(msg.sender)] >= invested[address(msg.sender)] * stor17:
                                                            else:
                                                                if (invested[address(msg.sender)] * stor17) - sub_ecb7cb1b[address(msg.sender)] >= 0:
                                                                    require 0 <= (invested[address(msg.sender)] * stor17) - sub_ecb7cb1b[address(msg.sender)]
                                                                    sub_ecb7cb1b[address(msg.sender)] = invested[address(msg.sender)] * stor17
                                                                    call msg.sender with:
                                                                         gas 2300 wei
                                                                    if not ext_call.success:
                                                                        revert with ext_call.return_data[0 len return_data.size]
                                                                    else:
                                                                        require invested[address(msg.sender)] + (invested[address(msg.sender)] * stor17) - sub_ecb7cb1b[address(msg.sender)] >= invested[address(msg.sender)]
                                                                        invested[address(msg.sender)] = invested[address(msg.sender)] + (invested[address(msg.sender)] * stor17) - sub_ecb7cb1b[address(msg.sender)]
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
                                                                       value (invested[address(msg.sender)] * stor17) - sub_ecb7cb1b[address(msg.sender)] wei
                                                                         gas 2300 * is_zero(value) wei
                                                                    if not ext_call.success:
                                                                        revert with ext_call.return_data[0 len return_data.size]
                                                                    else:
                                                        else:
                                                            if (block.timestamp * invested[address(msg.sender)]) - (lastInvest[address(msg.sender)] * invested[address(msg.sender)]) / 1234440 >= 0:
                                                                require 0 <= (block.timestamp * invested[address(msg.sender)]) - (lastInvest[address(msg.sender)] * invested[address(msg.sender)]) / 1234440
                                                                sub_ecb7cb1b[address(msg.sender)] += (block.timestamp * invested[address(msg.sender)]) - (lastInvest[address(msg.sender)] * invested[address(msg.sender)]) / 1234440
                                                                call msg.sender with:
                                                                     gas 2300 wei
                                                                if not ext_call.success:
                                                                    revert with ext_call.return_data[0 len return_data.size]
                                                                else:
                                                                    require invested[address(msg.sender)] + ((block.timestamp * invested[address(msg.sender)]) - (lastInvest[address(msg.sender)] * invested[address(msg.sender)]) / 1234440) >= invested[address(msg.sender)]
                                                                    invested[address(msg.sender)] += (block.timestamp * invested[address(msg.sender)]) - (lastInvest[address(msg.sender)] * invested[address(msg.sender)]) / 1234440
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
                                            require launchtime <= block.timestamp
                                            if sub_ce138e64:
                                                require sub_ce138e64
                                                require sub_ce138e64 * invested[address(msg.sender)] / sub_ce138e64 == invested[address(msg.sender)]
                                                require ((block.timestamp * invested[address(msg.sender)]) - (lastInvest[address(msg.sender)] * invested[address(msg.sender)]) / 1234440) + (40 * (block.timestamp * invested[address(msg.sender)]) - (lastInvest[address(msg.sender)] * invested[address(msg.sender)]) / 1234440 / 100) > 0
                                                require block.timestamp - launchtime >= 360 * 24 * 3600
                                                lastInvest[address(msg.sender)] = block.timestamp
                                                lastWithdraw[address(msg.sender)] = block.timestamp
                                                if ((block.timestamp * invested[address(msg.sender)]) - (lastInvest[address(msg.sender)] * invested[address(msg.sender)]) / 1234440) + (40 * (block.timestamp * invested[address(msg.sender)]) - (lastInvest[address(msg.sender)] * invested[address(msg.sender)]) / 1234440 / 100) >= (invested[address(msg.sender)] * stor17) - sub_ecb7cb1b[address(msg.sender)]:
                                                    if sub_ecb7cb1b[address(msg.sender)] >= invested[address(msg.sender)] * stor17:
                                                    else:
                                                        if (invested[address(msg.sender)] * stor17) - sub_ecb7cb1b[address(msg.sender)] >= sub_ce138e64 * invested[address(msg.sender)] / 100:
                                                            require sub_ce138e64 * invested[address(msg.sender)] / 100 <= (invested[address(msg.sender)] * stor17) - sub_ecb7cb1b[address(msg.sender)]
                                                            sub_ecb7cb1b[address(msg.sender)] = invested[address(msg.sender)] * stor17
                                                            call msg.sender with:
                                                               value sub_ce138e64 * invested[address(msg.sender)] / 100 wei
                                                                 gas 2300 * is_zero(value) wei
                                                            if not ext_call.success:
                                                                revert with ext_call.return_data[0 len return_data.size]
                                                            else:
                                                                require invested[address(msg.sender)] + (invested[address(msg.sender)] * stor17) - sub_ecb7cb1b[address(msg.sender)] - (sub_ce138e64 * invested[address(msg.sender)] / 100) >= invested[address(msg.sender)]
                                                                invested[address(msg.sender)] = invested[address(msg.sender)] + (invested[address(msg.sender)] * stor17) - sub_ecb7cb1b[address(msg.sender)] - (sub_ce138e64 * invested[address(msg.sender)] / 100)
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
                                                               value (invested[address(msg.sender)] * stor17) - sub_ecb7cb1b[address(msg.sender)] wei
                                                                 gas 2300 * is_zero(value) wei
                                                            if not ext_call.success:
                                                                revert with ext_call.return_data[0 len return_data.size]
                                                            else:
                                                else:
                                                    if ((block.timestamp * invested[address(msg.sender)]) - (lastInvest[address(msg.sender)] * invested[address(msg.sender)]) / 1234440) + (40 * (block.timestamp * invested[address(msg.sender)]) - (lastInvest[address(msg.sender)] * invested[address(msg.sender)]) / 1234440 / 100) >= sub_ce138e64 * invested[address(msg.sender)] / 100:
                                                        require sub_ce138e64 * invested[address(msg.sender)] / 100 <= ((block.timestamp * invested[address(msg.sender)]) - (lastInvest[address(msg.sender)] * invested[address(msg.sender)]) / 1234440) + (40 * (block.timestamp * invested[address(msg.sender)]) - (lastInvest[address(msg.sender)] * invested[address(msg.sender)]) / 1234440 / 100)
                                                        sub_ecb7cb1b[address(msg.sender)] = sub_ecb7cb1b[address(msg.sender)] + ((block.timestamp * invested[address(msg.sender)]) - (lastInvest[address(msg.sender)] * invested[address(msg.sender)]) / 1234440) + (40 * (block.timestamp * invested[address(msg.sender)]) - (lastInvest[address(msg.sender)] * invested[address(msg.sender)]) / 1234440 / 100)
                                                        call msg.sender with:
                                                           value sub_ce138e64 * invested[address(msg.sender)] / 100 wei
                                                             gas 2300 * is_zero(value) wei
                                                        if not ext_call.success:
                                                            revert with ext_call.return_data[0 len return_data.size]
                                                        else:
                                                            require invested[address(msg.sender)] + ((block.timestamp * invested[address(msg.sender)]) - (lastInvest[address(msg.sender)] * invested[address(msg.sender)]) / 1234440) + (40 * (block.timestamp * invested[address(msg.sender)]) - (lastInvest[address(msg.sender)] * invested[address(msg.sender)]) / 1234440 / 100) - (sub_ce138e64 * invested[address(msg.sender)] / 100) >= invested[address(msg.sender)]
                                                            invested[address(msg.sender)] = invested[address(msg.sender)] + ((block.timestamp * invested[address(msg.sender)]) - (lastInvest[address(msg.sender)] * invested[address(msg.sender)]) / 1234440) + (40 * (block.timestamp * invested[address(msg.sender)]) - (lastInvest[address(msg.sender)] * invested[address(msg.sender)]) / 1234440 / 100) - (sub_ce138e64 * invested[address(msg.sender)] / 100)
                                                    else:
                                                        sub_ecb7cb1b[address(msg.sender)] = sub_ecb7cb1b[address(msg.sender)] + ((block.timestamp * invested[address(msg.sender)]) - (lastInvest[address(msg.sender)] * invested[address(msg.sender)]) / 1234440) + (40 * (block.timestamp * invested[address(msg.sender)]) - (lastInvest[address(msg.sender)] * invested[address(msg.sender)]) / 1234440 / 100)
                                                        call msg.sender with:
                                                           value ((block.timestamp * invested[address(msg.sender)]) - (lastInvest[address(msg.sender)] * invested[address(msg.sender)]) / 1234440) + (40 * (block.timestamp * invested[address(msg.sender)]) - (lastInvest[address(msg.sender)] * invested[address(msg.sender)]) / 1234440 / 100) wei
                                                             gas 2300 * is_zero(value) wei
                                                        if not ext_call.success:
                                                            revert with ext_call.return_data[0 len return_data.size]
                                                        else:
                                            else:
                                                require ((block.timestamp * invested[address(msg.sender)]) - (lastInvest[address(msg.sender)] * invested[address(msg.sender)]) / 1234440) + (40 * (block.timestamp * invested[address(msg.sender)]) - (lastInvest[address(msg.sender)] * invested[address(msg.sender)]) / 1234440 / 100) > 0
                                                require block.timestamp - launchtime >= 360 * 24 * 3600
                                                lastInvest[address(msg.sender)] = block.timestamp
                                                lastWithdraw[address(msg.sender)] = block.timestamp
                                                if ((block.timestamp * invested[address(msg.sender)]) - (lastInvest[address(msg.sender)] * invested[address(msg.sender)]) / 1234440) + (40 * (block.timestamp * invested[address(msg.sender)]) - (lastInvest[address(msg.sender)] * invested[address(msg.sender)]) / 1234440 / 100) >= (invested[address(msg.sender)] * stor17) - sub_ecb7cb1b[address(msg.sender)]:
                                                    if sub_ecb7cb1b[address(msg.sender)] >= invested[address(msg.sender)] * stor17:
                                                    else:
                                                        if (invested[address(msg.sender)] * stor17) - sub_ecb7cb1b[address(msg.sender)] >= 0:
                                                            require 0 <= (invested[address(msg.sender)] * stor17) - sub_ecb7cb1b[address(msg.sender)]
                                                            sub_ecb7cb1b[address(msg.sender)] = invested[address(msg.sender)] * stor17
                                                            call msg.sender with:
                                                                 gas 2300 wei
                                                            if not ext_call.success:
                                                                revert with ext_call.return_data[0 len return_data.size]
                                                            else:
                                                                require invested[address(msg.sender)] + (invested[address(msg.sender)] * stor17) - sub_ecb7cb1b[address(msg.sender)] >= invested[address(msg.sender)]
                                                                invested[address(msg.sender)] = invested[address(msg.sender)] + (invested[address(msg.sender)] * stor17) - sub_ecb7cb1b[address(msg.sender)]
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
                                                               value (invested[address(msg.sender)] * stor17) - sub_ecb7cb1b[address(msg.sender)] wei
                                                                 gas 2300 * is_zero(value) wei
                                                            if not ext_call.success:
                                                                revert with ext_call.return_data[0 len return_data.size]
                                                            else:
                                                else:
                                                    if ((block.timestamp * invested[address(msg.sender)]) - (lastInvest[address(msg.sender)] * invested[address(msg.sender)]) / 1234440) + (40 * (block.timestamp * invested[address(msg.sender)]) - (lastInvest[address(msg.sender)] * invested[address(msg.sender)]) / 1234440 / 100) >= 0:
                                                        require 0 <= ((block.timestamp * invested[address(msg.sender)]) - (lastInvest[address(msg.sender)] * invested[address(msg.sender)]) / 1234440) + (40 * (block.timestamp * invested[address(msg.sender)]) - (lastInvest[address(msg.sender)] * invested[address(msg.sender)]) / 1234440 / 100)
                                                        sub_ecb7cb1b[address(msg.sender)] = sub_ecb7cb1b[address(msg.sender)] + ((block.timestamp * invested[address(msg.sender)]) - (lastInvest[address(msg.sender)] * invested[address(msg.sender)]) / 1234440) + (40 * (block.timestamp * invested[address(msg.sender)]) - (lastInvest[address(msg.sender)] * invested[address(msg.sender)]) / 1234440 / 100)
                                                        call msg.sender with:
                                                             gas 2300 wei
                                                        if not ext_call.success:
                                                            revert with ext_call.return_data[0 len return_data.size]
                                                        else:
                                                            require invested[address(msg.sender)] + ((block.timestamp * invested[address(msg.sender)]) - (lastInvest[address(msg.sender)] * invested[address(msg.sender)]) / 1234440) + (40 * (block.timestamp * invested[address(msg.sender)]) - (lastInvest[address(msg.sender)] * invested[address(msg.sender)]) / 1234440 / 100) >= invested[address(msg.sender)]
                                                            invested[address(msg.sender)] = invested[address(msg.sender)] + ((block.timestamp * invested[address(msg.sender)]) - (lastInvest[address(msg.sender)] * invested[address(msg.sender)]) / 1234440) + (40 * (block.timestamp * invested[address(msg.sender)]) - (lastInvest[address(msg.sender)] * invested[address(msg.sender)]) / 1234440 / 100)
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
                                            require launchtime <= block.timestamp
                                            if sub_ce138e64:
                                                require sub_ce138e64
                                                require sub_ce138e64 * invested[address(msg.sender)] / sub_ce138e64 == invested[address(msg.sender)]
                                                require (block.timestamp * invested[address(msg.sender)]) - (lastInvest[address(msg.sender)] * invested[address(msg.sender)]) / 1234440 > 0
                                                require block.timestamp - launchtime >= 360 * 24 * 3600
                                                lastInvest[address(msg.sender)] = block.timestamp
                                                lastWithdraw[address(msg.sender)] = block.timestamp
                                                if (block.timestamp * invested[address(msg.sender)]) - (lastInvest[address(msg.sender)] * invested[address(msg.sender)]) / 1234440 >= (invested[address(msg.sender)] * stor17) - sub_ecb7cb1b[address(msg.sender)]:
                                                    if sub_ecb7cb1b[address(msg.sender)] >= invested[address(msg.sender)] * stor17:
                                                    else:
                                                        if (invested[address(msg.sender)] * stor17) - sub_ecb7cb1b[address(msg.sender)] >= sub_ce138e64 * invested[address(msg.sender)] / 100:
                                                            require sub_ce138e64 * invested[address(msg.sender)] / 100 <= (invested[address(msg.sender)] * stor17) - sub_ecb7cb1b[address(msg.sender)]
                                                            sub_ecb7cb1b[address(msg.sender)] = invested[address(msg.sender)] * stor17
                                                            call msg.sender with:
                                                               value sub_ce138e64 * invested[address(msg.sender)] / 100 wei
                                                                 gas 2300 * is_zero(value) wei
                                                            if not ext_call.success:
                                                                revert with ext_call.return_data[0 len return_data.size]
                                                            else:
                                                                require invested[address(msg.sender)] + (invested[address(msg.sender)] * stor17) - sub_ecb7cb1b[address(msg.sender)] - (sub_ce138e64 * invested[address(msg.sender)] / 100) >= invested[address(msg.sender)]
                                                                invested[address(msg.sender)] = invested[address(msg.sender)] + (invested[address(msg.sender)] * stor17) - sub_ecb7cb1b[address(msg.sender)] - (sub_ce138e64 * invested[address(msg.sender)] / 100)
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
                                                               value (invested[address(msg.sender)] * stor17) - sub_ecb7cb1b[address(msg.sender)] wei
                                                                 gas 2300 * is_zero(value) wei
                                                            if not ext_call.success:
                                                                revert with ext_call.return_data[0 len return_data.size]
                                                            else:
                                                else:
                                                    if (block.timestamp * invested[address(msg.sender)]) - (lastInvest[address(msg.sender)] * invested[address(msg.sender)]) / 1234440 >= sub_ce138e64 * invested[address(msg.sender)] / 100:
                                                        require sub_ce138e64 * invested[address(msg.sender)] / 100 <= (block.timestamp * invested[address(msg.sender)]) - (lastInvest[address(msg.sender)] * invested[address(msg.sender)]) / 1234440
                                                        sub_ecb7cb1b[address(msg.sender)] += (block.timestamp * invested[address(msg.sender)]) - (lastInvest[address(msg.sender)] * invested[address(msg.sender)]) / 1234440
                                                        call msg.sender with:
                                                           value sub_ce138e64 * invested[address(msg.sender)] / 100 wei
                                                             gas 2300 * is_zero(value) wei
                                                        if not ext_call.success:
                                                            revert with ext_call.return_data[0 len return_data.size]
                                                        else:
                                                            require invested[address(msg.sender)] + ((block.timestamp * invested[address(msg.sender)]) - (lastInvest[address(msg.sender)] * invested[address(msg.sender)]) / 1234440) - (sub_ce138e64 * invested[address(msg.sender)] / 100) >= invested[address(msg.sender)]
                                                            invested[address(msg.sender)] = invested[address(msg.sender)] + ((block.timestamp * invested[address(msg.sender)]) - (lastInvest[address(msg.sender)] * invested[address(msg.sender)]) / 1234440) - (sub_ce138e64 * invested[address(msg.sender)] / 100)
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
                                                require block.timestamp - launchtime >= 360 * 24 * 3600
                                                lastInvest[address(msg.sender)] = block.timestamp
                                                lastWithdraw[address(msg.sender)] = block.timestamp
                                                if (block.timestamp * invested[address(msg.sender)]) - (lastInvest[address(msg.sender)] * invested[address(msg.sender)]) / 1234440 >= (invested[address(msg.sender)] * stor17) - sub_ecb7cb1b[address(msg.sender)]:
                                                    if sub_ecb7cb1b[address(msg.sender)] >= invested[address(msg.sender)] * stor17:
                                                    else:
                                                        if (invested[address(msg.sender)] * stor17) - sub_ecb7cb1b[address(msg.sender)] >= 0:
                                                            require 0 <= (invested[address(msg.sender)] * stor17) - sub_ecb7cb1b[address(msg.sender)]
                                                            sub_ecb7cb1b[address(msg.sender)] = invested[address(msg.sender)] * stor17
                                                            call msg.sender with:
                                                                 gas 2300 wei
                                                            if not ext_call.success:
                                                                revert with ext_call.return_data[0 len return_data.size]
                                                            else:
                                                                require invested[address(msg.sender)] + (invested[address(msg.sender)] * stor17) - sub_ecb7cb1b[address(msg.sender)] >= invested[address(msg.sender)]
                                                                invested[address(msg.sender)] = invested[address(msg.sender)] + (invested[address(msg.sender)] * stor17) - sub_ecb7cb1b[address(msg.sender)]
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
                                                               value (invested[address(msg.sender)] * stor17) - sub_ecb7cb1b[address(msg.sender)] wei
                                                                 gas 2300 * is_zero(value) wei
                                                            if not ext_call.success:
                                                                revert with ext_call.return_data[0 len return_data.size]
                                                            else:
                                                else:
                                                    if (block.timestamp * invested[address(msg.sender)]) - (lastInvest[address(msg.sender)] * invested[address(msg.sender)]) / 1234440 >= 0:
                                                        require 0 <= (block.timestamp * invested[address(msg.sender)]) - (lastInvest[address(msg.sender)] * invested[address(msg.sender)]) / 1234440
                                                        sub_ecb7cb1b[address(msg.sender)] += (block.timestamp * invested[address(msg.sender)]) - (lastInvest[address(msg.sender)] * invested[address(msg.sender)]) / 1234440
                                                        call msg.sender with:
                                                             gas 2300 wei
                                                        if not ext_call.success:
                                                            revert with ext_call.return_data[0 len return_data.size]
                                                        else:
                                                            require invested[address(msg.sender)] + ((block.timestamp * invested[address(msg.sender)]) - (lastInvest[address(msg.sender)] * invested[address(msg.sender)]) / 1234440) >= invested[address(msg.sender)]
                                                            invested[address(msg.sender)] += (block.timestamp * invested[address(msg.sender)]) - (lastInvest[address(msg.sender)] * invested[address(msg.sender)]) / 1234440
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
                                    require launchtime <= block.timestamp
                                    if sub_ce138e64:
                                        require sub_ce138e64
                                        require sub_ce138e64 * invested[address(msg.sender)] / sub_ce138e64 == invested[address(msg.sender)]
                                        require ((block.timestamp * invested[address(msg.sender)]) - (lastInvest[address(msg.sender)] * invested[address(msg.sender)]) / 1234440) + (20 * (block.timestamp * invested[address(msg.sender)]) - (lastInvest[address(msg.sender)] * invested[address(msg.sender)]) / 1234440 / 100) > 0
                                        require block.timestamp - launchtime >= 360 * 24 * 3600
                                        lastInvest[address(msg.sender)] = block.timestamp
                                        lastWithdraw[address(msg.sender)] = block.timestamp
                                        if ((block.timestamp * invested[address(msg.sender)]) - (lastInvest[address(msg.sender)] * invested[address(msg.sender)]) / 1234440) + (20 * (block.timestamp * invested[address(msg.sender)]) - (lastInvest[address(msg.sender)] * invested[address(msg.sender)]) / 1234440 / 100) >= (invested[address(msg.sender)] * stor17) - sub_ecb7cb1b[address(msg.sender)]:
                                            if sub_ecb7cb1b[address(msg.sender)] >= invested[address(msg.sender)] * stor17:
                                            else:
                                                if (invested[address(msg.sender)] * stor17) - sub_ecb7cb1b[address(msg.sender)] >= sub_ce138e64 * invested[address(msg.sender)] / 100:
                                                    require sub_ce138e64 * invested[address(msg.sender)] / 100 <= (invested[address(msg.sender)] * stor17) - sub_ecb7cb1b[address(msg.sender)]
                                                    sub_ecb7cb1b[address(msg.sender)] = invested[address(msg.sender)] * stor17
                                                    call msg.sender with:
                                                       value sub_ce138e64 * invested[address(msg.sender)] / 100 wei
                                                         gas 2300 * is_zero(value) wei
                                                    if not ext_call.success:
                                                        revert with ext_call.return_data[0 len return_data.size]
                                                    else:
                                                        require invested[address(msg.sender)] + (invested[address(msg.sender)] * stor17) - sub_ecb7cb1b[address(msg.sender)] - (sub_ce138e64 * invested[address(msg.sender)] / 100) >= invested[address(msg.sender)]
                                                        invested[address(msg.sender)] = invested[address(msg.sender)] + (invested[address(msg.sender)] * stor17) - sub_ecb7cb1b[address(msg.sender)] - (sub_ce138e64 * invested[address(msg.sender)] / 100)
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
                                                       value (invested[address(msg.sender)] * stor17) - sub_ecb7cb1b[address(msg.sender)] wei
                                                         gas 2300 * is_zero(value) wei
                                                    if not ext_call.success:
                                                        revert with ext_call.return_data[0 len return_data.size]
                                                    else:
                                        else:
                                            if ((block.timestamp * invested[address(msg.sender)]) - (lastInvest[address(msg.sender)] * invested[address(msg.sender)]) / 1234440) + (20 * (block.timestamp * invested[address(msg.sender)]) - (lastInvest[address(msg.sender)] * invested[address(msg.sender)]) / 1234440 / 100) >= sub_ce138e64 * invested[address(msg.sender)] / 100:
                                                require sub_ce138e64 * invested[address(msg.sender)] / 100 <= ((block.timestamp * invested[address(msg.sender)]) - (lastInvest[address(msg.sender)] * invested[address(msg.sender)]) / 1234440) + (20 * (block.timestamp * invested[address(msg.sender)]) - (lastInvest[address(msg.sender)] * invested[address(msg.sender)]) / 1234440 / 100)
                                                sub_ecb7cb1b[address(msg.sender)] = sub_ecb7cb1b[address(msg.sender)] + ((block.timestamp * invested[address(msg.sender)]) - (lastInvest[address(msg.sender)] * invested[address(msg.sender)]) / 1234440) + (20 * (block.timestamp * invested[address(msg.sender)]) - (lastInvest[address(msg.sender)] * invested[address(msg.sender)]) / 1234440 / 100)
                                                call msg.sender with:
                                                   value sub_ce138e64 * invested[address(msg.sender)] / 100 wei
                                                     gas 2300 * is_zero(value) wei
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                else:
                                                    require invested[address(msg.sender)] + ((block.timestamp * invested[address(msg.sender)]) - (lastInvest[address(msg.sender)] * invested[address(msg.sender)]) / 1234440) + (20 * (block.timestamp * invested[address(msg.sender)]) - (lastInvest[address(msg.sender)] * invested[address(msg.sender)]) / 1234440 / 100) - (sub_ce138e64 * invested[address(msg.sender)] / 100) >= invested[address(msg.sender)]
                                                    invested[address(msg.sender)] = invested[address(msg.sender)] + ((block.timestamp * invested[address(msg.sender)]) - (lastInvest[address(msg.sender)] * invested[address(msg.sender)]) / 1234440) + (20 * (block.timestamp * invested[address(msg.sender)]) - (lastInvest[address(msg.sender)] * invested[address(msg.sender)]) / 1234440 / 100) - (sub_ce138e64 * invested[address(msg.sender)] / 100)
                                            else:
                                                sub_ecb7cb1b[address(msg.sender)] = sub_ecb7cb1b[address(msg.sender)] + ((block.timestamp * invested[address(msg.sender)]) - (lastInvest[address(msg.sender)] * invested[address(msg.sender)]) / 1234440) + (20 * (block.timestamp * invested[address(msg.sender)]) - (lastInvest[address(msg.sender)] * invested[address(msg.sender)]) / 1234440 / 100)
                                                call msg.sender with:
                                                   value ((block.timestamp * invested[address(msg.sender)]) - (lastInvest[address(msg.sender)] * invested[address(msg.sender)]) / 1234440) + (20 * (block.timestamp * invested[address(msg.sender)]) - (lastInvest[address(msg.sender)] * invested[address(msg.sender)]) / 1234440 / 100) wei
                                                     gas 2300 * is_zero(value) wei
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                else:
                                    else:
                                        require ((block.timestamp * invested[address(msg.sender)]) - (lastInvest[address(msg.sender)] * invested[address(msg.sender)]) / 1234440) + (20 * (block.timestamp * invested[address(msg.sender)]) - (lastInvest[address(msg.sender)] * invested[address(msg.sender)]) / 1234440 / 100) > 0
                                        require block.timestamp - launchtime >= 360 * 24 * 3600
                                        lastInvest[address(msg.sender)] = block.timestamp
                                        lastWithdraw[address(msg.sender)] = block.timestamp
                                        if ((block.timestamp * invested[address(msg.sender)]) - (lastInvest[address(msg.sender)] * invested[address(msg.sender)]) / 1234440) + (20 * (block.timestamp * invested[address(msg.sender)]) - (lastInvest[address(msg.sender)] * invested[address(msg.sender)]) / 1234440 / 100) >= (invested[address(msg.sender)] * stor17) - sub_ecb7cb1b[address(msg.sender)]:
                                            if sub_ecb7cb1b[address(msg.sender)] >= invested[address(msg.sender)] * stor17:
                                            else:
                                                if (invested[address(msg.sender)] * stor17) - sub_ecb7cb1b[address(msg.sender)] >= 0:
                                                    require 0 <= (invested[address(msg.sender)] * stor17) - sub_ecb7cb1b[address(msg.sender)]
                                                    sub_ecb7cb1b[address(msg.sender)] = invested[address(msg.sender)] * stor17
                                                    call msg.sender with:
                                                         gas 2300 wei
                                                    if not ext_call.success:
                                                        revert with ext_call.return_data[0 len return_data.size]
                                                    else:
                                                        require invested[address(msg.sender)] + (invested[address(msg.sender)] * stor17) - sub_ecb7cb1b[address(msg.sender)] >= invested[address(msg.sender)]
                                                        invested[address(msg.sender)] = invested[address(msg.sender)] + (invested[address(msg.sender)] * stor17) - sub_ecb7cb1b[address(msg.sender)]
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
                                                       value (invested[address(msg.sender)] * stor17) - sub_ecb7cb1b[address(msg.sender)] wei
                                                         gas 2300 * is_zero(value) wei
                                                    if not ext_call.success:
                                                        revert with ext_call.return_data[0 len return_data.size]
                                                    else:
                                        else:
                                            if ((block.timestamp * invested[address(msg.sender)]) - (lastInvest[address(msg.sender)] * invested[address(msg.sender)]) / 1234440) + (20 * (block.timestamp * invested[address(msg.sender)]) - (lastInvest[address(msg.sender)] * invested[address(msg.sender)]) / 1234440 / 100) >= 0:
                                                require 0 <= ((block.timestamp * invested[address(msg.sender)]) - (lastInvest[address(msg.sender)] * invested[address(msg.sender)]) / 1234440) + (20 * (block.timestamp * invested[address(msg.sender)]) - (lastInvest[address(msg.sender)] * invested[address(msg.sender)]) / 1234440 / 100)
                                                sub_ecb7cb1b[address(msg.sender)] = sub_ecb7cb1b[address(msg.sender)] + ((block.timestamp * invested[address(msg.sender)]) - (lastInvest[address(msg.sender)] * invested[address(msg.sender)]) / 1234440) + (20 * (block.timestamp * invested[address(msg.sender)]) - (lastInvest[address(msg.sender)] * invested[address(msg.sender)]) / 1234440 / 100)
                                                call msg.sender with:
                                                     gas 2300 wei
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                else:
                                                    require invested[address(msg.sender)] + ((block.timestamp * invested[address(msg.sender)]) - (lastInvest[address(msg.sender)] * invested[address(msg.sender)]) / 1234440) + (20 * (block.timestamp * invested[address(msg.sender)]) - (lastInvest[address(msg.sender)] * invested[address(msg.sender)]) / 1234440 / 100) >= invested[address(msg.sender)]
                                                    invested[address(msg.sender)] = invested[address(msg.sender)] + ((block.timestamp * invested[address(msg.sender)]) - (lastInvest[address(msg.sender)] * invested[address(msg.sender)]) / 1234440) + (20 * (block.timestamp * invested[address(msg.sender)]) - (lastInvest[address(msg.sender)] * invested[address(msg.sender)]) / 1234440 / 100)
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
                                    require launchtime <= block.timestamp
                                    if sub_ce138e64:
                                        require sub_ce138e64
                                        require sub_ce138e64 * invested[address(msg.sender)] / sub_ce138e64 == invested[address(msg.sender)]
                                        require (block.timestamp * invested[address(msg.sender)]) - (lastInvest[address(msg.sender)] * invested[address(msg.sender)]) / 1234440 > 0
                                        require block.timestamp - launchtime >= 360 * 24 * 3600
                                        lastInvest[address(msg.sender)] = block.timestamp
                                        lastWithdraw[address(msg.sender)] = block.timestamp
                                        if (block.timestamp * invested[address(msg.sender)]) - (lastInvest[address(msg.sender)] * invested[address(msg.sender)]) / 1234440 >= (invested[address(msg.sender)] * stor17) - sub_ecb7cb1b[address(msg.sender)]:
                                            if sub_ecb7cb1b[address(msg.sender)] >= invested[address(msg.sender)] * stor17:
                                            else:
                                                if (invested[address(msg.sender)] * stor17) - sub_ecb7cb1b[address(msg.sender)] >= sub_ce138e64 * invested[address(msg.sender)] / 100:
                                                    require sub_ce138e64 * invested[address(msg.sender)] / 100 <= (invested[address(msg.sender)] * stor17) - sub_ecb7cb1b[address(msg.sender)]
                                                    sub_ecb7cb1b[address(msg.sender)] = invested[address(msg.sender)] * stor17
                                                    call msg.sender with:
                                                       value sub_ce138e64 * invested[address(msg.sender)] / 100 wei
                                                         gas 2300 * is_zero(value) wei
                                                    if not ext_call.success:
                                                        revert with ext_call.return_data[0 len return_data.size]
                                                    else:
                                                        require invested[address(msg.sender)] + (invested[address(msg.sender)] * stor17) - sub_ecb7cb1b[address(msg.sender)] - (sub_ce138e64 * invested[address(msg.sender)] / 100) >= invested[address(msg.sender)]
                                                        invested[address(msg.sender)] = invested[address(msg.sender)] + (invested[address(msg.sender)] * stor17) - sub_ecb7cb1b[address(msg.sender)] - (sub_ce138e64 * invested[address(msg.sender)] / 100)
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
                                                       value (invested[address(msg.sender)] * stor17) - sub_ecb7cb1b[address(msg.sender)] wei
                                                         gas 2300 * is_zero(value) wei
                                                    if not ext_call.success:
                                                        revert with ext_call.return_data[0 len return_data.size]
                                                    else:
                                        else:
                                            if (block.timestamp * invested[address(msg.sender)]) - (lastInvest[address(msg.sender)] * invested[address(msg.sender)]) / 1234440 >= sub_ce138e64 * invested[address(msg.sender)] / 100:
                                                require sub_ce138e64 * invested[address(msg.sender)] / 100 <= (block.timestamp * invested[address(msg.sender)]) - (lastInvest[address(msg.sender)] * invested[address(msg.sender)]) / 1234440
                                                sub_ecb7cb1b[address(msg.sender)] += (block.timestamp * invested[address(msg.sender)]) - (lastInvest[address(msg.sender)] * invested[address(msg.sender)]) / 1234440
                                                call msg.sender with:
                                                   value sub_ce138e64 * invested[address(msg.sender)] / 100 wei
                                                     gas 2300 * is_zero(value) wei
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                else:
                                                    require invested[address(msg.sender)] + ((block.timestamp * invested[address(msg.sender)]) - (lastInvest[address(msg.sender)] * invested[address(msg.sender)]) / 1234440) - (sub_ce138e64 * invested[address(msg.sender)] / 100) >= invested[address(msg.sender)]
                                                    invested[address(msg.sender)] = invested[address(msg.sender)] + ((block.timestamp * invested[address(msg.sender)]) - (lastInvest[address(msg.sender)] * invested[address(msg.sender)]) / 1234440) - (sub_ce138e64 * invested[address(msg.sender)] / 100)
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
                                        require block.timestamp - launchtime >= 360 * 24 * 3600
                                        lastInvest[address(msg.sender)] = block.timestamp
                                        lastWithdraw[address(msg.sender)] = block.timestamp
                                        if (block.timestamp * invested[address(msg.sender)]) - (lastInvest[address(msg.sender)] * invested[address(msg.sender)]) / 1234440 >= (invested[address(msg.sender)] * stor17) - sub_ecb7cb1b[address(msg.sender)]:
                                            if sub_ecb7cb1b[address(msg.sender)] >= invested[address(msg.sender)] * stor17:
                                            else:
                                                if (invested[address(msg.sender)] * stor17) - sub_ecb7cb1b[address(msg.sender)] >= 0:
                                                    require 0 <= (invested[address(msg.sender)] * stor17) - sub_ecb7cb1b[address(msg.sender)]
                                                    sub_ecb7cb1b[address(msg.sender)] = invested[address(msg.sender)] * stor17
                                                    call msg.sender with:
                                                         gas 2300 wei
                                                    if not ext_call.success:
                                                        revert with ext_call.return_data[0 len return_data.size]
                                                    else:
                                                        require invested[address(msg.sender)] + (invested[address(msg.sender)] * stor17) - sub_ecb7cb1b[address(msg.sender)] >= invested[address(msg.sender)]
                                                        invested[address(msg.sender)] = invested[address(msg.sender)] + (invested[address(msg.sender)] * stor17) - sub_ecb7cb1b[address(msg.sender)]
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
                                                       value (invested[address(msg.sender)] * stor17) - sub_ecb7cb1b[address(msg.sender)] wei
                                                         gas 2300 * is_zero(value) wei
                                                    if not ext_call.success:
                                                        revert with ext_call.return_data[0 len return_data.size]
                                                    else:
                                        else:
                                            if (block.timestamp * invested[address(msg.sender)]) - (lastInvest[address(msg.sender)] * invested[address(msg.sender)]) / 1234440 >= 0:
                                                require 0 <= (block.timestamp * invested[address(msg.sender)]) - (lastInvest[address(msg.sender)] * invested[address(msg.sender)]) / 1234440
                                                sub_ecb7cb1b[address(msg.sender)] += (block.timestamp * invested[address(msg.sender)]) - (lastInvest[address(msg.sender)] * invested[address(msg.sender)]) / 1234440
                                                call msg.sender with:
                                                     gas 2300 wei
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                else:
                                                    require invested[address(msg.sender)] + ((block.timestamp * invested[address(msg.sender)]) - (lastInvest[address(msg.sender)] * invested[address(msg.sender)]) / 1234440) >= invested[address(msg.sender)]
                                                    invested[address(msg.sender)] += (block.timestamp * invested[address(msg.sender)]) - (lastInvest[address(msg.sender)] * invested[address(msg.sender)]) / 1234440
                                            else:
                                                sub_ecb7cb1b[address(msg.sender)] += (block.timestamp * invested[address(msg.sender)]) - (lastInvest[address(msg.sender)] * invested[address(msg.sender)]) / 1234440
                                                call msg.sender with:
                                                   value (block.timestamp * invested[address(msg.sender)]) - (lastInvest[address(msg.sender)] * invested[address(msg.sender)]) / 1234440 wei
                                                     gas 2300 * is_zero(value) wei
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                else:
                    else:
                        require launchtime <= block.timestamp
                        if sub_ce138e64:
                            require sub_ce138e64
                            require sub_ce138e64 * invested[address(msg.sender)] / sub_ce138e64 == invested[address(msg.sender)]
                            require (block.timestamp * invested[address(msg.sender)]) - (lastInvest[address(msg.sender)] * invested[address(msg.sender)]) / 1234440 > 0
                            require block.timestamp - launchtime >= 360 * 24 * 3600
                            lastInvest[address(msg.sender)] = block.timestamp
                            lastWithdraw[address(msg.sender)] = block.timestamp
                            if (block.timestamp * invested[address(msg.sender)]) - (lastInvest[address(msg.sender)] * invested[address(msg.sender)]) / 1234440 >= (invested[address(msg.sender)] * stor17) - sub_ecb7cb1b[address(msg.sender)]:
                                if sub_ecb7cb1b[address(msg.sender)] >= invested[address(msg.sender)] * stor17:
                                else:
                                    if (invested[address(msg.sender)] * stor17) - sub_ecb7cb1b[address(msg.sender)] >= sub_ce138e64 * invested[address(msg.sender)] / 100:
                                        require sub_ce138e64 * invested[address(msg.sender)] / 100 <= (invested[address(msg.sender)] * stor17) - sub_ecb7cb1b[address(msg.sender)]
                                        sub_ecb7cb1b[address(msg.sender)] = invested[address(msg.sender)] * stor17
                                        call msg.sender with:
                                           value sub_ce138e64 * invested[address(msg.sender)] / 100 wei
                                             gas 2300 * is_zero(value) wei
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        else:
                                            require invested[address(msg.sender)] + (invested[address(msg.sender)] * stor17) - sub_ecb7cb1b[address(msg.sender)] - (sub_ce138e64 * invested[address(msg.sender)] / 100) >= invested[address(msg.sender)]
                                            invested[address(msg.sender)] = invested[address(msg.sender)] + (invested[address(msg.sender)] * stor17) - sub_ecb7cb1b[address(msg.sender)] - (sub_ce138e64 * invested[address(msg.sender)] / 100)
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
                                           value (invested[address(msg.sender)] * stor17) - sub_ecb7cb1b[address(msg.sender)] wei
                                             gas 2300 * is_zero(value) wei
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        else:
                            else:
                                if (block.timestamp * invested[address(msg.sender)]) - (lastInvest[address(msg.sender)] * invested[address(msg.sender)]) / 1234440 >= sub_ce138e64 * invested[address(msg.sender)] / 100:
                                    require sub_ce138e64 * invested[address(msg.sender)] / 100 <= (block.timestamp * invested[address(msg.sender)]) - (lastInvest[address(msg.sender)] * invested[address(msg.sender)]) / 1234440
                                    sub_ecb7cb1b[address(msg.sender)] += (block.timestamp * invested[address(msg.sender)]) - (lastInvest[address(msg.sender)] * invested[address(msg.sender)]) / 1234440
                                    call msg.sender with:
                                       value sub_ce138e64 * invested[address(msg.sender)] / 100 wei
                                         gas 2300 * is_zero(value) wei
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    else:
                                        require invested[address(msg.sender)] + ((block.timestamp * invested[address(msg.sender)]) - (lastInvest[address(msg.sender)] * invested[address(msg.sender)]) / 1234440) - (sub_ce138e64 * invested[address(msg.sender)] / 100) >= invested[address(msg.sender)]
                                        invested[address(msg.sender)] = invested[address(msg.sender)] + ((block.timestamp * invested[address(msg.sender)]) - (lastInvest[address(msg.sender)] * invested[address(msg.sender)]) / 1234440) - (sub_ce138e64 * invested[address(msg.sender)] / 100)
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
                            require block.timestamp - launchtime >= 360 * 24 * 3600
                            lastInvest[address(msg.sender)] = block.timestamp
                            lastWithdraw[address(msg.sender)] = block.timestamp
                            if (block.timestamp * invested[address(msg.sender)]) - (lastInvest[address(msg.sender)] * invested[address(msg.sender)]) / 1234440 >= (invested[address(msg.sender)] * stor17) - sub_ecb7cb1b[address(msg.sender)]:
                                if sub_ecb7cb1b[address(msg.sender)] >= invested[address(msg.sender)] * stor17:
                                else:
                                    if (invested[address(msg.sender)] * stor17) - sub_ecb7cb1b[address(msg.sender)] >= 0:
                                        require 0 <= (invested[address(msg.sender)] * stor17) - sub_ecb7cb1b[address(msg.sender)]
                                        sub_ecb7cb1b[address(msg.sender)] = invested[address(msg.sender)] * stor17
                                        call msg.sender with:
                                             gas 2300 wei
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        else:
                                            require invested[address(msg.sender)] + (invested[address(msg.sender)] * stor17) - sub_ecb7cb1b[address(msg.sender)] >= invested[address(msg.sender)]
                                            invested[address(msg.sender)] = invested[address(msg.sender)] + (invested[address(msg.sender)] * stor17) - sub_ecb7cb1b[address(msg.sender)]
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
                                           value (invested[address(msg.sender)] * stor17) - sub_ecb7cb1b[address(msg.sender)] wei
                                             gas 2300 * is_zero(value) wei
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        else:
                            else:
                                if (block.timestamp * invested[address(msg.sender)]) - (lastInvest[address(msg.sender)] * invested[address(msg.sender)]) / 1234440 >= 0:
                                    require 0 <= (block.timestamp * invested[address(msg.sender)]) - (lastInvest[address(msg.sender)] * invested[address(msg.sender)]) / 1234440
                                    sub_ecb7cb1b[address(msg.sender)] += (block.timestamp * invested[address(msg.sender)]) - (lastInvest[address(msg.sender)] * invested[address(msg.sender)]) / 1234440
                                    call msg.sender with:
                                         gas 2300 wei
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    else:
                                        require invested[address(msg.sender)] + ((block.timestamp * invested[address(msg.sender)]) - (lastInvest[address(msg.sender)] * invested[address(msg.sender)]) / 1234440) >= invested[address(msg.sender)]
                                        invested[address(msg.sender)] += (block.timestamp * invested[address(msg.sender)]) - (lastInvest[address(msg.sender)] * invested[address(msg.sender)]) / 1234440
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
                    require launchtime <= block.timestamp
                    if sub_ce138e64:
                        require sub_ce138e64
                        require sub_ce138e64 * invested[address(msg.sender)] / sub_ce138e64 == invested[address(msg.sender)]
                        require (invested[address(msg.sender)] * stor17) - sub_ecb7cb1b[address(msg.sender)] > 0
                        require block.timestamp - launchtime >= 360 * 24 * 3600
                        lastInvest[address(msg.sender)] = block.timestamp
                        lastWithdraw[address(msg.sender)] = block.timestamp
                        if sub_ecb7cb1b[address(msg.sender)] >= invested[address(msg.sender)] * stor17:
                        else:
                            if (invested[address(msg.sender)] * stor17) - sub_ecb7cb1b[address(msg.sender)] >= sub_ce138e64 * invested[address(msg.sender)] / 100:
                                require sub_ce138e64 * invested[address(msg.sender)] / 100 <= (invested[address(msg.sender)] * stor17) - sub_ecb7cb1b[address(msg.sender)]
                                sub_ecb7cb1b[address(msg.sender)] = invested[address(msg.sender)] * stor17
                                call msg.sender with:
                                   value sub_ce138e64 * invested[address(msg.sender)] / 100 wei
                                     gas 2300 * is_zero(value) wei
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                else:
                                    require invested[address(msg.sender)] + (invested[address(msg.sender)] * stor17) - sub_ecb7cb1b[address(msg.sender)] - (sub_ce138e64 * invested[address(msg.sender)] / 100) >= invested[address(msg.sender)]
                                    invested[address(msg.sender)] = invested[address(msg.sender)] + (invested[address(msg.sender)] * stor17) - sub_ecb7cb1b[address(msg.sender)] - (sub_ce138e64 * invested[address(msg.sender)] / 100)
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
                                   value (invested[address(msg.sender)] * stor17) - sub_ecb7cb1b[address(msg.sender)] wei
                                     gas 2300 * is_zero(value) wei
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                else:
                    else:
                        require (invested[address(msg.sender)] * stor17) - sub_ecb7cb1b[address(msg.sender)] > 0
                        require block.timestamp - launchtime >= 360 * 24 * 3600
                        lastInvest[address(msg.sender)] = block.timestamp
                        lastWithdraw[address(msg.sender)] = block.timestamp
                        if sub_ecb7cb1b[address(msg.sender)] >= invested[address(msg.sender)] * stor17:
                        else:
                            if (invested[address(msg.sender)] * stor17) - sub_ecb7cb1b[address(msg.sender)] >= 0:
                                require 0 <= (invested[address(msg.sender)] * stor17) - sub_ecb7cb1b[address(msg.sender)]
                                sub_ecb7cb1b[address(msg.sender)] = invested[address(msg.sender)] * stor17
                                call msg.sender with:
                                     gas 2300 wei
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                else:
                                    require invested[address(msg.sender)] + (invested[address(msg.sender)] * stor17) - sub_ecb7cb1b[address(msg.sender)] >= invested[address(msg.sender)]
                                    invested[address(msg.sender)] = invested[address(msg.sender)] + (invested[address(msg.sender)] * stor17) - sub_ecb7cb1b[address(msg.sender)]
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
                                   value (invested[address(msg.sender)] * stor17) - sub_ecb7cb1b[address(msg.sender)] wei
                                     gas 2300 * is_zero(value) wei
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                else:
                else:
                    if 4 * 10^18 < invested[address(msg.sender)]:
                        if invested[address(msg.sender)] < 401 * 10^16:
                            require launchtime <= block.timestamp
                            if sub_ce138e64:
                                require sub_ce138e64
                                require sub_ce138e64 * invested[address(msg.sender)] / sub_ce138e64 == invested[address(msg.sender)]
                                require (invested[address(msg.sender)] * stor17) - sub_ecb7cb1b[address(msg.sender)] > 0
                                require block.timestamp - launchtime >= 360 * 24 * 3600
                                lastInvest[address(msg.sender)] = block.timestamp
                                lastWithdraw[address(msg.sender)] = block.timestamp
                                if sub_ecb7cb1b[address(msg.sender)] >= invested[address(msg.sender)] * stor17:
                                else:
                                    if (invested[address(msg.sender)] * stor17) - sub_ecb7cb1b[address(msg.sender)] >= sub_ce138e64 * invested[address(msg.sender)] / 100:
                                        require sub_ce138e64 * invested[address(msg.sender)] / 100 <= (invested[address(msg.sender)] * stor17) - sub_ecb7cb1b[address(msg.sender)]
                                        sub_ecb7cb1b[address(msg.sender)] = invested[address(msg.sender)] * stor17
                                        call msg.sender with:
                                           value sub_ce138e64 * invested[address(msg.sender)] / 100 wei
                                             gas 2300 * is_zero(value) wei
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        else:
                                            require invested[address(msg.sender)] + (invested[address(msg.sender)] * stor17) - sub_ecb7cb1b[address(msg.sender)] - (sub_ce138e64 * invested[address(msg.sender)] / 100) >= invested[address(msg.sender)]
                                            invested[address(msg.sender)] = invested[address(msg.sender)] + (invested[address(msg.sender)] * stor17) - sub_ecb7cb1b[address(msg.sender)] - (sub_ce138e64 * invested[address(msg.sender)] / 100)
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
                                           value (invested[address(msg.sender)] * stor17) - sub_ecb7cb1b[address(msg.sender)] wei
                                             gas 2300 * is_zero(value) wei
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        else:
                            else:
                                require (invested[address(msg.sender)] * stor17) - sub_ecb7cb1b[address(msg.sender)] > 0
                                require block.timestamp - launchtime >= 360 * 24 * 3600
                                lastInvest[address(msg.sender)] = block.timestamp
                                lastWithdraw[address(msg.sender)] = block.timestamp
                                if sub_ecb7cb1b[address(msg.sender)] >= invested[address(msg.sender)] * stor17:
                                else:
                                    if (invested[address(msg.sender)] * stor17) - sub_ecb7cb1b[address(msg.sender)] >= 0:
                                        require 0 <= (invested[address(msg.sender)] * stor17) - sub_ecb7cb1b[address(msg.sender)]
                                        sub_ecb7cb1b[address(msg.sender)] = invested[address(msg.sender)] * stor17
                                        call msg.sender with:
                                             gas 2300 wei
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        else:
                                            require invested[address(msg.sender)] + (invested[address(msg.sender)] * stor17) - sub_ecb7cb1b[address(msg.sender)] >= invested[address(msg.sender)]
                                            invested[address(msg.sender)] = invested[address(msg.sender)] + (invested[address(msg.sender)] * stor17) - sub_ecb7cb1b[address(msg.sender)]
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
                                           value (invested[address(msg.sender)] * stor17) - sub_ecb7cb1b[address(msg.sender)] wei
                                             gas 2300 * is_zero(value) wei
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        else:
                        else:
                            if 7 * 10^18 < invested[address(msg.sender)]:
                                if invested[address(msg.sender)] < 701 * 10^16:
                                    require launchtime <= block.timestamp
                                    if sub_ce138e64:
                                        require sub_ce138e64
                                        require sub_ce138e64 * invested[address(msg.sender)] / sub_ce138e64 == invested[address(msg.sender)]
                                        require (invested[address(msg.sender)] * stor17) - sub_ecb7cb1b[address(msg.sender)] > 0
                                        require block.timestamp - launchtime >= 360 * 24 * 3600
                                        lastInvest[address(msg.sender)] = block.timestamp
                                        lastWithdraw[address(msg.sender)] = block.timestamp
                                        if sub_ecb7cb1b[address(msg.sender)] >= invested[address(msg.sender)] * stor17:
                                        else:
                                            if (invested[address(msg.sender)] * stor17) - sub_ecb7cb1b[address(msg.sender)] >= sub_ce138e64 * invested[address(msg.sender)] / 100:
                                                require sub_ce138e64 * invested[address(msg.sender)] / 100 <= (invested[address(msg.sender)] * stor17) - sub_ecb7cb1b[address(msg.sender)]
                                                sub_ecb7cb1b[address(msg.sender)] = invested[address(msg.sender)] * stor17
                                                call msg.sender with:
                                                   value sub_ce138e64 * invested[address(msg.sender)] / 100 wei
                                                     gas 2300 * is_zero(value) wei
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                else:
                                                    require invested[address(msg.sender)] + (invested[address(msg.sender)] * stor17) - sub_ecb7cb1b[address(msg.sender)] - (sub_ce138e64 * invested[address(msg.sender)] / 100) >= invested[address(msg.sender)]
                                                    invested[address(msg.sender)] = invested[address(msg.sender)] + (invested[address(msg.sender)] * stor17) - sub_ecb7cb1b[address(msg.sender)] - (sub_ce138e64 * invested[address(msg.sender)] / 100)
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
                                                   value (invested[address(msg.sender)] * stor17) - sub_ecb7cb1b[address(msg.sender)] wei
                                                     gas 2300 * is_zero(value) wei
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                else:
                                    else:
                                        require (invested[address(msg.sender)] * stor17) - sub_ecb7cb1b[address(msg.sender)] > 0
                                        require block.timestamp - launchtime >= 360 * 24 * 3600
                                        lastInvest[address(msg.sender)] = block.timestamp
                                        lastWithdraw[address(msg.sender)] = block.timestamp
                                        if sub_ecb7cb1b[address(msg.sender)] >= invested[address(msg.sender)] * stor17:
                                        else:
                                            if (invested[address(msg.sender)] * stor17) - sub_ecb7cb1b[address(msg.sender)] >= 0:
                                                require 0 <= (invested[address(msg.sender)] * stor17) - sub_ecb7cb1b[address(msg.sender)]
                                                sub_ecb7cb1b[address(msg.sender)] = invested[address(msg.sender)] * stor17
                                                call msg.sender with:
                                                     gas 2300 wei
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                else:
                                                    require invested[address(msg.sender)] + (invested[address(msg.sender)] * stor17) - sub_ecb7cb1b[address(msg.sender)] >= invested[address(msg.sender)]
                                                    invested[address(msg.sender)] = invested[address(msg.sender)] + (invested[address(msg.sender)] * stor17) - sub_ecb7cb1b[address(msg.sender)]
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
                                                   value (invested[address(msg.sender)] * stor17) - sub_ecb7cb1b[address(msg.sender)] wei
                                                     gas 2300 * is_zero(value) wei
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                else:
                                else:
                                    if 10 * 10^18 < invested[address(msg.sender)]:
                                        if invested[address(msg.sender)] < 1001 * 10^16:
                                            require launchtime <= block.timestamp
                                            if sub_ce138e64:
                                                require sub_ce138e64
                                                require sub_ce138e64 * invested[address(msg.sender)] / sub_ce138e64 == invested[address(msg.sender)]
                                                require (invested[address(msg.sender)] * stor17) - sub_ecb7cb1b[address(msg.sender)] > 0
                                                require block.timestamp - launchtime >= 360 * 24 * 3600
                                                lastInvest[address(msg.sender)] = block.timestamp
                                                lastWithdraw[address(msg.sender)] = block.timestamp
                                                if sub_ecb7cb1b[address(msg.sender)] >= invested[address(msg.sender)] * stor17:
                                                else:
                                                    if (invested[address(msg.sender)] * stor17) - sub_ecb7cb1b[address(msg.sender)] >= sub_ce138e64 * invested[address(msg.sender)] / 100:
                                                        require sub_ce138e64 * invested[address(msg.sender)] / 100 <= (invested[address(msg.sender)] * stor17) - sub_ecb7cb1b[address(msg.sender)]
                                                        sub_ecb7cb1b[address(msg.sender)] = invested[address(msg.sender)] * stor17
                                                        call msg.sender with:
                                                           value sub_ce138e64 * invested[address(msg.sender)] / 100 wei
                                                             gas 2300 * is_zero(value) wei
                                                        if not ext_call.success:
                                                            revert with ext_call.return_data[0 len return_data.size]
                                                        else:
                                                            require invested[address(msg.sender)] + (invested[address(msg.sender)] * stor17) - sub_ecb7cb1b[address(msg.sender)] - (sub_ce138e64 * invested[address(msg.sender)] / 100) >= invested[address(msg.sender)]
                                                            invested[address(msg.sender)] = invested[address(msg.sender)] + (invested[address(msg.sender)] * stor17) - sub_ecb7cb1b[address(msg.sender)] - (sub_ce138e64 * invested[address(msg.sender)] / 100)
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
                                                           value (invested[address(msg.sender)] * stor17) - sub_ecb7cb1b[address(msg.sender)] wei
                                                             gas 2300 * is_zero(value) wei
                                                        if not ext_call.success:
                                                            revert with ext_call.return_data[0 len return_data.size]
                                                        else:
                                            else:
                                                require (invested[address(msg.sender)] * stor17) - sub_ecb7cb1b[address(msg.sender)] > 0
                                                require block.timestamp - launchtime >= 360 * 24 * 3600
                                                lastInvest[address(msg.sender)] = block.timestamp
                                                lastWithdraw[address(msg.sender)] = block.timestamp
                                                if sub_ecb7cb1b[address(msg.sender)] >= invested[address(msg.sender)] * stor17:
                                                else:
                                                    if (invested[address(msg.sender)] * stor17) - sub_ecb7cb1b[address(msg.sender)] >= 0:
                                                        require 0 <= (invested[address(msg.sender)] * stor17) - sub_ecb7cb1b[address(msg.sender)]
                                                        sub_ecb7cb1b[address(msg.sender)] = invested[address(msg.sender)] * stor17
                                                        call msg.sender with:
                                                             gas 2300 wei
                                                        if not ext_call.success:
                                                            revert with ext_call.return_data[0 len return_data.size]
                                                        else:
                                                            require invested[address(msg.sender)] + (invested[address(msg.sender)] * stor17) - sub_ecb7cb1b[address(msg.sender)] >= invested[address(msg.sender)]
                                                            invested[address(msg.sender)] = invested[address(msg.sender)] + (invested[address(msg.sender)] * stor17) - sub_ecb7cb1b[address(msg.sender)]
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
                                                           value (invested[address(msg.sender)] * stor17) - sub_ecb7cb1b[address(msg.sender)] wei
                                                             gas 2300 * is_zero(value) wei
                                                        if not ext_call.success:
                                                            revert with ext_call.return_data[0 len return_data.size]
                                                        else:
                                        else:
                                            if 15 * 10^18 < invested[address(msg.sender)]:
                                                if invested[address(msg.sender)] < 1501 * 10^16:
                                                    require launchtime <= block.timestamp
                                                    if sub_ce138e64:
                                                        require sub_ce138e64
                                                        require sub_ce138e64 * invested[address(msg.sender)] / sub_ce138e64 == invested[address(msg.sender)]
                                                        require (invested[address(msg.sender)] * stor17) - sub_ecb7cb1b[address(msg.sender)] > 0
                                                        require block.timestamp - launchtime >= 360 * 24 * 3600
                                                        lastInvest[address(msg.sender)] = block.timestamp
                                                        lastWithdraw[address(msg.sender)] = block.timestamp
                                                        if sub_ecb7cb1b[address(msg.sender)] >= invested[address(msg.sender)] * stor17:
                                                        else:
                                                            if (invested[address(msg.sender)] * stor17) - sub_ecb7cb1b[address(msg.sender)] >= sub_ce138e64 * invested[address(msg.sender)] / 100:
                                                                require sub_ce138e64 * invested[address(msg.sender)] / 100 <= (invested[address(msg.sender)] * stor17) - sub_ecb7cb1b[address(msg.sender)]
                                                                sub_ecb7cb1b[address(msg.sender)] = invested[address(msg.sender)] * stor17
                                                                call msg.sender with:
                                                                   value sub_ce138e64 * invested[address(msg.sender)] / 100 wei
                                                                     gas 2300 * is_zero(value) wei
                                                                if not ext_call.success:
                                                                    revert with ext_call.return_data[0 len return_data.size]
                                                                else:
                                                                    require invested[address(msg.sender)] + (invested[address(msg.sender)] * stor17) - sub_ecb7cb1b[address(msg.sender)] - (sub_ce138e64 * invested[address(msg.sender)] / 100) >= invested[address(msg.sender)]
                                                                    invested[address(msg.sender)] = invested[address(msg.sender)] + (invested[address(msg.sender)] * stor17) - sub_ecb7cb1b[address(msg.sender)] - (sub_ce138e64 * invested[address(msg.sender)] / 100)
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
                                                                   value (invested[address(msg.sender)] * stor17) - sub_ecb7cb1b[address(msg.sender)] wei
                                                                     gas 2300 * is_zero(value) wei
                                                                if not ext_call.success:
                                                                    revert with ext_call.return_data[0 len return_data.size]
                                                                else:
                                                    else:
                                                        require (invested[address(msg.sender)] * stor17) - sub_ecb7cb1b[address(msg.sender)] > 0
                                                        require block.timestamp - launchtime >= 360 * 24 * 3600
                                                        lastInvest[address(msg.sender)] = block.timestamp
                                                        lastWithdraw[address(msg.sender)] = block.timestamp
                                                        if sub_ecb7cb1b[address(msg.sender)] >= invested[address(msg.sender)] * stor17:
                                                        else:
                                                            if (invested[address(msg.sender)] * stor17) - sub_ecb7cb1b[address(msg.sender)] >= 0:
                                                                require 0 <= (invested[address(msg.sender)] * stor17) - sub_ecb7cb1b[address(msg.sender)]
                                                                sub_ecb7cb1b[address(msg.sender)] = invested[address(msg.sender)] * stor17
                                                                call msg.sender with:
                                                                     gas 2300 wei
                                                                if not ext_call.success:
                                                                    revert with ext_call.return_data[0 len return_data.size]
                                                                else:
                                                                    require invested[address(msg.sender)] + (invested[address(msg.sender)] * stor17) - sub_ecb7cb1b[address(msg.sender)] >= invested[address(msg.sender)]
                                                                    invested[address(msg.sender)] = invested[address(msg.sender)] + (invested[address(msg.sender)] * stor17) - sub_ecb7cb1b[address(msg.sender)]
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
                                                                   value (invested[address(msg.sender)] * stor17) - sub_ecb7cb1b[address(msg.sender)] wei
                                                                     gas 2300 * is_zero(value) wei
                                                                if not ext_call.success:
                                                                    revert with ext_call.return_data[0 len return_data.size]
                                                                else:
                                                else:
                                                    if (invested[address(msg.sender)] * stor17) - sub_ecb7cb1b[address(msg.sender)]:
                                                        require (invested[address(msg.sender)] * stor17) - sub_ecb7cb1b[address(msg.sender)]
                                                        require (99 * invested[address(msg.sender)] * stor17) - (99 * sub_ecb7cb1b[address(msg.sender)]) / (invested[address(msg.sender)] * stor17) - sub_ecb7cb1b[address(msg.sender)] == 99
                                                        require (99 * invested[address(msg.sender)] * stor17) - (99 * sub_ecb7cb1b[address(msg.sender)]) / 100 >= 0
                                                        require launchtime <= block.timestamp
                                                        if sub_ce138e64:
                                                            require sub_ce138e64
                                                            require sub_ce138e64 * invested[address(msg.sender)] / sub_ce138e64 == invested[address(msg.sender)]
                                                            require (invested[address(msg.sender)] * stor17) - sub_ecb7cb1b[address(msg.sender)] + ((99 * invested[address(msg.sender)] * stor17) - (99 * sub_ecb7cb1b[address(msg.sender)]) / 100) > 0
                                                            require block.timestamp - launchtime >= 360 * 24 * 3600
                                                            lastInvest[address(msg.sender)] = block.timestamp
                                                            lastWithdraw[address(msg.sender)] = block.timestamp
                                                            if (99 * invested[address(msg.sender)] * stor17) - (99 * sub_ecb7cb1b[address(msg.sender)]) / 100 >= 0:
                                                                if sub_ecb7cb1b[address(msg.sender)] >= invested[address(msg.sender)] * stor17:
                                                                else:
                                                                    if (invested[address(msg.sender)] * stor17) - sub_ecb7cb1b[address(msg.sender)] >= sub_ce138e64 * invested[address(msg.sender)] / 100:
                                                                        require sub_ce138e64 * invested[address(msg.sender)] / 100 <= (invested[address(msg.sender)] * stor17) - sub_ecb7cb1b[address(msg.sender)]
                                                                        sub_ecb7cb1b[address(msg.sender)] = invested[address(msg.sender)] * stor17
                                                                        call msg.sender with:
                                                                           value sub_ce138e64 * invested[address(msg.sender)] / 100 wei
                                                                             gas 2300 * is_zero(value) wei
                                                                        if not ext_call.success:
                                                                            revert with ext_call.return_data[0 len return_data.size]
                                                                        else:
                                                                            require invested[address(msg.sender)] + (invested[address(msg.sender)] * stor17) - sub_ecb7cb1b[address(msg.sender)] - (sub_ce138e64 * invested[address(msg.sender)] / 100) >= invested[address(msg.sender)]
                                                                            invested[address(msg.sender)] = invested[address(msg.sender)] + (invested[address(msg.sender)] * stor17) - sub_ecb7cb1b[address(msg.sender)] - (sub_ce138e64 * invested[address(msg.sender)] / 100)
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
                                                                           value (invested[address(msg.sender)] * stor17) - sub_ecb7cb1b[address(msg.sender)] wei
                                                                             gas 2300 * is_zero(value) wei
                                                                        if not ext_call.success:
                                                                            revert with ext_call.return_data[0 len return_data.size]
                                                                        else:
                                                            else:
                                                                if (invested[address(msg.sender)] * stor17) - sub_ecb7cb1b[address(msg.sender)] + ((99 * invested[address(msg.sender)] * stor17) - (99 * sub_ecb7cb1b[address(msg.sender)]) / 100) >= sub_ce138e64 * invested[address(msg.sender)] / 100:
                                                                    require sub_ce138e64 * invested[address(msg.sender)] / 100 <= (invested[address(msg.sender)] * stor17) - sub_ecb7cb1b[address(msg.sender)] + ((99 * invested[address(msg.sender)] * stor17) - (99 * sub_ecb7cb1b[address(msg.sender)]) / 100)
                                                                    sub_ecb7cb1b[address(msg.sender)] = (invested[address(msg.sender)] * stor17) + ((99 * invested[address(msg.sender)] * stor17) - (99 * sub_ecb7cb1b[address(msg.sender)]) / 100)
                                                                    call msg.sender with:
                                                                       value sub_ce138e64 * invested[address(msg.sender)] / 100 wei
                                                                         gas 2300 * is_zero(value) wei
                                                                    if not ext_call.success:
                                                                        revert with ext_call.return_data[0 len return_data.size]
                                                                    else:
                                                                        require invested[address(msg.sender)] + (invested[address(msg.sender)] * stor17) - sub_ecb7cb1b[address(msg.sender)] + ((99 * invested[address(msg.sender)] * stor17) - (99 * sub_ecb7cb1b[address(msg.sender)]) / 100) - (sub_ce138e64 * invested[address(msg.sender)] / 100) >= invested[address(msg.sender)]
                                                                        invested[address(msg.sender)] = invested[address(msg.sender)] + (invested[address(msg.sender)] * stor17) - sub_ecb7cb1b[address(msg.sender)] + ((99 * invested[address(msg.sender)] * stor17) - (99 * sub_ecb7cb1b[address(msg.sender)]) / 100) - (sub_ce138e64 * invested[address(msg.sender)] / 100)
                                                                else:
                                                                    sub_ecb7cb1b[address(msg.sender)] = (invested[address(msg.sender)] * stor17) + ((99 * invested[address(msg.sender)] * stor17) - (99 * sub_ecb7cb1b[address(msg.sender)]) / 100)
                                                                    call msg.sender with:
                                                                       value (invested[address(msg.sender)] * stor17) - sub_ecb7cb1b[address(msg.sender)] + ((99 * invested[address(msg.sender)] * stor17) - (99 * sub_ecb7cb1b[address(msg.sender)]) / 100) wei
                                                                         gas 2300 * is_zero(value) wei
                                                                    if not ext_call.success:
                                                                        revert with ext_call.return_data[0 len return_data.size]
                                                                    else:
                                                        else:
                                                            require (invested[address(msg.sender)] * stor17) - sub_ecb7cb1b[address(msg.sender)] + ((99 * invested[address(msg.sender)] * stor17) - (99 * sub_ecb7cb1b[address(msg.sender)]) / 100) > 0
                                                            require block.timestamp - launchtime >= 360 * 24 * 3600
                                                            lastInvest[address(msg.sender)] = block.timestamp
                                                            lastWithdraw[address(msg.sender)] = block.timestamp
                                                            if (99 * invested[address(msg.sender)] * stor17) - (99 * sub_ecb7cb1b[address(msg.sender)]) / 100 >= 0:
                                                                if sub_ecb7cb1b[address(msg.sender)] >= invested[address(msg.sender)] * stor17:
                                                                else:
                                                                    if (invested[address(msg.sender)] * stor17) - sub_ecb7cb1b[address(msg.sender)] >= 0:
                                                                        require 0 <= (invested[address(msg.sender)] * stor17) - sub_ecb7cb1b[address(msg.sender)]
                                                                        sub_ecb7cb1b[address(msg.sender)] = invested[address(msg.sender)] * stor17
                                                                        call msg.sender with:
                                                                             gas 2300 wei
                                                                        if not ext_call.success:
                                                                            revert with ext_call.return_data[0 len return_data.size]
                                                                        else:
                                                                            require invested[address(msg.sender)] + (invested[address(msg.sender)] * stor17) - sub_ecb7cb1b[address(msg.sender)] >= invested[address(msg.sender)]
                                                                            invested[address(msg.sender)] = invested[address(msg.sender)] + (invested[address(msg.sender)] * stor17) - sub_ecb7cb1b[address(msg.sender)]
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
                                                                           value (invested[address(msg.sender)] * stor17) - sub_ecb7cb1b[address(msg.sender)] wei
                                                                             gas 2300 * is_zero(value) wei
                                                                        if not ext_call.success:
                                                                            revert with ext_call.return_data[0 len return_data.size]
                                                                        else:
                                                            else:
                                                                if (invested[address(msg.sender)] * stor17) - sub_ecb7cb1b[address(msg.sender)] + ((99 * invested[address(msg.sender)] * stor17) - (99 * sub_ecb7cb1b[address(msg.sender)]) / 100) >= 0:
                                                                    require 0 <= (invested[address(msg.sender)] * stor17) - sub_ecb7cb1b[address(msg.sender)] + ((99 * invested[address(msg.sender)] * stor17) - (99 * sub_ecb7cb1b[address(msg.sender)]) / 100)
                                                                    sub_ecb7cb1b[address(msg.sender)] = (invested[address(msg.sender)] * stor17) + ((99 * invested[address(msg.sender)] * stor17) - (99 * sub_ecb7cb1b[address(msg.sender)]) / 100)
                                                                    call msg.sender with:
                                                                         gas 2300 wei
                                                                    if not ext_call.success:
                                                                        revert with ext_call.return_data[0 len return_data.size]
                                                                    else:
                                                                        require invested[address(msg.sender)] + (invested[address(msg.sender)] * stor17) - sub_ecb7cb1b[address(msg.sender)] + ((99 * invested[address(msg.sender)] * stor17) - (99 * sub_ecb7cb1b[address(msg.sender)]) / 100) >= invested[address(msg.sender)]
                                                                        invested[address(msg.sender)] = invested[address(msg.sender)] + (invested[address(msg.sender)] * stor17) - sub_ecb7cb1b[address(msg.sender)] + ((99 * invested[address(msg.sender)] * stor17) - (99 * sub_ecb7cb1b[address(msg.sender)]) / 100)
                                                                else:
                                                                    sub_ecb7cb1b[address(msg.sender)] = (invested[address(msg.sender)] * stor17) + ((99 * invested[address(msg.sender)] * stor17) - (99 * sub_ecb7cb1b[address(msg.sender)]) / 100)
                                                                    call msg.sender with:
                                                                       value (invested[address(msg.sender)] * stor17) - sub_ecb7cb1b[address(msg.sender)] + ((99 * invested[address(msg.sender)] * stor17) - (99 * sub_ecb7cb1b[address(msg.sender)]) / 100) wei
                                                                         gas 2300 * is_zero(value) wei
                                                                    if not ext_call.success:
                                                                        revert with ext_call.return_data[0 len return_data.size]
                                                                    else:
                                                    else:
                                                        require launchtime <= block.timestamp
                                                        if sub_ce138e64:
                                                            require sub_ce138e64
                                                            require sub_ce138e64 * invested[address(msg.sender)] / sub_ce138e64 == invested[address(msg.sender)]
                                                            require (invested[address(msg.sender)] * stor17) - sub_ecb7cb1b[address(msg.sender)] > 0
                                                            require block.timestamp - launchtime >= 360 * 24 * 3600
                                                            lastInvest[address(msg.sender)] = block.timestamp
                                                            lastWithdraw[address(msg.sender)] = block.timestamp
                                                            if sub_ecb7cb1b[address(msg.sender)] >= invested[address(msg.sender)] * stor17:
                                                            else:
                                                                if (invested[address(msg.sender)] * stor17) - sub_ecb7cb1b[address(msg.sender)] >= sub_ce138e64 * invested[address(msg.sender)] / 100:
                                                                    require sub_ce138e64 * invested[address(msg.sender)] / 100 <= (invested[address(msg.sender)] * stor17) - sub_ecb7cb1b[address(msg.sender)]
                                                                    sub_ecb7cb1b[address(msg.sender)] = invested[address(msg.sender)] * stor17
                                                                    call msg.sender with:
                                                                       value sub_ce138e64 * invested[address(msg.sender)] / 100 wei
                                                                         gas 2300 * is_zero(value) wei
                                                                    if not ext_call.success:
                                                                        revert with ext_call.return_data[0 len return_data.size]
                                                                    else:
                                                                        require invested[address(msg.sender)] + (invested[address(msg.sender)] * stor17) - sub_ecb7cb1b[address(msg.sender)] - (sub_ce138e64 * invested[address(msg.sender)] / 100) >= invested[address(msg.sender)]
                                                                        invested[address(msg.sender)] = invested[address(msg.sender)] + (invested[address(msg.sender)] * stor17) - sub_ecb7cb1b[address(msg.sender)] - (sub_ce138e64 * invested[address(msg.sender)] / 100)
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
                                                                       value (invested[address(msg.sender)] * stor17) - sub_ecb7cb1b[address(msg.sender)] wei
                                                                         gas 2300 * is_zero(value) wei
                                                                    if not ext_call.success:
                                                                        revert with ext_call.return_data[0 len return_data.size]
                                                                    else:
                                                        else:
                                                            require (invested[address(msg.sender)] * stor17) - sub_ecb7cb1b[address(msg.sender)] > 0
                                                            require block.timestamp - launchtime >= 360 * 24 * 3600
                                                            lastInvest[address(msg.sender)] = block.timestamp
                                                            lastWithdraw[address(msg.sender)] = block.timestamp
                                                            if sub_ecb7cb1b[address(msg.sender)] >= invested[address(msg.sender)] * stor17:
                                                            else:
                                                                if (invested[address(msg.sender)] * stor17) - sub_ecb7cb1b[address(msg.sender)] >= 0:
                                                                    require 0 <= (invested[address(msg.sender)] * stor17) - sub_ecb7cb1b[address(msg.sender)]
                                                                    sub_ecb7cb1b[address(msg.sender)] = invested[address(msg.sender)] * stor17
                                                                    call msg.sender with:
                                                                         gas 2300 wei
                                                                    if not ext_call.success:
                                                                        revert with ext_call.return_data[0 len return_data.size]
                                                                    else:
                                                                        require invested[address(msg.sender)] + (invested[address(msg.sender)] * stor17) - sub_ecb7cb1b[address(msg.sender)] >= invested[address(msg.sender)]
                                                                        invested[address(msg.sender)] = invested[address(msg.sender)] + (invested[address(msg.sender)] * stor17) - sub_ecb7cb1b[address(msg.sender)]
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
                                                                       value (invested[address(msg.sender)] * stor17) - sub_ecb7cb1b[address(msg.sender)] wei
                                                                         gas 2300 * is_zero(value) wei
                                                                    if not ext_call.success:
                                                                        revert with ext_call.return_data[0 len return_data.size]
                                                                    else:
                                            else:
                                                if (invested[address(msg.sender)] * stor17) - sub_ecb7cb1b[address(msg.sender)]:
                                                    require (invested[address(msg.sender)] * stor17) - sub_ecb7cb1b[address(msg.sender)]
                                                    require (60 * invested[address(msg.sender)] * stor17) - (60 * sub_ecb7cb1b[address(msg.sender)]) / (invested[address(msg.sender)] * stor17) - sub_ecb7cb1b[address(msg.sender)] == 60
                                                    require (60 * invested[address(msg.sender)] * stor17) - (60 * sub_ecb7cb1b[address(msg.sender)]) / 100 >= 0
                                                    require launchtime <= block.timestamp
                                                    if sub_ce138e64:
                                                        require sub_ce138e64
                                                        require sub_ce138e64 * invested[address(msg.sender)] / sub_ce138e64 == invested[address(msg.sender)]
                                                        require (invested[address(msg.sender)] * stor17) - sub_ecb7cb1b[address(msg.sender)] + ((60 * invested[address(msg.sender)] * stor17) - (60 * sub_ecb7cb1b[address(msg.sender)]) / 100) > 0
                                                        require block.timestamp - launchtime >= 360 * 24 * 3600
                                                        lastInvest[address(msg.sender)] = block.timestamp
                                                        lastWithdraw[address(msg.sender)] = block.timestamp
                                                        if (60 * invested[address(msg.sender)] * stor17) - (60 * sub_ecb7cb1b[address(msg.sender)]) / 100 >= 0:
                                                            if sub_ecb7cb1b[address(msg.sender)] >= invested[address(msg.sender)] * stor17:
                                                            else:
                                                                if (invested[address(msg.sender)] * stor17) - sub_ecb7cb1b[address(msg.sender)] >= sub_ce138e64 * invested[address(msg.sender)] / 100:
                                                                    require sub_ce138e64 * invested[address(msg.sender)] / 100 <= (invested[address(msg.sender)] * stor17) - sub_ecb7cb1b[address(msg.sender)]
                                                                    sub_ecb7cb1b[address(msg.sender)] = invested[address(msg.sender)] * stor17
                                                                    call msg.sender with:
                                                                       value sub_ce138e64 * invested[address(msg.sender)] / 100 wei
                                                                         gas 2300 * is_zero(value) wei
                                                                    if not ext_call.success:
                                                                        revert with ext_call.return_data[0 len return_data.size]
                                                                    else:
                                                                        require invested[address(msg.sender)] + (invested[address(msg.sender)] * stor17) - sub_ecb7cb1b[address(msg.sender)] - (sub_ce138e64 * invested[address(msg.sender)] / 100) >= invested[address(msg.sender)]
                                                                        invested[address(msg.sender)] = invested[address(msg.sender)] + (invested[address(msg.sender)] * stor17) - sub_ecb7cb1b[address(msg.sender)] - (sub_ce138e64 * invested[address(msg.sender)] / 100)
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
                                                                       value (invested[address(msg.sender)] * stor17) - sub_ecb7cb1b[address(msg.sender)] wei
                                                                         gas 2300 * is_zero(value) wei
                                                                    if not ext_call.success:
                                                                        revert with ext_call.return_data[0 len return_data.size]
                                                                    else:
                                                        else:
                                                            if (invested[address(msg.sender)] * stor17) - sub_ecb7cb1b[address(msg.sender)] + ((60 * invested[address(msg.sender)] * stor17) - (60 * sub_ecb7cb1b[address(msg.sender)]) / 100) >= sub_ce138e64 * invested[address(msg.sender)] / 100:
                                                                require sub_ce138e64 * invested[address(msg.sender)] / 100 <= (invested[address(msg.sender)] * stor17) - sub_ecb7cb1b[address(msg.sender)] + ((60 * invested[address(msg.sender)] * stor17) - (60 * sub_ecb7cb1b[address(msg.sender)]) / 100)
                                                                sub_ecb7cb1b[address(msg.sender)] = (invested[address(msg.sender)] * stor17) + ((60 * invested[address(msg.sender)] * stor17) - (60 * sub_ecb7cb1b[address(msg.sender)]) / 100)
                                                                call msg.sender with:
                                                                   value sub_ce138e64 * invested[address(msg.sender)] / 100 wei
                                                                     gas 2300 * is_zero(value) wei
                                                                if not ext_call.success:
                                                                    revert with ext_call.return_data[0 len return_data.size]
                                                                else:
                                                                    require invested[address(msg.sender)] + (invested[address(msg.sender)] * stor17) - sub_ecb7cb1b[address(msg.sender)] + ((60 * invested[address(msg.sender)] * stor17) - (60 * sub_ecb7cb1b[address(msg.sender)]) / 100) - (sub_ce138e64 * invested[address(msg.sender)] / 100) >= invested[address(msg.sender)]
                                                                    invested[address(msg.sender)] = invested[address(msg.sender)] + (invested[address(msg.sender)] * stor17) - sub_ecb7cb1b[address(msg.sender)] + ((60 * invested[address(msg.sender)] * stor17) - (60 * sub_ecb7cb1b[address(msg.sender)]) / 100) - (sub_ce138e64 * invested[address(msg.sender)] / 100)
                                                            else:
                                                                sub_ecb7cb1b[address(msg.sender)] = (invested[address(msg.sender)] * stor17) + ((60 * invested[address(msg.sender)] * stor17) - (60 * sub_ecb7cb1b[address(msg.sender)]) / 100)
                                                                call msg.sender with:
                                                                   value (invested[address(msg.sender)] * stor17) - sub_ecb7cb1b[address(msg.sender)] + ((60 * invested[address(msg.sender)] * stor17) - (60 * sub_ecb7cb1b[address(msg.sender)]) / 100) wei
                                                                     gas 2300 * is_zero(value) wei
                                                                if not ext_call.success:
                                                                    revert with ext_call.return_data[0 len return_data.size]
                                                                else:
                                                    else:
                                                        require (invested[address(msg.sender)] * stor17) - sub_ecb7cb1b[address(msg.sender)] + ((60 * invested[address(msg.sender)] * stor17) - (60 * sub_ecb7cb1b[address(msg.sender)]) / 100) > 0
                                                        require block.timestamp - launchtime >= 360 * 24 * 3600
                                                        lastInvest[address(msg.sender)] = block.timestamp
                                                        lastWithdraw[address(msg.sender)] = block.timestamp
                                                        if (60 * invested[address(msg.sender)] * stor17) - (60 * sub_ecb7cb1b[address(msg.sender)]) / 100 >= 0:
                                                            if sub_ecb7cb1b[address(msg.sender)] >= invested[address(msg.sender)] * stor17:
                                                            else:
                                                                if (invested[address(msg.sender)] * stor17) - sub_ecb7cb1b[address(msg.sender)] >= 0:
                                                                    require 0 <= (invested[address(msg.sender)] * stor17) - sub_ecb7cb1b[address(msg.sender)]
                                                                    sub_ecb7cb1b[address(msg.sender)] = invested[address(msg.sender)] * stor17
                                                                    call msg.sender with:
                                                                         gas 2300 wei
                                                                    if not ext_call.success:
                                                                        revert with ext_call.return_data[0 len return_data.size]
                                                                    else:
                                                                        require invested[address(msg.sender)] + (invested[address(msg.sender)] * stor17) - sub_ecb7cb1b[address(msg.sender)] >= invested[address(msg.sender)]
                                                                        invested[address(msg.sender)] = invested[address(msg.sender)] + (invested[address(msg.sender)] * stor17) - sub_ecb7cb1b[address(msg.sender)]
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
                                                                       value (invested[address(msg.sender)] * stor17) - sub_ecb7cb1b[address(msg.sender)] wei
                                                                         gas 2300 * is_zero(value) wei
                                                                    if not ext_call.success:
                                                                        revert with ext_call.return_data[0 len return_data.size]
                                                                    else:
                                                        else:
                                                            if (invested[address(msg.sender)] * stor17) - sub_ecb7cb1b[address(msg.sender)] + ((60 * invested[address(msg.sender)] * stor17) - (60 * sub_ecb7cb1b[address(msg.sender)]) / 100) >= 0:
                                                                require 0 <= (invested[address(msg.sender)] * stor17) - sub_ecb7cb1b[address(msg.sender)] + ((60 * invested[address(msg.sender)] * stor17) - (60 * sub_ecb7cb1b[address(msg.sender)]) / 100)
                                                                sub_ecb7cb1b[address(msg.sender)] = (invested[address(msg.sender)] * stor17) + ((60 * invested[address(msg.sender)] * stor17) - (60 * sub_ecb7cb1b[address(msg.sender)]) / 100)
                                                                call msg.sender with:
                                                                     gas 2300 wei
                                                                if not ext_call.success:
                                                                    revert with ext_call.return_data[0 len return_data.size]
                                                                else:
                                                                    require invested[address(msg.sender)] + (invested[address(msg.sender)] * stor17) - sub_ecb7cb1b[address(msg.sender)] + ((60 * invested[address(msg.sender)] * stor17) - (60 * sub_ecb7cb1b[address(msg.sender)]) / 100) >= invested[address(msg.sender)]
                                                                    invested[address(msg.sender)] = invested[address(msg.sender)] + (invested[address(msg.sender)] * stor17) - sub_ecb7cb1b[address(msg.sender)] + ((60 * invested[address(msg.sender)] * stor17) - (60 * sub_ecb7cb1b[address(msg.sender)]) / 100)
                                                            else:
                                                                sub_ecb7cb1b[address(msg.sender)] = (invested[address(msg.sender)] * stor17) + ((60 * invested[address(msg.sender)] * stor17) - (60 * sub_ecb7cb1b[address(msg.sender)]) / 100)
                                                                call msg.sender with:
                                                                   value (invested[address(msg.sender)] * stor17) - sub_ecb7cb1b[address(msg.sender)] + ((60 * invested[address(msg.sender)] * stor17) - (60 * sub_ecb7cb1b[address(msg.sender)]) / 100) wei
                                                                     gas 2300 * is_zero(value) wei
                                                                if not ext_call.success:
                                                                    revert with ext_call.return_data[0 len return_data.size]
                                                                else:
                                                else:
                                                    require launchtime <= block.timestamp
                                                    if sub_ce138e64:
                                                        require sub_ce138e64
                                                        require sub_ce138e64 * invested[address(msg.sender)] / sub_ce138e64 == invested[address(msg.sender)]
                                                        require (invested[address(msg.sender)] * stor17) - sub_ecb7cb1b[address(msg.sender)] > 0
                                                        require block.timestamp - launchtime >= 360 * 24 * 3600
                                                        lastInvest[address(msg.sender)] = block.timestamp
                                                        lastWithdraw[address(msg.sender)] = block.timestamp
                                                        if sub_ecb7cb1b[address(msg.sender)] >= invested[address(msg.sender)] * stor17:
                                                        else:
                                                            if (invested[address(msg.sender)] * stor17) - sub_ecb7cb1b[address(msg.sender)] >= sub_ce138e64 * invested[address(msg.sender)] / 100:
                                                                require sub_ce138e64 * invested[address(msg.sender)] / 100 <= (invested[address(msg.sender)] * stor17) - sub_ecb7cb1b[address(msg.sender)]
                                                                sub_ecb7cb1b[address(msg.sender)] = invested[address(msg.sender)] * stor17
                                                                call msg.sender with:
                                                                   value sub_ce138e64 * invested[address(msg.sender)] / 100 wei
                                                                     gas 2300 * is_zero(value) wei
                                                                if not ext_call.success:
                                                                    revert with ext_call.return_data[0 len return_data.size]
                                                                else:
                                                                    require invested[address(msg.sender)] + (invested[address(msg.sender)] * stor17) - sub_ecb7cb1b[address(msg.sender)] - (sub_ce138e64 * invested[address(msg.sender)] / 100) >= invested[address(msg.sender)]
                                                                    invested[address(msg.sender)] = invested[address(msg.sender)] + (invested[address(msg.sender)] * stor17) - sub_ecb7cb1b[address(msg.sender)] - (sub_ce138e64 * invested[address(msg.sender)] / 100)
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
                                                                   value (invested[address(msg.sender)] * stor17) - sub_ecb7cb1b[address(msg.sender)] wei
                                                                     gas 2300 * is_zero(value) wei
                                                                if not ext_call.success:
                                                                    revert with ext_call.return_data[0 len return_data.size]
                                                                else:
                                                    else:
                                                        require (invested[address(msg.sender)] * stor17) - sub_ecb7cb1b[address(msg.sender)] > 0
                                                        require block.timestamp - launchtime >= 360 * 24 * 3600
                                                        lastInvest[address(msg.sender)] = block.timestamp
                                                        lastWithdraw[address(msg.sender)] = block.timestamp
                                                        if sub_ecb7cb1b[address(msg.sender)] >= invested[address(msg.sender)] * stor17:
                                                        else:
                                                            if (invested[address(msg.sender)] * stor17) - sub_ecb7cb1b[address(msg.sender)] >= 0:
                                                                require 0 <= (invested[address(msg.sender)] * stor17) - sub_ecb7cb1b[address(msg.sender)]
                                                                sub_ecb7cb1b[address(msg.sender)] = invested[address(msg.sender)] * stor17
                                                                call msg.sender with:
                                                                     gas 2300 wei
                                                                if not ext_call.success:
                                                                    revert with ext_call.return_data[0 len return_data.size]
                                                                else:
                                                                    require invested[address(msg.sender)] + (invested[address(msg.sender)] * stor17) - sub_ecb7cb1b[address(msg.sender)] >= invested[address(msg.sender)]
                                                                    invested[address(msg.sender)] = invested[address(msg.sender)] + (invested[address(msg.sender)] * stor17) - sub_ecb7cb1b[address(msg.sender)]
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
                                                                   value (invested[address(msg.sender)] * stor17) - sub_ecb7cb1b[address(msg.sender)] wei
                                                                     gas 2300 * is_zero(value) wei
                                                                if not ext_call.success:
                                                                    revert with ext_call.return_data[0 len return_data.size]
                                                                else:
                                    else:
                                        if (invested[address(msg.sender)] * stor17) - sub_ecb7cb1b[address(msg.sender)]:
                                            require (invested[address(msg.sender)] * stor17) - sub_ecb7cb1b[address(msg.sender)]
                                            require (40 * invested[address(msg.sender)] * stor17) - (40 * sub_ecb7cb1b[address(msg.sender)]) / (invested[address(msg.sender)] * stor17) - sub_ecb7cb1b[address(msg.sender)] == 40
                                            require (40 * invested[address(msg.sender)] * stor17) - (40 * sub_ecb7cb1b[address(msg.sender)]) / 100 >= 0
                                            require launchtime <= block.timestamp
                                            if sub_ce138e64:
                                                require sub_ce138e64
                                                require sub_ce138e64 * invested[address(msg.sender)] / sub_ce138e64 == invested[address(msg.sender)]
                                                require (invested[address(msg.sender)] * stor17) - sub_ecb7cb1b[address(msg.sender)] + ((40 * invested[address(msg.sender)] * stor17) - (40 * sub_ecb7cb1b[address(msg.sender)]) / 100) > 0
                                                require block.timestamp - launchtime >= 360 * 24 * 3600
                                                lastInvest[address(msg.sender)] = block.timestamp
                                                lastWithdraw[address(msg.sender)] = block.timestamp
                                                if (40 * invested[address(msg.sender)] * stor17) - (40 * sub_ecb7cb1b[address(msg.sender)]) / 100 >= 0:
                                                    if sub_ecb7cb1b[address(msg.sender)] >= invested[address(msg.sender)] * stor17:
                                                    else:
                                                        if (invested[address(msg.sender)] * stor17) - sub_ecb7cb1b[address(msg.sender)] >= sub_ce138e64 * invested[address(msg.sender)] / 100:
                                                            require sub_ce138e64 * invested[address(msg.sender)] / 100 <= (invested[address(msg.sender)] * stor17) - sub_ecb7cb1b[address(msg.sender)]
                                                            sub_ecb7cb1b[address(msg.sender)] = invested[address(msg.sender)] * stor17
                                                            call msg.sender with:
                                                               value sub_ce138e64 * invested[address(msg.sender)] / 100 wei
                                                                 gas 2300 * is_zero(value) wei
                                                            if not ext_call.success:
                                                                revert with ext_call.return_data[0 len return_data.size]
                                                            else:
                                                                require invested[address(msg.sender)] + (invested[address(msg.sender)] * stor17) - sub_ecb7cb1b[address(msg.sender)] - (sub_ce138e64 * invested[address(msg.sender)] / 100) >= invested[address(msg.sender)]
                                                                invested[address(msg.sender)] = invested[address(msg.sender)] + (invested[address(msg.sender)] * stor17) - sub_ecb7cb1b[address(msg.sender)] - (sub_ce138e64 * invested[address(msg.sender)] / 100)
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
                                                               value (invested[address(msg.sender)] * stor17) - sub_ecb7cb1b[address(msg.sender)] wei
                                                                 gas 2300 * is_zero(value) wei
                                                            if not ext_call.success:
                                                                revert with ext_call.return_data[0 len return_data.size]
                                                            else:
                                                else:
                                                    if (invested[address(msg.sender)] * stor17) - sub_ecb7cb1b[address(msg.sender)] + ((40 * invested[address(msg.sender)] * stor17) - (40 * sub_ecb7cb1b[address(msg.sender)]) / 100) >= sub_ce138e64 * invested[address(msg.sender)] / 100:
                                                        require sub_ce138e64 * invested[address(msg.sender)] / 100 <= (invested[address(msg.sender)] * stor17) - sub_ecb7cb1b[address(msg.sender)] + ((40 * invested[address(msg.sender)] * stor17) - (40 * sub_ecb7cb1b[address(msg.sender)]) / 100)
                                                        sub_ecb7cb1b[address(msg.sender)] = (invested[address(msg.sender)] * stor17) + ((40 * invested[address(msg.sender)] * stor17) - (40 * sub_ecb7cb1b[address(msg.sender)]) / 100)
                                                        call msg.sender with:
                                                           value sub_ce138e64 * invested[address(msg.sender)] / 100 wei
                                                             gas 2300 * is_zero(value) wei
                                                        if not ext_call.success:
                                                            revert with ext_call.return_data[0 len return_data.size]
                                                        else:
                                                            require invested[address(msg.sender)] + (invested[address(msg.sender)] * stor17) - sub_ecb7cb1b[address(msg.sender)] + ((40 * invested[address(msg.sender)] * stor17) - (40 * sub_ecb7cb1b[address(msg.sender)]) / 100) - (sub_ce138e64 * invested[address(msg.sender)] / 100) >= invested[address(msg.sender)]
                                                            invested[address(msg.sender)] = invested[address(msg.sender)] + (invested[address(msg.sender)] * stor17) - sub_ecb7cb1b[address(msg.sender)] + ((40 * invested[address(msg.sender)] * stor17) - (40 * sub_ecb7cb1b[address(msg.sender)]) / 100) - (sub_ce138e64 * invested[address(msg.sender)] / 100)
                                                    else:
                                                        sub_ecb7cb1b[address(msg.sender)] = (invested[address(msg.sender)] * stor17) + ((40 * invested[address(msg.sender)] * stor17) - (40 * sub_ecb7cb1b[address(msg.sender)]) / 100)
                                                        call msg.sender with:
                                                           value (invested[address(msg.sender)] * stor17) - sub_ecb7cb1b[address(msg.sender)] + ((40 * invested[address(msg.sender)] * stor17) - (40 * sub_ecb7cb1b[address(msg.sender)]) / 100) wei
                                                             gas 2300 * is_zero(value) wei
                                                        if not ext_call.success:
                                                            revert with ext_call.return_data[0 len return_data.size]
                                                        else:
                                            else:
                                                require (invested[address(msg.sender)] * stor17) - sub_ecb7cb1b[address(msg.sender)] + ((40 * invested[address(msg.sender)] * stor17) - (40 * sub_ecb7cb1b[address(msg.sender)]) / 100) > 0
                                                require block.timestamp - launchtime >= 360 * 24 * 3600
                                                lastInvest[address(msg.sender)] = block.timestamp
                                                lastWithdraw[address(msg.sender)] = block.timestamp
                                                if (40 * invested[address(msg.sender)] * stor17) - (40 * sub_ecb7cb1b[address(msg.sender)]) / 100 >= 0:
                                                    if sub_ecb7cb1b[address(msg.sender)] >= invested[address(msg.sender)] * stor17:
                                                    else:
                                                        if (invested[address(msg.sender)] * stor17) - sub_ecb7cb1b[address(msg.sender)] >= 0:
                                                            require 0 <= (invested[address(msg.sender)] * stor17) - sub_ecb7cb1b[address(msg.sender)]
                                                            sub_ecb7cb1b[address(msg.sender)] = invested[address(msg.sender)] * stor17
                                                            call msg.sender with:
                                                                 gas 2300 wei
                                                            if not ext_call.success:
                                                                revert with ext_call.return_data[0 len return_data.size]
                                                            else:
                                                                require invested[address(msg.sender)] + (invested[address(msg.sender)] * stor17) - sub_ecb7cb1b[address(msg.sender)] >= invested[address(msg.sender)]
                                                                invested[address(msg.sender)] = invested[address(msg.sender)] + (invested[address(msg.sender)] * stor17) - sub_ecb7cb1b[address(msg.sender)]
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
                                                               value (invested[address(msg.sender)] * stor17) - sub_ecb7cb1b[address(msg.sender)] wei
                                                                 gas 2300 * is_zero(value) wei
                                                            if not ext_call.success:
                                                                revert with ext_call.return_data[0 len return_data.size]
                                                            else:
                                                else:
                                                    if (invested[address(msg.sender)] * stor17) - sub_ecb7cb1b[address(msg.sender)] + ((40 * invested[address(msg.sender)] * stor17) - (40 * sub_ecb7cb1b[address(msg.sender)]) / 100) >= 0:
                                                        require 0 <= (invested[address(msg.sender)] * stor17) - sub_ecb7cb1b[address(msg.sender)] + ((40 * invested[address(msg.sender)] * stor17) - (40 * sub_ecb7cb1b[address(msg.sender)]) / 100)
                                                        sub_ecb7cb1b[address(msg.sender)] = (invested[address(msg.sender)] * stor17) + ((40 * invested[address(msg.sender)] * stor17) - (40 * sub_ecb7cb1b[address(msg.sender)]) / 100)
                                                        call msg.sender with:
                                                             gas 2300 wei
                                                        if not ext_call.success:
                                                            revert with ext_call.return_data[0 len return_data.size]
                                                        else:
                                                            require invested[address(msg.sender)] + (invested[address(msg.sender)] * stor17) - sub_ecb7cb1b[address(msg.sender)] + ((40 * invested[address(msg.sender)] * stor17) - (40 * sub_ecb7cb1b[address(msg.sender)]) / 100) >= invested[address(msg.sender)]
                                                            invested[address(msg.sender)] = invested[address(msg.sender)] + (invested[address(msg.sender)] * stor17) - sub_ecb7cb1b[address(msg.sender)] + ((40 * invested[address(msg.sender)] * stor17) - (40 * sub_ecb7cb1b[address(msg.sender)]) / 100)
                                                    else:
                                                        sub_ecb7cb1b[address(msg.sender)] = (invested[address(msg.sender)] * stor17) + ((40 * invested[address(msg.sender)] * stor17) - (40 * sub_ecb7cb1b[address(msg.sender)]) / 100)
                                                        call msg.sender with:
                                                           value (invested[address(msg.sender)] * stor17) - sub_ecb7cb1b[address(msg.sender)] + ((40 * invested[address(msg.sender)] * stor17) - (40 * sub_ecb7cb1b[address(msg.sender)]) / 100) wei
                                                             gas 2300 * is_zero(value) wei
                                                        if not ext_call.success:
                                                            revert with ext_call.return_data[0 len return_data.size]
                                                        else:
                                        else:
                                            require launchtime <= block.timestamp
                                            if sub_ce138e64:
                                                require sub_ce138e64
                                                require sub_ce138e64 * invested[address(msg.sender)] / sub_ce138e64 == invested[address(msg.sender)]
                                                require (invested[address(msg.sender)] * stor17) - sub_ecb7cb1b[address(msg.sender)] > 0
                                                require block.timestamp - launchtime >= 360 * 24 * 3600
                                                lastInvest[address(msg.sender)] = block.timestamp
                                                lastWithdraw[address(msg.sender)] = block.timestamp
                                                if sub_ecb7cb1b[address(msg.sender)] >= invested[address(msg.sender)] * stor17:
                                                else:
                                                    if (invested[address(msg.sender)] * stor17) - sub_ecb7cb1b[address(msg.sender)] >= sub_ce138e64 * invested[address(msg.sender)] / 100:
                                                        require sub_ce138e64 * invested[address(msg.sender)] / 100 <= (invested[address(msg.sender)] * stor17) - sub_ecb7cb1b[address(msg.sender)]
                                                        sub_ecb7cb1b[address(msg.sender)] = invested[address(msg.sender)] * stor17
                                                        call msg.sender with:
                                                           value sub_ce138e64 * invested[address(msg.sender)] / 100 wei
                                                             gas 2300 * is_zero(value) wei
                                                        if not ext_call.success:
                                                            revert with ext_call.return_data[0 len return_data.size]
                                                        else:
                                                            require invested[address(msg.sender)] + (invested[address(msg.sender)] * stor17) - sub_ecb7cb1b[address(msg.sender)] - (sub_ce138e64 * invested[address(msg.sender)] / 100) >= invested[address(msg.sender)]
                                                            invested[address(msg.sender)] = invested[address(msg.sender)] + (invested[address(msg.sender)] * stor17) - sub_ecb7cb1b[address(msg.sender)] - (sub_ce138e64 * invested[address(msg.sender)] / 100)
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
                                                           value (invested[address(msg.sender)] * stor17) - sub_ecb7cb1b[address(msg.sender)] wei
                                                             gas 2300 * is_zero(value) wei
                                                        if not ext_call.success:
                                                            revert with ext_call.return_data[0 len return_data.size]
                                                        else:
                                            else:
                                                require (invested[address(msg.sender)] * stor17) - sub_ecb7cb1b[address(msg.sender)] > 0
                                                require block.timestamp - launchtime >= 360 * 24 * 3600
                                                lastInvest[address(msg.sender)] = block.timestamp
                                                lastWithdraw[address(msg.sender)] = block.timestamp
                                                if sub_ecb7cb1b[address(msg.sender)] >= invested[address(msg.sender)] * stor17:
                                                else:
                                                    if (invested[address(msg.sender)] * stor17) - sub_ecb7cb1b[address(msg.sender)] >= 0:
                                                        require 0 <= (invested[address(msg.sender)] * stor17) - sub_ecb7cb1b[address(msg.sender)]
                                                        sub_ecb7cb1b[address(msg.sender)] = invested[address(msg.sender)] * stor17
                                                        call msg.sender with:
                                                             gas 2300 wei
                                                        if not ext_call.success:
                                                            revert with ext_call.return_data[0 len return_data.size]
                                                        else:
                                                            require invested[address(msg.sender)] + (invested[address(msg.sender)] * stor17) - sub_ecb7cb1b[address(msg.sender)] >= invested[address(msg.sender)]
                                                            invested[address(msg.sender)] = invested[address(msg.sender)] + (invested[address(msg.sender)] * stor17) - sub_ecb7cb1b[address(msg.sender)]
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
                                                           value (invested[address(msg.sender)] * stor17) - sub_ecb7cb1b[address(msg.sender)] wei
                                                             gas 2300 * is_zero(value) wei
                                                        if not ext_call.success:
                                                            revert with ext_call.return_data[0 len return_data.size]
                                                        else:
                            else:
                                if (invested[address(msg.sender)] * stor17) - sub_ecb7cb1b[address(msg.sender)]:
                                    require (invested[address(msg.sender)] * stor17) - sub_ecb7cb1b[address(msg.sender)]
                                    require (20 * invested[address(msg.sender)] * stor17) - (20 * sub_ecb7cb1b[address(msg.sender)]) / (invested[address(msg.sender)] * stor17) - sub_ecb7cb1b[address(msg.sender)] == 20
                                    require (20 * invested[address(msg.sender)] * stor17) - (20 * sub_ecb7cb1b[address(msg.sender)]) / 100 >= 0
                                    require launchtime <= block.timestamp
                                    if sub_ce138e64:
                                        require sub_ce138e64
                                        require sub_ce138e64 * invested[address(msg.sender)] / sub_ce138e64 == invested[address(msg.sender)]
                                        require (invested[address(msg.sender)] * stor17) - sub_ecb7cb1b[address(msg.sender)] + ((20 * invested[address(msg.sender)] * stor17) - (20 * sub_ecb7cb1b[address(msg.sender)]) / 100) > 0
                                        require block.timestamp - launchtime >= 360 * 24 * 3600
                                        lastInvest[address(msg.sender)] = block.timestamp
                                        lastWithdraw[address(msg.sender)] = block.timestamp
                                        if (20 * invested[address(msg.sender)] * stor17) - (20 * sub_ecb7cb1b[address(msg.sender)]) / 100 >= 0:
                                            if sub_ecb7cb1b[address(msg.sender)] >= invested[address(msg.sender)] * stor17:
                                            else:
                                                if (invested[address(msg.sender)] * stor17) - sub_ecb7cb1b[address(msg.sender)] >= sub_ce138e64 * invested[address(msg.sender)] / 100:
                                                    require sub_ce138e64 * invested[address(msg.sender)] / 100 <= (invested[address(msg.sender)] * stor17) - sub_ecb7cb1b[address(msg.sender)]
                                                    sub_ecb7cb1b[address(msg.sender)] = invested[address(msg.sender)] * stor17
                                                    call msg.sender with:
                                                       value sub_ce138e64 * invested[address(msg.sender)] / 100 wei
                                                         gas 2300 * is_zero(value) wei
                                                    if not ext_call.success:
                                                        revert with ext_call.return_data[0 len return_data.size]
                                                    else:
                                                        require invested[address(msg.sender)] + (invested[address(msg.sender)] * stor17) - sub_ecb7cb1b[address(msg.sender)] - (sub_ce138e64 * invested[address(msg.sender)] / 100) >= invested[address(msg.sender)]
                                                        invested[address(msg.sender)] = invested[address(msg.sender)] + (invested[address(msg.sender)] * stor17) - sub_ecb7cb1b[address(msg.sender)] - (sub_ce138e64 * invested[address(msg.sender)] / 100)
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
                                                       value (invested[address(msg.sender)] * stor17) - sub_ecb7cb1b[address(msg.sender)] wei
                                                         gas 2300 * is_zero(value) wei
                                                    if not ext_call.success:
                                                        revert with ext_call.return_data[0 len return_data.size]
                                                    else:
                                        else:
                                            if (invested[address(msg.sender)] * stor17) - sub_ecb7cb1b[address(msg.sender)] + ((20 * invested[address(msg.sender)] * stor17) - (20 * sub_ecb7cb1b[address(msg.sender)]) / 100) >= sub_ce138e64 * invested[address(msg.sender)] / 100:
                                                require sub_ce138e64 * invested[address(msg.sender)] / 100 <= (invested[address(msg.sender)] * stor17) - sub_ecb7cb1b[address(msg.sender)] + ((20 * invested[address(msg.sender)] * stor17) - (20 * sub_ecb7cb1b[address(msg.sender)]) / 100)
                                                sub_ecb7cb1b[address(msg.sender)] = (invested[address(msg.sender)] * stor17) + ((20 * invested[address(msg.sender)] * stor17) - (20 * sub_ecb7cb1b[address(msg.sender)]) / 100)
                                                call msg.sender with:
                                                   value sub_ce138e64 * invested[address(msg.sender)] / 100 wei
                                                     gas 2300 * is_zero(value) wei
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                else:
                                                    require invested[address(msg.sender)] + (invested[address(msg.sender)] * stor17) - sub_ecb7cb1b[address(msg.sender)] + ((20 * invested[address(msg.sender)] * stor17) - (20 * sub_ecb7cb1b[address(msg.sender)]) / 100) - (sub_ce138e64 * invested[address(msg.sender)] / 100) >= invested[address(msg.sender)]
                                                    invested[address(msg.sender)] = invested[address(msg.sender)] + (invested[address(msg.sender)] * stor17) - sub_ecb7cb1b[address(msg.sender)] + ((20 * invested[address(msg.sender)] * stor17) - (20 * sub_ecb7cb1b[address(msg.sender)]) / 100) - (sub_ce138e64 * invested[address(msg.sender)] / 100)
                                            else:
                                                sub_ecb7cb1b[address(msg.sender)] = (invested[address(msg.sender)] * stor17) + ((20 * invested[address(msg.sender)] * stor17) - (20 * sub_ecb7cb1b[address(msg.sender)]) / 100)
                                                call msg.sender with:
                                                   value (invested[address(msg.sender)] * stor17) - sub_ecb7cb1b[address(msg.sender)] + ((20 * invested[address(msg.sender)] * stor17) - (20 * sub_ecb7cb1b[address(msg.sender)]) / 100) wei
                                                     gas 2300 * is_zero(value) wei
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                else:
                                    else:
                                        require (invested[address(msg.sender)] * stor17) - sub_ecb7cb1b[address(msg.sender)] + ((20 * invested[address(msg.sender)] * stor17) - (20 * sub_ecb7cb1b[address(msg.sender)]) / 100) > 0
                                        require block.timestamp - launchtime >= 360 * 24 * 3600
                                        lastInvest[address(msg.sender)] = block.timestamp
                                        lastWithdraw[address(msg.sender)] = block.timestamp
                                        if (20 * invested[address(msg.sender)] * stor17) - (20 * sub_ecb7cb1b[address(msg.sender)]) / 100 >= 0:
                                            if sub_ecb7cb1b[address(msg.sender)] >= invested[address(msg.sender)] * stor17:
                                            else:
                                                if (invested[address(msg.sender)] * stor17) - sub_ecb7cb1b[address(msg.sender)] >= 0:
                                                    require 0 <= (invested[address(msg.sender)] * stor17) - sub_ecb7cb1b[address(msg.sender)]
                                                    sub_ecb7cb1b[address(msg.sender)] = invested[address(msg.sender)] * stor17
                                                    call msg.sender with:
                                                         gas 2300 wei
                                                    if not ext_call.success:
                                                        revert with ext_call.return_data[0 len return_data.size]
                                                    else:
                                                        require invested[address(msg.sender)] + (invested[address(msg.sender)] * stor17) - sub_ecb7cb1b[address(msg.sender)] >= invested[address(msg.sender)]
                                                        invested[address(msg.sender)] = invested[address(msg.sender)] + (invested[address(msg.sender)] * stor17) - sub_ecb7cb1b[address(msg.sender)]
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
                                                       value (invested[address(msg.sender)] * stor17) - sub_ecb7cb1b[address(msg.sender)] wei
                                                         gas 2300 * is_zero(value) wei
                                                    if not ext_call.success:
                                                        revert with ext_call.return_data[0 len return_data.size]
                                                    else:
                                        else:
                                            if (invested[address(msg.sender)] * stor17) - sub_ecb7cb1b[address(msg.sender)] + ((20 * invested[address(msg.sender)] * stor17) - (20 * sub_ecb7cb1b[address(msg.sender)]) / 100) >= 0:
                                                require 0 <= (invested[address(msg.sender)] * stor17) - sub_ecb7cb1b[address(msg.sender)] + ((20 * invested[address(msg.sender)] * stor17) - (20 * sub_ecb7cb1b[address(msg.sender)]) / 100)
                                                sub_ecb7cb1b[address(msg.sender)] = (invested[address(msg.sender)] * stor17) + ((20 * invested[address(msg.sender)] * stor17) - (20 * sub_ecb7cb1b[address(msg.sender)]) / 100)
                                                call msg.sender with:
                                                     gas 2300 wei
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                else:
                                                    require invested[address(msg.sender)] + (invested[address(msg.sender)] * stor17) - sub_ecb7cb1b[address(msg.sender)] + ((20 * invested[address(msg.sender)] * stor17) - (20 * sub_ecb7cb1b[address(msg.sender)]) / 100) >= invested[address(msg.sender)]
                                                    invested[address(msg.sender)] = invested[address(msg.sender)] + (invested[address(msg.sender)] * stor17) - sub_ecb7cb1b[address(msg.sender)] + ((20 * invested[address(msg.sender)] * stor17) - (20 * sub_ecb7cb1b[address(msg.sender)]) / 100)
                                            else:
                                                sub_ecb7cb1b[address(msg.sender)] = (invested[address(msg.sender)] * stor17) + ((20 * invested[address(msg.sender)] * stor17) - (20 * sub_ecb7cb1b[address(msg.sender)]) / 100)
                                                call msg.sender with:
                                                   value (invested[address(msg.sender)] * stor17) - sub_ecb7cb1b[address(msg.sender)] + ((20 * invested[address(msg.sender)] * stor17) - (20 * sub_ecb7cb1b[address(msg.sender)]) / 100) wei
                                                     gas 2300 * is_zero(value) wei
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                else:
                                else:
                                    require launchtime <= block.timestamp
                                    if sub_ce138e64:
                                        require sub_ce138e64
                                        require sub_ce138e64 * invested[address(msg.sender)] / sub_ce138e64 == invested[address(msg.sender)]
                                        require (invested[address(msg.sender)] * stor17) - sub_ecb7cb1b[address(msg.sender)] > 0
                                        require block.timestamp - launchtime >= 360 * 24 * 3600
                                        lastInvest[address(msg.sender)] = block.timestamp
                                        lastWithdraw[address(msg.sender)] = block.timestamp
                                        if sub_ecb7cb1b[address(msg.sender)] >= invested[address(msg.sender)] * stor17:
                                        else:
                                            if (invested[address(msg.sender)] * stor17) - sub_ecb7cb1b[address(msg.sender)] >= sub_ce138e64 * invested[address(msg.sender)] / 100:
                                                require sub_ce138e64 * invested[address(msg.sender)] / 100 <= (invested[address(msg.sender)] * stor17) - sub_ecb7cb1b[address(msg.sender)]
                                                sub_ecb7cb1b[address(msg.sender)] = invested[address(msg.sender)] * stor17
                                                call msg.sender with:
                                                   value sub_ce138e64 * invested[address(msg.sender)] / 100 wei
                                                     gas 2300 * is_zero(value) wei
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                else:
                                                    require invested[address(msg.sender)] + (invested[address(msg.sender)] * stor17) - sub_ecb7cb1b[address(msg.sender)] - (sub_ce138e64 * invested[address(msg.sender)] / 100) >= invested[address(msg.sender)]
                                                    invested[address(msg.sender)] = invested[address(msg.sender)] + (invested[address(msg.sender)] * stor17) - sub_ecb7cb1b[address(msg.sender)] - (sub_ce138e64 * invested[address(msg.sender)] / 100)
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
                                                   value (invested[address(msg.sender)] * stor17) - sub_ecb7cb1b[address(msg.sender)] wei
                                                     gas 2300 * is_zero(value) wei
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                else:
                                    else:
                                        require (invested[address(msg.sender)] * stor17) - sub_ecb7cb1b[address(msg.sender)] > 0
                                        require block.timestamp - launchtime >= 360 * 24 * 3600
                                        lastInvest[address(msg.sender)] = block.timestamp
                                        lastWithdraw[address(msg.sender)] = block.timestamp
                                        if sub_ecb7cb1b[address(msg.sender)] >= invested[address(msg.sender)] * stor17:
                                        else:
                                            if (invested[address(msg.sender)] * stor17) - sub_ecb7cb1b[address(msg.sender)] >= 0:
                                                require 0 <= (invested[address(msg.sender)] * stor17) - sub_ecb7cb1b[address(msg.sender)]
                                                sub_ecb7cb1b[address(msg.sender)] = invested[address(msg.sender)] * stor17
                                                call msg.sender with:
                                                     gas 2300 wei
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                else:
                                                    require invested[address(msg.sender)] + (invested[address(msg.sender)] * stor17) - sub_ecb7cb1b[address(msg.sender)] >= invested[address(msg.sender)]
                                                    invested[address(msg.sender)] = invested[address(msg.sender)] + (invested[address(msg.sender)] * stor17) - sub_ecb7cb1b[address(msg.sender)]
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
                                                   value (invested[address(msg.sender)] * stor17) - sub_ecb7cb1b[address(msg.sender)] wei
                                                     gas 2300 * is_zero(value) wei
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                else:
                    else:
                        require launchtime <= block.timestamp
                        if sub_ce138e64:
                            require sub_ce138e64
                            require sub_ce138e64 * invested[address(msg.sender)] / sub_ce138e64 == invested[address(msg.sender)]
                            require (invested[address(msg.sender)] * stor17) - sub_ecb7cb1b[address(msg.sender)] > 0
                            require block.timestamp - launchtime >= 360 * 24 * 3600
                            lastInvest[address(msg.sender)] = block.timestamp
                            lastWithdraw[address(msg.sender)] = block.timestamp
                            if sub_ecb7cb1b[address(msg.sender)] >= invested[address(msg.sender)] * stor17:
                            else:
                                if (invested[address(msg.sender)] * stor17) - sub_ecb7cb1b[address(msg.sender)] >= sub_ce138e64 * invested[address(msg.sender)] / 100:
                                    require sub_ce138e64 * invested[address(msg.sender)] / 100 <= (invested[address(msg.sender)] * stor17) - sub_ecb7cb1b[address(msg.sender)]
                                    sub_ecb7cb1b[address(msg.sender)] = invested[address(msg.sender)] * stor17
                                    call msg.sender with:
                                       value sub_ce138e64 * invested[address(msg.sender)] / 100 wei
                                         gas 2300 * is_zero(value) wei
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    else:
                                        require invested[address(msg.sender)] + (invested[address(msg.sender)] * stor17) - sub_ecb7cb1b[address(msg.sender)] - (sub_ce138e64 * invested[address(msg.sender)] / 100) >= invested[address(msg.sender)]
                                        invested[address(msg.sender)] = invested[address(msg.sender)] + (invested[address(msg.sender)] * stor17) - sub_ecb7cb1b[address(msg.sender)] - (sub_ce138e64 * invested[address(msg.sender)] / 100)
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
                                       value (invested[address(msg.sender)] * stor17) - sub_ecb7cb1b[address(msg.sender)] wei
                                         gas 2300 * is_zero(value) wei
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    else:
                        else:
                            require (invested[address(msg.sender)] * stor17) - sub_ecb7cb1b[address(msg.sender)] > 0
                            require block.timestamp - launchtime >= 360 * 24 * 3600
                            lastInvest[address(msg.sender)] = block.timestamp
                            lastWithdraw[address(msg.sender)] = block.timestamp
                            if sub_ecb7cb1b[address(msg.sender)] >= invested[address(msg.sender)] * stor17:
                            else:
                                if (invested[address(msg.sender)] * stor17) - sub_ecb7cb1b[address(msg.sender)] >= 0:
                                    require 0 <= (invested[address(msg.sender)] * stor17) - sub_ecb7cb1b[address(msg.sender)]
                                    sub_ecb7cb1b[address(msg.sender)] = invested[address(msg.sender)] * stor17
                                    call msg.sender with:
                                         gas 2300 wei
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    else:
                                        require invested[address(msg.sender)] + (invested[address(msg.sender)] * stor17) - sub_ecb7cb1b[address(msg.sender)] >= invested[address(msg.sender)]
                                        invested[address(msg.sender)] = invested[address(msg.sender)] + (invested[address(msg.sender)] * stor17) - sub_ecb7cb1b[address(msg.sender)]
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
                                       value (invested[address(msg.sender)] * stor17) - sub_ecb7cb1b[address(msg.sender)] wei
                                         gas 2300 * is_zero(value) wei
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    else:
    else:
        if 0 <= (invested[address(msg.sender)] * stor17) - sub_ecb7cb1b[address(msg.sender)]:
            if invested[address(msg.sender)] < 5 * 10^17:
                require launchtime <= block.timestamp
                require sub_ce138e64
                require sub_ce138e64
                require sub_ce138e64 * invested[address(msg.sender)] / sub_ce138e64 == invested[address(msg.sender)]
                revert
            else:
                if 4 * 10^18 < invested[address(msg.sender)]:
                    if invested[address(msg.sender)] < 401 * 10^16:
                        require launchtime <= block.timestamp
                        require sub_ce138e64
                        require sub_ce138e64
                        require sub_ce138e64 * invested[address(msg.sender)] / sub_ce138e64 == invested[address(msg.sender)]
                        revert
                    else:
                        if 7 * 10^18 < invested[address(msg.sender)]:
                            if invested[address(msg.sender)] < 701 * 10^16:
                                require launchtime <= block.timestamp
                                require sub_ce138e64
                                require sub_ce138e64
                                require sub_ce138e64 * invested[address(msg.sender)] / sub_ce138e64 == invested[address(msg.sender)]
                                revert
                            else:
                                if 10 * 10^18 < invested[address(msg.sender)]:
                                    if invested[address(msg.sender)] < 1001 * 10^16:
                                        require launchtime <= block.timestamp
                                        require sub_ce138e64
                                        require sub_ce138e64
                                        require sub_ce138e64 * invested[address(msg.sender)] / sub_ce138e64 == invested[address(msg.sender)]
                                        revert
                                    else:
                                        if 15 * 10^18 < invested[address(msg.sender)]:
                                            if invested[address(msg.sender)] < 1501 * 10^16:
                                                require launchtime <= block.timestamp
                                                require sub_ce138e64
                                                require sub_ce138e64
                                                require sub_ce138e64 * invested[address(msg.sender)] / sub_ce138e64 == invested[address(msg.sender)]
                                                revert
                                            else:
                                                require launchtime <= block.timestamp
                                                require sub_ce138e64
                                                require sub_ce138e64
                                                require sub_ce138e64 * invested[address(msg.sender)] / sub_ce138e64 == invested[address(msg.sender)]
                                                revert
                                        else:
                                            require launchtime <= block.timestamp
                                            require sub_ce138e64
                                            require sub_ce138e64
                                            require sub_ce138e64 * invested[address(msg.sender)] / sub_ce138e64 == invested[address(msg.sender)]
                                            revert
                                else:
                                    require launchtime <= block.timestamp
                                    require sub_ce138e64
                                    require sub_ce138e64
                                    require sub_ce138e64 * invested[address(msg.sender)] / sub_ce138e64 == invested[address(msg.sender)]
                                    revert
                        else:
                            require launchtime <= block.timestamp
                            require sub_ce138e64
                            require sub_ce138e64
                            require sub_ce138e64 * invested[address(msg.sender)] / sub_ce138e64 == invested[address(msg.sender)]
                            revert
                else:
                    require launchtime <= block.timestamp
                    require sub_ce138e64
                    require sub_ce138e64
                    require sub_ce138e64 * invested[address(msg.sender)] / sub_ce138e64 == invested[address(msg.sender)]
                    revert
        else:
            if sub_ecb7cb1b[address(msg.sender)] >= invested[address(msg.sender)] * stor17:
                if invested[address(msg.sender)] < 5 * 10^17:
                    require launchtime <= block.timestamp
                    require sub_ce138e64
                    require sub_ce138e64
                    require sub_ce138e64 * invested[address(msg.sender)] / sub_ce138e64 == invested[address(msg.sender)]
                    revert
                else:
                    if 4 * 10^18 < invested[address(msg.sender)]:
                        if invested[address(msg.sender)] < 401 * 10^16:
                            require launchtime <= block.timestamp
                            require sub_ce138e64
                            require sub_ce138e64
                            require sub_ce138e64 * invested[address(msg.sender)] / sub_ce138e64 == invested[address(msg.sender)]
                            revert
                        else:
                            if 7 * 10^18 < invested[address(msg.sender)]:
                                if invested[address(msg.sender)] < 701 * 10^16:
                                    require launchtime <= block.timestamp
                                    require sub_ce138e64
                                    require sub_ce138e64
                                    require sub_ce138e64 * invested[address(msg.sender)] / sub_ce138e64 == invested[address(msg.sender)]
                                    revert
                                else:
                                    if 10 * 10^18 < invested[address(msg.sender)]:
                                        if invested[address(msg.sender)] < 1001 * 10^16:
                                            require launchtime <= block.timestamp
                                            require sub_ce138e64
                                            require sub_ce138e64
                                            require sub_ce138e64 * invested[address(msg.sender)] / sub_ce138e64 == invested[address(msg.sender)]
                                            revert
                                        else:
                                            if 15 * 10^18 < invested[address(msg.sender)]:
                                                if invested[address(msg.sender)] < 1501 * 10^16:
                                                    require launchtime <= block.timestamp
                                                    require sub_ce138e64
                                                    require sub_ce138e64
                                                    require sub_ce138e64 * invested[address(msg.sender)] / sub_ce138e64 == invested[address(msg.sender)]
                                                    revert
                                                else:
                                                    require launchtime <= block.timestamp
                                                    require sub_ce138e64
                                                    require sub_ce138e64
                                                    require sub_ce138e64 * invested[address(msg.sender)] / sub_ce138e64 == invested[address(msg.sender)]
                                                    revert
                                            else:
                                                require launchtime <= block.timestamp
                                                require sub_ce138e64
                                                require sub_ce138e64
                                                require sub_ce138e64 * invested[address(msg.sender)] / sub_ce138e64 == invested[address(msg.sender)]
                                                revert
                                    else:
                                        require launchtime <= block.timestamp
                                        require sub_ce138e64
                                        require sub_ce138e64
                                        require sub_ce138e64 * invested[address(msg.sender)] / sub_ce138e64 == invested[address(msg.sender)]
                                        revert
                            else:
                                require launchtime <= block.timestamp
                                require sub_ce138e64
                                require sub_ce138e64
                                require sub_ce138e64 * invested[address(msg.sender)] / sub_ce138e64 == invested[address(msg.sender)]
                                revert
                    else:
                        require launchtime <= block.timestamp
                        require sub_ce138e64
                        require sub_ce138e64
                        require sub_ce138e64 * invested[address(msg.sender)] / sub_ce138e64 == invested[address(msg.sender)]
                        revert
            else:
                if invested[address(msg.sender)] < 5 * 10^17:
                    require launchtime <= block.timestamp
                    if sub_ce138e64:
                        require sub_ce138e64
                        require sub_ce138e64 * invested[address(msg.sender)] / sub_ce138e64 == invested[address(msg.sender)]
                        require (invested[address(msg.sender)] * stor17) - sub_ecb7cb1b[address(msg.sender)] > 0
                        require block.timestamp - launchtime >= 360 * 24 * 3600
                        lastInvest[address(msg.sender)] = block.timestamp
                        lastWithdraw[address(msg.sender)] = block.timestamp
                        if sub_ecb7cb1b[address(msg.sender)] >= invested[address(msg.sender)] * stor17:
                        else:
                            if (invested[address(msg.sender)] * stor17) - sub_ecb7cb1b[address(msg.sender)] >= sub_ce138e64 * invested[address(msg.sender)] / 100:
                                require sub_ce138e64 * invested[address(msg.sender)] / 100 <= (invested[address(msg.sender)] * stor17) - sub_ecb7cb1b[address(msg.sender)]
                                sub_ecb7cb1b[address(msg.sender)] = invested[address(msg.sender)] * stor17
                                call msg.sender with:
                                   value sub_ce138e64 * invested[address(msg.sender)] / 100 wei
                                     gas 2300 * is_zero(value) wei
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                else:
                                    require invested[address(msg.sender)] + (invested[address(msg.sender)] * stor17) - sub_ecb7cb1b[address(msg.sender)] - (sub_ce138e64 * invested[address(msg.sender)] / 100) >= invested[address(msg.sender)]
                                    invested[address(msg.sender)] = invested[address(msg.sender)] + (invested[address(msg.sender)] * stor17) - sub_ecb7cb1b[address(msg.sender)] - (sub_ce138e64 * invested[address(msg.sender)] / 100)
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
                                   value (invested[address(msg.sender)] * stor17) - sub_ecb7cb1b[address(msg.sender)] wei
                                     gas 2300 * is_zero(value) wei
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                else:
                    else:
                        require (invested[address(msg.sender)] * stor17) - sub_ecb7cb1b[address(msg.sender)] > 0
                        require block.timestamp - launchtime >= 360 * 24 * 3600
                        lastInvest[address(msg.sender)] = block.timestamp
                        lastWithdraw[address(msg.sender)] = block.timestamp
                        if sub_ecb7cb1b[address(msg.sender)] >= invested[address(msg.sender)] * stor17:
                        else:
                            if (invested[address(msg.sender)] * stor17) - sub_ecb7cb1b[address(msg.sender)] >= 0:
                                require 0 <= (invested[address(msg.sender)] * stor17) - sub_ecb7cb1b[address(msg.sender)]
                                sub_ecb7cb1b[address(msg.sender)] = invested[address(msg.sender)] * stor17
                                call msg.sender with:
                                     gas 2300 wei
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                else:
                                    require invested[address(msg.sender)] + (invested[address(msg.sender)] * stor17) - sub_ecb7cb1b[address(msg.sender)] >= invested[address(msg.sender)]
                                    invested[address(msg.sender)] = invested[address(msg.sender)] + (invested[address(msg.sender)] * stor17) - sub_ecb7cb1b[address(msg.sender)]
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
                                   value (invested[address(msg.sender)] * stor17) - sub_ecb7cb1b[address(msg.sender)] wei
                                     gas 2300 * is_zero(value) wei
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                else:
                else:
                    if 4 * 10^18 < invested[address(msg.sender)]:
                        if invested[address(msg.sender)] < 401 * 10^16:
                            require launchtime <= block.timestamp
                            if sub_ce138e64:
                                require sub_ce138e64
                                require sub_ce138e64 * invested[address(msg.sender)] / sub_ce138e64 == invested[address(msg.sender)]
                                require (invested[address(msg.sender)] * stor17) - sub_ecb7cb1b[address(msg.sender)] > 0
                                require block.timestamp - launchtime >= 360 * 24 * 3600
                                lastInvest[address(msg.sender)] = block.timestamp
                                lastWithdraw[address(msg.sender)] = block.timestamp
                                if sub_ecb7cb1b[address(msg.sender)] >= invested[address(msg.sender)] * stor17:
                                else:
                                    if (invested[address(msg.sender)] * stor17) - sub_ecb7cb1b[address(msg.sender)] >= sub_ce138e64 * invested[address(msg.sender)] / 100:
                                        require sub_ce138e64 * invested[address(msg.sender)] / 100 <= (invested[address(msg.sender)] * stor17) - sub_ecb7cb1b[address(msg.sender)]
                                        sub_ecb7cb1b[address(msg.sender)] = invested[address(msg.sender)] * stor17
                                        call msg.sender with:
                                           value sub_ce138e64 * invested[address(msg.sender)] / 100 wei
                                             gas 2300 * is_zero(value) wei
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        else:
                                            require invested[address(msg.sender)] + (invested[address(msg.sender)] * stor17) - sub_ecb7cb1b[address(msg.sender)] - (sub_ce138e64 * invested[address(msg.sender)] / 100) >= invested[address(msg.sender)]
                                            invested[address(msg.sender)] = invested[address(msg.sender)] + (invested[address(msg.sender)] * stor17) - sub_ecb7cb1b[address(msg.sender)] - (sub_ce138e64 * invested[address(msg.sender)] / 100)
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
                                           value (invested[address(msg.sender)] * stor17) - sub_ecb7cb1b[address(msg.sender)] wei
                                             gas 2300 * is_zero(value) wei
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        else:
                            else:
                                require (invested[address(msg.sender)] * stor17) - sub_ecb7cb1b[address(msg.sender)] > 0
                                require block.timestamp - launchtime >= 360 * 24 * 3600
                                lastInvest[address(msg.sender)] = block.timestamp
                                lastWithdraw[address(msg.sender)] = block.timestamp
                                if sub_ecb7cb1b[address(msg.sender)] >= invested[address(msg.sender)] * stor17:
                                else:
                                    if (invested[address(msg.sender)] * stor17) - sub_ecb7cb1b[address(msg.sender)] >= 0:
                                        require 0 <= (invested[address(msg.sender)] * stor17) - sub_ecb7cb1b[address(msg.sender)]
                                        sub_ecb7cb1b[address(msg.sender)] = invested[address(msg.sender)] * stor17
                                        call msg.sender with:
                                             gas 2300 wei
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        else:
                                            require invested[address(msg.sender)] + (invested[address(msg.sender)] * stor17) - sub_ecb7cb1b[address(msg.sender)] >= invested[address(msg.sender)]
                                            invested[address(msg.sender)] = invested[address(msg.sender)] + (invested[address(msg.sender)] * stor17) - sub_ecb7cb1b[address(msg.sender)]
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
                                           value (invested[address(msg.sender)] * stor17) - sub_ecb7cb1b[address(msg.sender)] wei
                                             gas 2300 * is_zero(value) wei
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        else:
                        else:
                            if 7 * 10^18 < invested[address(msg.sender)]:
                                if invested[address(msg.sender)] < 701 * 10^16:
                                    require launchtime <= block.timestamp
                                    if sub_ce138e64:
                                        require sub_ce138e64
                                        require sub_ce138e64 * invested[address(msg.sender)] / sub_ce138e64 == invested[address(msg.sender)]
                                        require (invested[address(msg.sender)] * stor17) - sub_ecb7cb1b[address(msg.sender)] > 0
                                        require block.timestamp - launchtime >= 360 * 24 * 3600
                                        lastInvest[address(msg.sender)] = block.timestamp
                                        lastWithdraw[address(msg.sender)] = block.timestamp
                                        if sub_ecb7cb1b[address(msg.sender)] >= invested[address(msg.sender)] * stor17:
                                        else:
                                            if (invested[address(msg.sender)] * stor17) - sub_ecb7cb1b[address(msg.sender)] >= sub_ce138e64 * invested[address(msg.sender)] / 100:
                                                require sub_ce138e64 * invested[address(msg.sender)] / 100 <= (invested[address(msg.sender)] * stor17) - sub_ecb7cb1b[address(msg.sender)]
                                                sub_ecb7cb1b[address(msg.sender)] = invested[address(msg.sender)] * stor17
                                                call msg.sender with:
                                                   value sub_ce138e64 * invested[address(msg.sender)] / 100 wei
                                                     gas 2300 * is_zero(value) wei
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                else:
                                                    require invested[address(msg.sender)] + (invested[address(msg.sender)] * stor17) - sub_ecb7cb1b[address(msg.sender)] - (sub_ce138e64 * invested[address(msg.sender)] / 100) >= invested[address(msg.sender)]
                                                    invested[address(msg.sender)] = invested[address(msg.sender)] + (invested[address(msg.sender)] * stor17) - sub_ecb7cb1b[address(msg.sender)] - (sub_ce138e64 * invested[address(msg.sender)] / 100)
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
                                                   value (invested[address(msg.sender)] * stor17) - sub_ecb7cb1b[address(msg.sender)] wei
                                                     gas 2300 * is_zero(value) wei
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                else:
                                    else:
                                        require (invested[address(msg.sender)] * stor17) - sub_ecb7cb1b[address(msg.sender)] > 0
                                        require block.timestamp - launchtime >= 360 * 24 * 3600
                                        lastInvest[address(msg.sender)] = block.timestamp
                                        lastWithdraw[address(msg.sender)] = block.timestamp
                                        if sub_ecb7cb1b[address(msg.sender)] >= invested[address(msg.sender)] * stor17:
                                        else:
                                            if (invested[address(msg.sender)] * stor17) - sub_ecb7cb1b[address(msg.sender)] >= 0:
                                                require 0 <= (invested[address(msg.sender)] * stor17) - sub_ecb7cb1b[address(msg.sender)]
                                                sub_ecb7cb1b[address(msg.sender)] = invested[address(msg.sender)] * stor17
                                                call msg.sender with:
                                                     gas 2300 wei
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                else:
                                                    require invested[address(msg.sender)] + (invested[address(msg.sender)] * stor17) - sub_ecb7cb1b[address(msg.sender)] >= invested[address(msg.sender)]
                                                    invested[address(msg.sender)] = invested[address(msg.sender)] + (invested[address(msg.sender)] * stor17) - sub_ecb7cb1b[address(msg.sender)]
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
                                                   value (invested[address(msg.sender)] * stor17) - sub_ecb7cb1b[address(msg.sender)] wei
                                                     gas 2300 * is_zero(value) wei
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                else:
                                else:
                                    if 10 * 10^18 < invested[address(msg.sender)]:
                                        if invested[address(msg.sender)] < 1001 * 10^16:
                                            require launchtime <= block.timestamp
                                            if sub_ce138e64:
                                                require sub_ce138e64
                                                require sub_ce138e64 * invested[address(msg.sender)] / sub_ce138e64 == invested[address(msg.sender)]
                                                require (invested[address(msg.sender)] * stor17) - sub_ecb7cb1b[address(msg.sender)] > 0
                                                require block.timestamp - launchtime >= 360 * 24 * 3600
                                                lastInvest[address(msg.sender)] = block.timestamp
                                                lastWithdraw[address(msg.sender)] = block.timestamp
                                                if sub_ecb7cb1b[address(msg.sender)] >= invested[address(msg.sender)] * stor17:
                                                else:
                                                    if (invested[address(msg.sender)] * stor17) - sub_ecb7cb1b[address(msg.sender)] >= sub_ce138e64 * invested[address(msg.sender)] / 100:
                                                        require sub_ce138e64 * invested[address(msg.sender)] / 100 <= (invested[address(msg.sender)] * stor17) - sub_ecb7cb1b[address(msg.sender)]
                                                        sub_ecb7cb1b[address(msg.sender)] = invested[address(msg.sender)] * stor17
                                                        call msg.sender with:
                                                           value sub_ce138e64 * invested[address(msg.sender)] / 100 wei
                                                             gas 2300 * is_zero(value) wei
                                                        if not ext_call.success:
                                                            revert with ext_call.return_data[0 len return_data.size]
                                                        else:
                                                            require invested[address(msg.sender)] + (invested[address(msg.sender)] * stor17) - sub_ecb7cb1b[address(msg.sender)] - (sub_ce138e64 * invested[address(msg.sender)] / 100) >= invested[address(msg.sender)]
                                                            invested[address(msg.sender)] = invested[address(msg.sender)] + (invested[address(msg.sender)] * stor17) - sub_ecb7cb1b[address(msg.sender)] - (sub_ce138e64 * invested[address(msg.sender)] / 100)
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
                                                           value (invested[address(msg.sender)] * stor17) - sub_ecb7cb1b[address(msg.sender)] wei
                                                             gas 2300 * is_zero(value) wei
                                                        if not ext_call.success:
                                                            revert with ext_call.return_data[0 len return_data.size]
                                                        else:
                                            else:
                                                require (invested[address(msg.sender)] * stor17) - sub_ecb7cb1b[address(msg.sender)] > 0
                                                require block.timestamp - launchtime >= 360 * 24 * 3600
                                                lastInvest[address(msg.sender)] = block.timestamp
                                                lastWithdraw[address(msg.sender)] = block.timestamp
                                                if sub_ecb7cb1b[address(msg.sender)] >= invested[address(msg.sender)] * stor17:
                                                else:
                                                    if (invested[address(msg.sender)] * stor17) - sub_ecb7cb1b[address(msg.sender)] >= 0:
                                                        require 0 <= (invested[address(msg.sender)] * stor17) - sub_ecb7cb1b[address(msg.sender)]
                                                        sub_ecb7cb1b[address(msg.sender)] = invested[address(msg.sender)] * stor17
                                                        call msg.sender with:
                                                             gas 2300 wei
                                                        if not ext_call.success:
                                                            revert with ext_call.return_data[0 len return_data.size]
                                                        else:
                                                            require invested[address(msg.sender)] + (invested[address(msg.sender)] * stor17) - sub_ecb7cb1b[address(msg.sender)] >= invested[address(msg.sender)]
                                                            invested[address(msg.sender)] = invested[address(msg.sender)] + (invested[address(msg.sender)] * stor17) - sub_ecb7cb1b[address(msg.sender)]
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
                                                           value (invested[address(msg.sender)] * stor17) - sub_ecb7cb1b[address(msg.sender)] wei
                                                             gas 2300 * is_zero(value) wei
                                                        if not ext_call.success:
                                                            revert with ext_call.return_data[0 len return_data.size]
                                                        else:
                                        else:
                                            if 15 * 10^18 < invested[address(msg.sender)]:
                                                if invested[address(msg.sender)] < 1501 * 10^16:
                                                    require launchtime <= block.timestamp
                                                    if sub_ce138e64:
                                                        require sub_ce138e64
                                                        require sub_ce138e64 * invested[address(msg.sender)] / sub_ce138e64 == invested[address(msg.sender)]
                                                        require (invested[address(msg.sender)] * stor17) - sub_ecb7cb1b[address(msg.sender)] > 0
                                                        require block.timestamp - launchtime >= 360 * 24 * 3600
                                                        lastInvest[address(msg.sender)] = block.timestamp
                                                        lastWithdraw[address(msg.sender)] = block.timestamp
                                                        if sub_ecb7cb1b[address(msg.sender)] >= invested[address(msg.sender)] * stor17:
                                                        else:
                                                            if (invested[address(msg.sender)] * stor17) - sub_ecb7cb1b[address(msg.sender)] >= sub_ce138e64 * invested[address(msg.sender)] / 100:
                                                                require sub_ce138e64 * invested[address(msg.sender)] / 100 <= (invested[address(msg.sender)] * stor17) - sub_ecb7cb1b[address(msg.sender)]
                                                                sub_ecb7cb1b[address(msg.sender)] = invested[address(msg.sender)] * stor17
                                                                call msg.sender with:
                                                                   value sub_ce138e64 * invested[address(msg.sender)] / 100 wei
                                                                     gas 2300 * is_zero(value) wei
                                                                if not ext_call.success:
                                                                    revert with ext_call.return_data[0 len return_data.size]
                                                                else:
                                                                    require invested[address(msg.sender)] + (invested[address(msg.sender)] * stor17) - sub_ecb7cb1b[address(msg.sender)] - (sub_ce138e64 * invested[address(msg.sender)] / 100) >= invested[address(msg.sender)]
                                                                    invested[address(msg.sender)] = invested[address(msg.sender)] + (invested[address(msg.sender)] * stor17) - sub_ecb7cb1b[address(msg.sender)] - (sub_ce138e64 * invested[address(msg.sender)] / 100)
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
                                                                   value (invested[address(msg.sender)] * stor17) - sub_ecb7cb1b[address(msg.sender)] wei
                                                                     gas 2300 * is_zero(value) wei
                                                                if not ext_call.success:
                                                                    revert with ext_call.return_data[0 len return_data.size]
                                                                else:
                                                    else:
                                                        require (invested[address(msg.sender)] * stor17) - sub_ecb7cb1b[address(msg.sender)] > 0
                                                        require block.timestamp - launchtime >= 360 * 24 * 3600
                                                        lastInvest[address(msg.sender)] = block.timestamp
                                                        lastWithdraw[address(msg.sender)] = block.timestamp
                                                        if sub_ecb7cb1b[address(msg.sender)] >= invested[address(msg.sender)] * stor17:
                                                        else:
                                                            if (invested[address(msg.sender)] * stor17) - sub_ecb7cb1b[address(msg.sender)] >= 0:
                                                                require 0 <= (invested[address(msg.sender)] * stor17) - sub_ecb7cb1b[address(msg.sender)]
                                                                sub_ecb7cb1b[address(msg.sender)] = invested[address(msg.sender)] * stor17
                                                                call msg.sender with:
                                                                     gas 2300 wei
                                                                if not ext_call.success:
                                                                    revert with ext_call.return_data[0 len return_data.size]
                                                                else:
                                                                    require invested[address(msg.sender)] + (invested[address(msg.sender)] * stor17) - sub_ecb7cb1b[address(msg.sender)] >= invested[address(msg.sender)]
                                                                    invested[address(msg.sender)] = invested[address(msg.sender)] + (invested[address(msg.sender)] * stor17) - sub_ecb7cb1b[address(msg.sender)]
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
                                                                   value (invested[address(msg.sender)] * stor17) - sub_ecb7cb1b[address(msg.sender)] wei
                                                                     gas 2300 * is_zero(value) wei
                                                                if not ext_call.success:
                                                                    revert with ext_call.return_data[0 len return_data.size]
                                                                else:
                                                else:
                                                    if (invested[address(msg.sender)] * stor17) - sub_ecb7cb1b[address(msg.sender)]:
                                                        require (invested[address(msg.sender)] * stor17) - sub_ecb7cb1b[address(msg.sender)]
                                                        require (99 * invested[address(msg.sender)] * stor17) - (99 * sub_ecb7cb1b[address(msg.sender)]) / (invested[address(msg.sender)] * stor17) - sub_ecb7cb1b[address(msg.sender)] == 99
                                                        require (99 * invested[address(msg.sender)] * stor17) - (99 * sub_ecb7cb1b[address(msg.sender)]) / 100 >= 0
                                                        require launchtime <= block.timestamp
                                                        if sub_ce138e64:
                                                            require sub_ce138e64
                                                            require sub_ce138e64 * invested[address(msg.sender)] / sub_ce138e64 == invested[address(msg.sender)]
                                                            require (invested[address(msg.sender)] * stor17) - sub_ecb7cb1b[address(msg.sender)] + ((99 * invested[address(msg.sender)] * stor17) - (99 * sub_ecb7cb1b[address(msg.sender)]) / 100) > 0
                                                            require block.timestamp - launchtime >= 360 * 24 * 3600
                                                            lastInvest[address(msg.sender)] = block.timestamp
                                                            lastWithdraw[address(msg.sender)] = block.timestamp
                                                            if (99 * invested[address(msg.sender)] * stor17) - (99 * sub_ecb7cb1b[address(msg.sender)]) / 100 >= 0:
                                                                if sub_ecb7cb1b[address(msg.sender)] >= invested[address(msg.sender)] * stor17:
                                                                else:
                                                                    if (invested[address(msg.sender)] * stor17) - sub_ecb7cb1b[address(msg.sender)] >= sub_ce138e64 * invested[address(msg.sender)] / 100:
                                                                        require sub_ce138e64 * invested[address(msg.sender)] / 100 <= (invested[address(msg.sender)] * stor17) - sub_ecb7cb1b[address(msg.sender)]
                                                                        sub_ecb7cb1b[address(msg.sender)] = invested[address(msg.sender)] * stor17
                                                                        call msg.sender with:
                                                                           value sub_ce138e64 * invested[address(msg.sender)] / 100 wei
                                                                             gas 2300 * is_zero(value) wei
                                                                        if not ext_call.success:
                                                                            revert with ext_call.return_data[0 len return_data.size]
                                                                        else:
                                                                            require invested[address(msg.sender)] + (invested[address(msg.sender)] * stor17) - sub_ecb7cb1b[address(msg.sender)] - (sub_ce138e64 * invested[address(msg.sender)] / 100) >= invested[address(msg.sender)]
                                                                            invested[address(msg.sender)] = invested[address(msg.sender)] + (invested[address(msg.sender)] * stor17) - sub_ecb7cb1b[address(msg.sender)] - (sub_ce138e64 * invested[address(msg.sender)] / 100)
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
                                                                           value (invested[address(msg.sender)] * stor17) - sub_ecb7cb1b[address(msg.sender)] wei
                                                                             gas 2300 * is_zero(value) wei
                                                                        if not ext_call.success:
                                                                            revert with ext_call.return_data[0 len return_data.size]
                                                                        else:
                                                            else:
                                                                if (invested[address(msg.sender)] * stor17) - sub_ecb7cb1b[address(msg.sender)] + ((99 * invested[address(msg.sender)] * stor17) - (99 * sub_ecb7cb1b[address(msg.sender)]) / 100) >= sub_ce138e64 * invested[address(msg.sender)] / 100:
                                                                    require sub_ce138e64 * invested[address(msg.sender)] / 100 <= (invested[address(msg.sender)] * stor17) - sub_ecb7cb1b[address(msg.sender)] + ((99 * invested[address(msg.sender)] * stor17) - (99 * sub_ecb7cb1b[address(msg.sender)]) / 100)
                                                                    sub_ecb7cb1b[address(msg.sender)] = (invested[address(msg.sender)] * stor17) + ((99 * invested[address(msg.sender)] * stor17) - (99 * sub_ecb7cb1b[address(msg.sender)]) / 100)
                                                                    call msg.sender with:
                                                                       value sub_ce138e64 * invested[address(msg.sender)] / 100 wei
                                                                         gas 2300 * is_zero(value) wei
                                                                    if not ext_call.success:
                                                                        revert with ext_call.return_data[0 len return_data.size]
                                                                    else:
                                                                        require invested[address(msg.sender)] + (invested[address(msg.sender)] * stor17) - sub_ecb7cb1b[address(msg.sender)] + ((99 * invested[address(msg.sender)] * stor17) - (99 * sub_ecb7cb1b[address(msg.sender)]) / 100) - (sub_ce138e64 * invested[address(msg.sender)] / 100) >= invested[address(msg.sender)]
                                                                        invested[address(msg.sender)] = invested[address(msg.sender)] + (invested[address(msg.sender)] * stor17) - sub_ecb7cb1b[address(msg.sender)] + ((99 * invested[address(msg.sender)] * stor17) - (99 * sub_ecb7cb1b[address(msg.sender)]) / 100) - (sub_ce138e64 * invested[address(msg.sender)] / 100)
                                                                else:
                                                                    sub_ecb7cb1b[address(msg.sender)] = (invested[address(msg.sender)] * stor17) + ((99 * invested[address(msg.sender)] * stor17) - (99 * sub_ecb7cb1b[address(msg.sender)]) / 100)
                                                                    call msg.sender with:
                                                                       value (invested[address(msg.sender)] * stor17) - sub_ecb7cb1b[address(msg.sender)] + ((99 * invested[address(msg.sender)] * stor17) - (99 * sub_ecb7cb1b[address(msg.sender)]) / 100) wei
                                                                         gas 2300 * is_zero(value) wei
                                                                    if not ext_call.success:
                                                                        revert with ext_call.return_data[0 len return_data.size]
                                                                    else:
                                                        else:
                                                            require (invested[address(msg.sender)] * stor17) - sub_ecb7cb1b[address(msg.sender)] + ((99 * invested[address(msg.sender)] * stor17) - (99 * sub_ecb7cb1b[address(msg.sender)]) / 100) > 0
                                                            require block.timestamp - launchtime >= 360 * 24 * 3600
                                                            lastInvest[address(msg.sender)] = block.timestamp
                                                            lastWithdraw[address(msg.sender)] = block.timestamp
                                                            if (99 * invested[address(msg.sender)] * stor17) - (99 * sub_ecb7cb1b[address(msg.sender)]) / 100 >= 0:
                                                                if sub_ecb7cb1b[address(msg.sender)] >= invested[address(msg.sender)] * stor17:
                                                                else:
                                                                    if (invested[address(msg.sender)] * stor17) - sub_ecb7cb1b[address(msg.sender)] >= 0:
                                                                        require 0 <= (invested[address(msg.sender)] * stor17) - sub_ecb7cb1b[address(msg.sender)]
                                                                        sub_ecb7cb1b[address(msg.sender)] = invested[address(msg.sender)] * stor17
                                                                        call msg.sender with:
                                                                             gas 2300 wei
                                                                        if not ext_call.success:
                                                                            revert with ext_call.return_data[0 len return_data.size]
                                                                        else:
                                                                            require invested[address(msg.sender)] + (invested[address(msg.sender)] * stor17) - sub_ecb7cb1b[address(msg.sender)] >= invested[address(msg.sender)]
                                                                            invested[address(msg.sender)] = invested[address(msg.sender)] + (invested[address(msg.sender)] * stor17) - sub_ecb7cb1b[address(msg.sender)]
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
                                                                           value (invested[address(msg.sender)] * stor17) - sub_ecb7cb1b[address(msg.sender)] wei
                                                                             gas 2300 * is_zero(value) wei
                                                                        if not ext_call.success:
                                                                            revert with ext_call.return_data[0 len return_data.size]
                                                                        else:
                                                            else:
                                                                if (invested[address(msg.sender)] * stor17) - sub_ecb7cb1b[address(msg.sender)] + ((99 * invested[address(msg.sender)] * stor17) - (99 * sub_ecb7cb1b[address(msg.sender)]) / 100) >= 0:
                                                                    require 0 <= (invested[address(msg.sender)] * stor17) - sub_ecb7cb1b[address(msg.sender)] + ((99 * invested[address(msg.sender)] * stor17) - (99 * sub_ecb7cb1b[address(msg.sender)]) / 100)
                                                                    sub_ecb7cb1b[address(msg.sender)] = (invested[address(msg.sender)] * stor17) + ((99 * invested[address(msg.sender)] * stor17) - (99 * sub_ecb7cb1b[address(msg.sender)]) / 100)
                                                                    call msg.sender with:
                                                                         gas 2300 wei
                                                                    if not ext_call.success:
                                                                        revert with ext_call.return_data[0 len return_data.size]
                                                                    else:
                                                                        require invested[address(msg.sender)] + (invested[address(msg.sender)] * stor17) - sub_ecb7cb1b[address(msg.sender)] + ((99 * invested[address(msg.sender)] * stor17) - (99 * sub_ecb7cb1b[address(msg.sender)]) / 100) >= invested[address(msg.sender)]
                                                                        invested[address(msg.sender)] = invested[address(msg.sender)] + (invested[address(msg.sender)] * stor17) - sub_ecb7cb1b[address(msg.sender)] + ((99 * invested[address(msg.sender)] * stor17) - (99 * sub_ecb7cb1b[address(msg.sender)]) / 100)
                                                                else:
                                                                    sub_ecb7cb1b[address(msg.sender)] = (invested[address(msg.sender)] * stor17) + ((99 * invested[address(msg.sender)] * stor17) - (99 * sub_ecb7cb1b[address(msg.sender)]) / 100)
                                                                    call msg.sender with:
                                                                       value (invested[address(msg.sender)] * stor17) - sub_ecb7cb1b[address(msg.sender)] + ((99 * invested[address(msg.sender)] * stor17) - (99 * sub_ecb7cb1b[address(msg.sender)]) / 100) wei
                                                                         gas 2300 * is_zero(value) wei
                                                                    if not ext_call.success:
                                                                        revert with ext_call.return_data[0 len return_data.size]
                                                                    else:
                                                    else:
                                                        require launchtime <= block.timestamp
                                                        if sub_ce138e64:
                                                            require sub_ce138e64
                                                            require sub_ce138e64 * invested[address(msg.sender)] / sub_ce138e64 == invested[address(msg.sender)]
                                                            require (invested[address(msg.sender)] * stor17) - sub_ecb7cb1b[address(msg.sender)] > 0
                                                            require block.timestamp - launchtime >= 360 * 24 * 3600
                                                            lastInvest[address(msg.sender)] = block.timestamp
                                                            lastWithdraw[address(msg.sender)] = block.timestamp
                                                            if sub_ecb7cb1b[address(msg.sender)] >= invested[address(msg.sender)] * stor17:
                                                            else:
                                                                if (invested[address(msg.sender)] * stor17) - sub_ecb7cb1b[address(msg.sender)] >= sub_ce138e64 * invested[address(msg.sender)] / 100:
                                                                    require sub_ce138e64 * invested[address(msg.sender)] / 100 <= (invested[address(msg.sender)] * stor17) - sub_ecb7cb1b[address(msg.sender)]
                                                                    sub_ecb7cb1b[address(msg.sender)] = invested[address(msg.sender)] * stor17
                                                                    call msg.sender with:
                                                                       value sub_ce138e64 * invested[address(msg.sender)] / 100 wei
                                                                         gas 2300 * is_zero(value) wei
                                                                    if not ext_call.success:
                                                                        revert with ext_call.return_data[0 len return_data.size]
                                                                    else:
                                                                        require invested[address(msg.sender)] + (invested[address(msg.sender)] * stor17) - sub_ecb7cb1b[address(msg.sender)] - (sub_ce138e64 * invested[address(msg.sender)] / 100) >= invested[address(msg.sender)]
                                                                        invested[address(msg.sender)] = invested[address(msg.sender)] + (invested[address(msg.sender)] * stor17) - sub_ecb7cb1b[address(msg.sender)] - (sub_ce138e64 * invested[address(msg.sender)] / 100)
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
                                                                       value (invested[address(msg.sender)] * stor17) - sub_ecb7cb1b[address(msg.sender)] wei
                                                                         gas 2300 * is_zero(value) wei
                                                                    if not ext_call.success:
                                                                        revert with ext_call.return_data[0 len return_data.size]
                                                                    else:
                                                        else:
                                                            require (invested[address(msg.sender)] * stor17) - sub_ecb7cb1b[address(msg.sender)] > 0
                                                            require block.timestamp - launchtime >= 360 * 24 * 3600
                                                            lastInvest[address(msg.sender)] = block.timestamp
                                                            lastWithdraw[address(msg.sender)] = block.timestamp
                                                            if sub_ecb7cb1b[address(msg.sender)] >= invested[address(msg.sender)] * stor17:
                                                            else:
                                                                if (invested[address(msg.sender)] * stor17) - sub_ecb7cb1b[address(msg.sender)] >= 0:
                                                                    require 0 <= (invested[address(msg.sender)] * stor17) - sub_ecb7cb1b[address(msg.sender)]
                                                                    sub_ecb7cb1b[address(msg.sender)] = invested[address(msg.sender)] * stor17
                                                                    call msg.sender with:
                                                                         gas 2300 wei
                                                                    if not ext_call.success:
                                                                        revert with ext_call.return_data[0 len return_data.size]
                                                                    else:
                                                                        require invested[address(msg.sender)] + (invested[address(msg.sender)] * stor17) - sub_ecb7cb1b[address(msg.sender)] >= invested[address(msg.sender)]
                                                                        invested[address(msg.sender)] = invested[address(msg.sender)] + (invested[address(msg.sender)] * stor17) - sub_ecb7cb1b[address(msg.sender)]
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
                                                                       value (invested[address(msg.sender)] * stor17) - sub_ecb7cb1b[address(msg.sender)] wei
                                                                         gas 2300 * is_zero(value) wei
                                                                    if not ext_call.success:
                                                                        revert with ext_call.return_data[0 len return_data.size]
                                                                    else:
                                            else:
                                                if (invested[address(msg.sender)] * stor17) - sub_ecb7cb1b[address(msg.sender)]:
                                                    require (invested[address(msg.sender)] * stor17) - sub_ecb7cb1b[address(msg.sender)]
                                                    require (60 * invested[address(msg.sender)] * stor17) - (60 * sub_ecb7cb1b[address(msg.sender)]) / (invested[address(msg.sender)] * stor17) - sub_ecb7cb1b[address(msg.sender)] == 60
                                                    require (60 * invested[address(msg.sender)] * stor17) - (60 * sub_ecb7cb1b[address(msg.sender)]) / 100 >= 0
                                                    require launchtime <= block.timestamp
                                                    if sub_ce138e64:
                                                        require sub_ce138e64
                                                        require sub_ce138e64 * invested[address(msg.sender)] / sub_ce138e64 == invested[address(msg.sender)]
                                                        require (invested[address(msg.sender)] * stor17) - sub_ecb7cb1b[address(msg.sender)] + ((60 * invested[address(msg.sender)] * stor17) - (60 * sub_ecb7cb1b[address(msg.sender)]) / 100) > 0
                                                        require block.timestamp - launchtime >= 360 * 24 * 3600
                                                        lastInvest[address(msg.sender)] = block.timestamp
                                                        lastWithdraw[address(msg.sender)] = block.timestamp
                                                        if (60 * invested[address(msg.sender)] * stor17) - (60 * sub_ecb7cb1b[address(msg.sender)]) / 100 >= 0:
                                                            if sub_ecb7cb1b[address(msg.sender)] >= invested[address(msg.sender)] * stor17:
                                                            else:
                                                                if (invested[address(msg.sender)] * stor17) - sub_ecb7cb1b[address(msg.sender)] >= sub_ce138e64 * invested[address(msg.sender)] / 100:
                                                                    require sub_ce138e64 * invested[address(msg.sender)] / 100 <= (invested[address(msg.sender)] * stor17) - sub_ecb7cb1b[address(msg.sender)]
                                                                    sub_ecb7cb1b[address(msg.sender)] = invested[address(msg.sender)] * stor17
                                                                    call msg.sender with:
                                                                       value sub_ce138e64 * invested[address(msg.sender)] / 100 wei
                                                                         gas 2300 * is_zero(value) wei
                                                                    if not ext_call.success:
                                                                        revert with ext_call.return_data[0 len return_data.size]
                                                                    else:
                                                                        require invested[address(msg.sender)] + (invested[address(msg.sender)] * stor17) - sub_ecb7cb1b[address(msg.sender)] - (sub_ce138e64 * invested[address(msg.sender)] / 100) >= invested[address(msg.sender)]
                                                                        invested[address(msg.sender)] = invested[address(msg.sender)] + (invested[address(msg.sender)] * stor17) - sub_ecb7cb1b[address(msg.sender)] - (sub_ce138e64 * invested[address(msg.sender)] / 100)
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
                                                                       value (invested[address(msg.sender)] * stor17) - sub_ecb7cb1b[address(msg.sender)] wei
                                                                         gas 2300 * is_zero(value) wei
                                                                    if not ext_call.success:
                                                                        revert with ext_call.return_data[0 len return_data.size]
                                                                    else:
                                                        else:
                                                            if (invested[address(msg.sender)] * stor17) - sub_ecb7cb1b[address(msg.sender)] + ((60 * invested[address(msg.sender)] * stor17) - (60 * sub_ecb7cb1b[address(msg.sender)]) / 100) >= sub_ce138e64 * invested[address(msg.sender)] / 100:
                                                                require sub_ce138e64 * invested[address(msg.sender)] / 100 <= (invested[address(msg.sender)] * stor17) - sub_ecb7cb1b[address(msg.sender)] + ((60 * invested[address(msg.sender)] * stor17) - (60 * sub_ecb7cb1b[address(msg.sender)]) / 100)
                                                                sub_ecb7cb1b[address(msg.sender)] = (invested[address(msg.sender)] * stor17) + ((60 * invested[address(msg.sender)] * stor17) - (60 * sub_ecb7cb1b[address(msg.sender)]) / 100)
                                                                call msg.sender with:
                                                                   value sub_ce138e64 * invested[address(msg.sender)] / 100 wei
                                                                     gas 2300 * is_zero(value) wei
                                                                if not ext_call.success:
                                                                    revert with ext_call.return_data[0 len return_data.size]
                                                                else:
                                                                    require invested[address(msg.sender)] + (invested[address(msg.sender)] * stor17) - sub_ecb7cb1b[address(msg.sender)] + ((60 * invested[address(msg.sender)] * stor17) - (60 * sub_ecb7cb1b[address(msg.sender)]) / 100) - (sub_ce138e64 * invested[address(msg.sender)] / 100) >= invested[address(msg.sender)]
                                                                    invested[address(msg.sender)] = invested[address(msg.sender)] + (invested[address(msg.sender)] * stor17) - sub_ecb7cb1b[address(msg.sender)] + ((60 * invested[address(msg.sender)] * stor17) - (60 * sub_ecb7cb1b[address(msg.sender)]) / 100) - (sub_ce138e64 * invested[address(msg.sender)] / 100)
                                                            else:
                                                                sub_ecb7cb1b[address(msg.sender)] = (invested[address(msg.sender)] * stor17) + ((60 * invested[address(msg.sender)] * stor17) - (60 * sub_ecb7cb1b[address(msg.sender)]) / 100)
                                                                call msg.sender with:
                                                                   value (invested[address(msg.sender)] * stor17) - sub_ecb7cb1b[address(msg.sender)] + ((60 * invested[address(msg.sender)] * stor17) - (60 * sub_ecb7cb1b[address(msg.sender)]) / 100) wei
                                                                     gas 2300 * is_zero(value) wei
                                                                if not ext_call.success:
                                                                    revert with ext_call.return_data[0 len return_data.size]
                                                                else:
                                                    else:
                                                        require (invested[address(msg.sender)] * stor17) - sub_ecb7cb1b[address(msg.sender)] + ((60 * invested[address(msg.sender)] * stor17) - (60 * sub_ecb7cb1b[address(msg.sender)]) / 100) > 0
                                                        require block.timestamp - launchtime >= 360 * 24 * 3600
                                                        lastInvest[address(msg.sender)] = block.timestamp
                                                        lastWithdraw[address(msg.sender)] = block.timestamp
                                                        if (60 * invested[address(msg.sender)] * stor17) - (60 * sub_ecb7cb1b[address(msg.sender)]) / 100 >= 0:
                                                            if sub_ecb7cb1b[address(msg.sender)] >= invested[address(msg.sender)] * stor17:
                                                            else:
                                                                if (invested[address(msg.sender)] * stor17) - sub_ecb7cb1b[address(msg.sender)] >= 0:
                                                                    require 0 <= (invested[address(msg.sender)] * stor17) - sub_ecb7cb1b[address(msg.sender)]
                                                                    sub_ecb7cb1b[address(msg.sender)] = invested[address(msg.sender)] * stor17
                                                                    call msg.sender with:
                                                                         gas 2300 wei
                                                                    if not ext_call.success:
                                                                        revert with ext_call.return_data[0 len return_data.size]
                                                                    else:
                                                                        require invested[address(msg.sender)] + (invested[address(msg.sender)] * stor17) - sub_ecb7cb1b[address(msg.sender)] >= invested[address(msg.sender)]
                                                                        invested[address(msg.sender)] = invested[address(msg.sender)] + (invested[address(msg.sender)] * stor17) - sub_ecb7cb1b[address(msg.sender)]
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
                                                                       value (invested[address(msg.sender)] * stor17) - sub_ecb7cb1b[address(msg.sender)] wei
                                                                         gas 2300 * is_zero(value) wei
                                                                    if not ext_call.success:
                                                                        revert with ext_call.return_data[0 len return_data.size]
                                                                    else:
                                                        else:
                                                            if (invested[address(msg.sender)] * stor17) - sub_ecb7cb1b[address(msg.sender)] + ((60 * invested[address(msg.sender)] * stor17) - (60 * sub_ecb7cb1b[address(msg.sender)]) / 100) >= 0:
                                                                require 0 <= (invested[address(msg.sender)] * stor17) - sub_ecb7cb1b[address(msg.sender)] + ((60 * invested[address(msg.sender)] * stor17) - (60 * sub_ecb7cb1b[address(msg.sender)]) / 100)
                                                                sub_ecb7cb1b[address(msg.sender)] = (invested[address(msg.sender)] * stor17) + ((60 * invested[address(msg.sender)] * stor17) - (60 * sub_ecb7cb1b[address(msg.sender)]) / 100)
                                                                call msg.sender with:
                                                                     gas 2300 wei
                                                                if not ext_call.success:
                                                                    revert with ext_call.return_data[0 len return_data.size]
                                                                else:
                                                                    require invested[address(msg.sender)] + (invested[address(msg.sender)] * stor17) - sub_ecb7cb1b[address(msg.sender)] + ((60 * invested[address(msg.sender)] * stor17) - (60 * sub_ecb7cb1b[address(msg.sender)]) / 100) >= invested[address(msg.sender)]
                                                                    invested[address(msg.sender)] = invested[address(msg.sender)] + (invested[address(msg.sender)] * stor17) - sub_ecb7cb1b[address(msg.sender)] + ((60 * invested[address(msg.sender)] * stor17) - (60 * sub_ecb7cb1b[address(msg.sender)]) / 100)
                                                            else:
                                                                sub_ecb7cb1b[address(msg.sender)] = (invested[address(msg.sender)] * stor17) + ((60 * invested[address(msg.sender)] * stor17) - (60 * sub_ecb7cb1b[address(msg.sender)]) / 100)
                                                                call msg.sender with:
                                                                   value (invested[address(msg.sender)] * stor17) - sub_ecb7cb1b[address(msg.sender)] + ((60 * invested[address(msg.sender)] * stor17) - (60 * sub_ecb7cb1b[address(msg.sender)]) / 100) wei
                                                                     gas 2300 * is_zero(value) wei
                                                                if not ext_call.success:
                                                                    revert with ext_call.return_data[0 len return_data.size]
                                                                else:
                                                else:
                                                    require launchtime <= block.timestamp
                                                    if sub_ce138e64:
                                                        require sub_ce138e64
                                                        require sub_ce138e64 * invested[address(msg.sender)] / sub_ce138e64 == invested[address(msg.sender)]
                                                        require (invested[address(msg.sender)] * stor17) - sub_ecb7cb1b[address(msg.sender)] > 0
                                                        require block.timestamp - launchtime >= 360 * 24 * 3600
                                                        lastInvest[address(msg.sender)] = block.timestamp
                                                        lastWithdraw[address(msg.sender)] = block.timestamp
                                                        if sub_ecb7cb1b[address(msg.sender)] >= invested[address(msg.sender)] * stor17:
                                                        else:
                                                            if (invested[address(msg.sender)] * stor17) - sub_ecb7cb1b[address(msg.sender)] >= sub_ce138e64 * invested[address(msg.sender)] / 100:
                                                                require sub_ce138e64 * invested[address(msg.sender)] / 100 <= (invested[address(msg.sender)] * stor17) - sub_ecb7cb1b[address(msg.sender)]
                                                                sub_ecb7cb1b[address(msg.sender)] = invested[address(msg.sender)] * stor17
                                                                call msg.sender with:
                                                                   value sub_ce138e64 * invested[address(msg.sender)] / 100 wei
                                                                     gas 2300 * is_zero(value) wei
                                                                if not ext_call.success:
                                                                    revert with ext_call.return_data[0 len return_data.size]
                                                                else:
                                                                    require invested[address(msg.sender)] + (invested[address(msg.sender)] * stor17) - sub_ecb7cb1b[address(msg.sender)] - (sub_ce138e64 * invested[address(msg.sender)] / 100) >= invested[address(msg.sender)]
                                                                    invested[address(msg.sender)] = invested[address(msg.sender)] + (invested[address(msg.sender)] * stor17) - sub_ecb7cb1b[address(msg.sender)] - (sub_ce138e64 * invested[address(msg.sender)] / 100)
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
                                                                   value (invested[address(msg.sender)] * stor17) - sub_ecb7cb1b[address(msg.sender)] wei
                                                                     gas 2300 * is_zero(value) wei
                                                                if not ext_call.success:
                                                                    revert with ext_call.return_data[0 len return_data.size]
                                                                else:
                                                    else:
                                                        require (invested[address(msg.sender)] * stor17) - sub_ecb7cb1b[address(msg.sender)] > 0
                                                        require block.timestamp - launchtime >= 360 * 24 * 3600
                                                        lastInvest[address(msg.sender)] = block.timestamp
                                                        lastWithdraw[address(msg.sender)] = block.timestamp
                                                        if sub_ecb7cb1b[address(msg.sender)] >= invested[address(msg.sender)] * stor17:
                                                        else:
                                                            if (invested[address(msg.sender)] * stor17) - sub_ecb7cb1b[address(msg.sender)] >= 0:
                                                                require 0 <= (invested[address(msg.sender)] * stor17) - sub_ecb7cb1b[address(msg.sender)]
                                                                sub_ecb7cb1b[address(msg.sender)] = invested[address(msg.sender)] * stor17
                                                                call msg.sender with:
                                                                     gas 2300 wei
                                                                if not ext_call.success:
                                                                    revert with ext_call.return_data[0 len return_data.size]
                                                                else:
                                                                    require invested[address(msg.sender)] + (invested[address(msg.sender)] * stor17) - sub_ecb7cb1b[address(msg.sender)] >= invested[address(msg.sender)]
                                                                    invested[address(msg.sender)] = invested[address(msg.sender)] + (invested[address(msg.sender)] * stor17) - sub_ecb7cb1b[address(msg.sender)]
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
                                                                   value (invested[address(msg.sender)] * stor17) - sub_ecb7cb1b[address(msg.sender)] wei
                                                                     gas 2300 * is_zero(value) wei
                                                                if not ext_call.success:
                                                                    revert with ext_call.return_data[0 len return_data.size]
                                                                else:
                                    else:
                                        if (invested[address(msg.sender)] * stor17) - sub_ecb7cb1b[address(msg.sender)]:
                                            require (invested[address(msg.sender)] * stor17) - sub_ecb7cb1b[address(msg.sender)]
                                            require (40 * invested[address(msg.sender)] * stor17) - (40 * sub_ecb7cb1b[address(msg.sender)]) / (invested[address(msg.sender)] * stor17) - sub_ecb7cb1b[address(msg.sender)] == 40
                                            require (40 * invested[address(msg.sender)] * stor17) - (40 * sub_ecb7cb1b[address(msg.sender)]) / 100 >= 0
                                            require launchtime <= block.timestamp
                                            if sub_ce138e64:
                                                require sub_ce138e64
                                                require sub_ce138e64 * invested[address(msg.sender)] / sub_ce138e64 == invested[address(msg.sender)]
                                                require (invested[address(msg.sender)] * stor17) - sub_ecb7cb1b[address(msg.sender)] + ((40 * invested[address(msg.sender)] * stor17) - (40 * sub_ecb7cb1b[address(msg.sender)]) / 100) > 0
                                                require block.timestamp - launchtime >= 360 * 24 * 3600
                                                lastInvest[address(msg.sender)] = block.timestamp
                                                lastWithdraw[address(msg.sender)] = block.timestamp
                                                if (40 * invested[address(msg.sender)] * stor17) - (40 * sub_ecb7cb1b[address(msg.sender)]) / 100 >= 0:
                                                    if sub_ecb7cb1b[address(msg.sender)] >= invested[address(msg.sender)] * stor17:
                                                    else:
                                                        if (invested[address(msg.sender)] * stor17) - sub_ecb7cb1b[address(msg.sender)] >= sub_ce138e64 * invested[address(msg.sender)] / 100:
                                                            require sub_ce138e64 * invested[address(msg.sender)] / 100 <= (invested[address(msg.sender)] * stor17) - sub_ecb7cb1b[address(msg.sender)]
                                                            sub_ecb7cb1b[address(msg.sender)] = invested[address(msg.sender)] * stor17
                                                            call msg.sender with:
                                                               value sub_ce138e64 * invested[address(msg.sender)] / 100 wei
                                                                 gas 2300 * is_zero(value) wei
                                                            if not ext_call.success:
                                                                revert with ext_call.return_data[0 len return_data.size]
                                                            else:
                                                                require invested[address(msg.sender)] + (invested[address(msg.sender)] * stor17) - sub_ecb7cb1b[address(msg.sender)] - (sub_ce138e64 * invested[address(msg.sender)] / 100) >= invested[address(msg.sender)]
                                                                invested[address(msg.sender)] = invested[address(msg.sender)] + (invested[address(msg.sender)] * stor17) - sub_ecb7cb1b[address(msg.sender)] - (sub_ce138e64 * invested[address(msg.sender)] / 100)
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
                                                               value (invested[address(msg.sender)] * stor17) - sub_ecb7cb1b[address(msg.sender)] wei
                                                                 gas 2300 * is_zero(value) wei
                                                            if not ext_call.success:
                                                                revert with ext_call.return_data[0 len return_data.size]
                                                            else:
                                                else:
                                                    if (invested[address(msg.sender)] * stor17) - sub_ecb7cb1b[address(msg.sender)] + ((40 * invested[address(msg.sender)] * stor17) - (40 * sub_ecb7cb1b[address(msg.sender)]) / 100) >= sub_ce138e64 * invested[address(msg.sender)] / 100:
                                                        require sub_ce138e64 * invested[address(msg.sender)] / 100 <= (invested[address(msg.sender)] * stor17) - sub_ecb7cb1b[address(msg.sender)] + ((40 * invested[address(msg.sender)] * stor17) - (40 * sub_ecb7cb1b[address(msg.sender)]) / 100)
                                                        sub_ecb7cb1b[address(msg.sender)] = (invested[address(msg.sender)] * stor17) + ((40 * invested[address(msg.sender)] * stor17) - (40 * sub_ecb7cb1b[address(msg.sender)]) / 100)
                                                        call msg.sender with:
                                                           value sub_ce138e64 * invested[address(msg.sender)] / 100 wei
                                                             gas 2300 * is_zero(value) wei
                                                        if not ext_call.success:
                                                            revert with ext_call.return_data[0 len return_data.size]
                                                        else:
                                                            require invested[address(msg.sender)] + (invested[address(msg.sender)] * stor17) - sub_ecb7cb1b[address(msg.sender)] + ((40 * invested[address(msg.sender)] * stor17) - (40 * sub_ecb7cb1b[address(msg.sender)]) / 100) - (sub_ce138e64 * invested[address(msg.sender)] / 100) >= invested[address(msg.sender)]
                                                            invested[address(msg.sender)] = invested[address(msg.sender)] + (invested[address(msg.sender)] * stor17) - sub_ecb7cb1b[address(msg.sender)] + ((40 * invested[address(msg.sender)] * stor17) - (40 * sub_ecb7cb1b[address(msg.sender)]) / 100) - (sub_ce138e64 * invested[address(msg.sender)] / 100)
                                                    else:
                                                        sub_ecb7cb1b[address(msg.sender)] = (invested[address(msg.sender)] * stor17) + ((40 * invested[address(msg.sender)] * stor17) - (40 * sub_ecb7cb1b[address(msg.sender)]) / 100)
                                                        call msg.sender with:
                                                           value (invested[address(msg.sender)] * stor17) - sub_ecb7cb1b[address(msg.sender)] + ((40 * invested[address(msg.sender)] * stor17) - (40 * sub_ecb7cb1b[address(msg.sender)]) / 100) wei
                                                             gas 2300 * is_zero(value) wei
                                                        if not ext_call.success:
                                                            revert with ext_call.return_data[0 len return_data.size]
                                                        else:
                                            else:
                                                require (invested[address(msg.sender)] * stor17) - sub_ecb7cb1b[address(msg.sender)] + ((40 * invested[address(msg.sender)] * stor17) - (40 * sub_ecb7cb1b[address(msg.sender)]) / 100) > 0
                                                require block.timestamp - launchtime >= 360 * 24 * 3600
                                                lastInvest[address(msg.sender)] = block.timestamp
                                                lastWithdraw[address(msg.sender)] = block.timestamp
                                                if (40 * invested[address(msg.sender)] * stor17) - (40 * sub_ecb7cb1b[address(msg.sender)]) / 100 >= 0:
                                                    if sub_ecb7cb1b[address(msg.sender)] >= invested[address(msg.sender)] * stor17:
                                                    else:
                                                        if (invested[address(msg.sender)] * stor17) - sub_ecb7cb1b[address(msg.sender)] >= 0:
                                                            require 0 <= (invested[address(msg.sender)] * stor17) - sub_ecb7cb1b[address(msg.sender)]
                                                            sub_ecb7cb1b[address(msg.sender)] = invested[address(msg.sender)] * stor17
                                                            call msg.sender with:
                                                                 gas 2300 wei
                                                            if not ext_call.success:
                                                                revert with ext_call.return_data[0 len return_data.size]
                                                            else:
                                                                require invested[address(msg.sender)] + (invested[address(msg.sender)] * stor17) - sub_ecb7cb1b[address(msg.sender)] >= invested[address(msg.sender)]
                                                                invested[address(msg.sender)] = invested[address(msg.sender)] + (invested[address(msg.sender)] * stor17) - sub_ecb7cb1b[address(msg.sender)]
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
                                                               value (invested[address(msg.sender)] * stor17) - sub_ecb7cb1b[address(msg.sender)] wei
                                                                 gas 2300 * is_zero(value) wei
                                                            if not ext_call.success:
                                                                revert with ext_call.return_data[0 len return_data.size]
                                                            else:
                                                else:
                                                    if (invested[address(msg.sender)] * stor17) - sub_ecb7cb1b[address(msg.sender)] + ((40 * invested[address(msg.sender)] * stor17) - (40 * sub_ecb7cb1b[address(msg.sender)]) / 100) >= 0:
                                                        require 0 <= (invested[address(msg.sender)] * stor17) - sub_ecb7cb1b[address(msg.sender)] + ((40 * invested[address(msg.sender)] * stor17) - (40 * sub_ecb7cb1b[address(msg.sender)]) / 100)
                                                        sub_ecb7cb1b[address(msg.sender)] = (invested[address(msg.sender)] * stor17) + ((40 * invested[address(msg.sender)] * stor17) - (40 * sub_ecb7cb1b[address(msg.sender)]) / 100)
                                                        call msg.sender with:
                                                             gas 2300 wei
                                                        if not ext_call.success:
                                                            revert with ext_call.return_data[0 len return_data.size]
                                                        else:
                                                            require invested[address(msg.sender)] + (invested[address(msg.sender)] * stor17) - sub_ecb7cb1b[address(msg.sender)] + ((40 * invested[address(msg.sender)] * stor17) - (40 * sub_ecb7cb1b[address(msg.sender)]) / 100) >= invested[address(msg.sender)]
                                                            invested[address(msg.sender)] = invested[address(msg.sender)] + (invested[address(msg.sender)] * stor17) - sub_ecb7cb1b[address(msg.sender)] + ((40 * invested[address(msg.sender)] * stor17) - (40 * sub_ecb7cb1b[address(msg.sender)]) / 100)
                                                    else:
                                                        sub_ecb7cb1b[address(msg.sender)] = (invested[address(msg.sender)] * stor17) + ((40 * invested[address(msg.sender)] * stor17) - (40 * sub_ecb7cb1b[address(msg.sender)]) / 100)
                                                        call msg.sender with:
                                                           value (invested[address(msg.sender)] * stor17) - sub_ecb7cb1b[address(msg.sender)] + ((40 * invested[address(msg.sender)] * stor17) - (40 * sub_ecb7cb1b[address(msg.sender)]) / 100) wei
                                                             gas 2300 * is_zero(value) wei
                                                        if not ext_call.success:
                                                            revert with ext_call.return_data[0 len return_data.size]
                                                        else:
                                        else:
                                            require launchtime <= block.timestamp
                                            if sub_ce138e64:
                                                require sub_ce138e64
                                                require sub_ce138e64 * invested[address(msg.sender)] / sub_ce138e64 == invested[address(msg.sender)]
                                                require (invested[address(msg.sender)] * stor17) - sub_ecb7cb1b[address(msg.sender)] > 0
                                                require block.timestamp - launchtime >= 360 * 24 * 3600
                                                lastInvest[address(msg.sender)] = block.timestamp
                                                lastWithdraw[address(msg.sender)] = block.timestamp
                                                if sub_ecb7cb1b[address(msg.sender)] >= invested[address(msg.sender)] * stor17:
                                                else:
                                                    if (invested[address(msg.sender)] * stor17) - sub_ecb7cb1b[address(msg.sender)] >= sub_ce138e64 * invested[address(msg.sender)] / 100:
                                                        require sub_ce138e64 * invested[address(msg.sender)] / 100 <= (invested[address(msg.sender)] * stor17) - sub_ecb7cb1b[address(msg.sender)]
                                                        sub_ecb7cb1b[address(msg.sender)] = invested[address(msg.sender)] * stor17
                                                        call msg.sender with:
                                                           value sub_ce138e64 * invested[address(msg.sender)] / 100 wei
                                                             gas 2300 * is_zero(value) wei
                                                        if not ext_call.success:
                                                            revert with ext_call.return_data[0 len return_data.size]
                                                        else:
                                                            require invested[address(msg.sender)] + (invested[address(msg.sender)] * stor17) - sub_ecb7cb1b[address(msg.sender)] - (sub_ce138e64 * invested[address(msg.sender)] / 100) >= invested[address(msg.sender)]
                                                            invested[address(msg.sender)] = invested[address(msg.sender)] + (invested[address(msg.sender)] * stor17) - sub_ecb7cb1b[address(msg.sender)] - (sub_ce138e64 * invested[address(msg.sender)] / 100)
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
                                                           value (invested[address(msg.sender)] * stor17) - sub_ecb7cb1b[address(msg.sender)] wei
                                                             gas 2300 * is_zero(value) wei
                                                        if not ext_call.success:
                                                            revert with ext_call.return_data[0 len return_data.size]
                                                        else:
                                            else:
                                                require (invested[address(msg.sender)] * stor17) - sub_ecb7cb1b[address(msg.sender)] > 0
                                                require block.timestamp - launchtime >= 360 * 24 * 3600
                                                lastInvest[address(msg.sender)] = block.timestamp
                                                lastWithdraw[address(msg.sender)] = block.timestamp
                                                if sub_ecb7cb1b[address(msg.sender)] >= invested[address(msg.sender)] * stor17:
                                                else:
                                                    if (invested[address(msg.sender)] * stor17) - sub_ecb7cb1b[address(msg.sender)] >= 0:
                                                        require 0 <= (invested[address(msg.sender)] * stor17) - sub_ecb7cb1b[address(msg.sender)]
                                                        sub_ecb7cb1b[address(msg.sender)] = invested[address(msg.sender)] * stor17
                                                        call msg.sender with:
                                                             gas 2300 wei
                                                        if not ext_call.success:
                                                            revert with ext_call.return_data[0 len return_data.size]
                                                        else:
                                                            require invested[address(msg.sender)] + (invested[address(msg.sender)] * stor17) - sub_ecb7cb1b[address(msg.sender)] >= invested[address(msg.sender)]
                                                            invested[address(msg.sender)] = invested[address(msg.sender)] + (invested[address(msg.sender)] * stor17) - sub_ecb7cb1b[address(msg.sender)]
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
                                                           value (invested[address(msg.sender)] * stor17) - sub_ecb7cb1b[address(msg.sender)] wei
                                                             gas 2300 * is_zero(value) wei
                                                        if not ext_call.success:
                                                            revert with ext_call.return_data[0 len return_data.size]
                                                        else:
                            else:
                                if (invested[address(msg.sender)] * stor17) - sub_ecb7cb1b[address(msg.sender)]:
                                    require (invested[address(msg.sender)] * stor17) - sub_ecb7cb1b[address(msg.sender)]
                                    require (20 * invested[address(msg.sender)] * stor17) - (20 * sub_ecb7cb1b[address(msg.sender)]) / (invested[address(msg.sender)] * stor17) - sub_ecb7cb1b[address(msg.sender)] == 20
                                    require (20 * invested[address(msg.sender)] * stor17) - (20 * sub_ecb7cb1b[address(msg.sender)]) / 100 >= 0
                                    require launchtime <= block.timestamp
                                    if sub_ce138e64:
                                        require sub_ce138e64
                                        require sub_ce138e64 * invested[address(msg.sender)] / sub_ce138e64 == invested[address(msg.sender)]
                                        require (invested[address(msg.sender)] * stor17) - sub_ecb7cb1b[address(msg.sender)] + ((20 * invested[address(msg.sender)] * stor17) - (20 * sub_ecb7cb1b[address(msg.sender)]) / 100) > 0
                                        require block.timestamp - launchtime >= 360 * 24 * 3600
                                        lastInvest[address(msg.sender)] = block.timestamp
                                        lastWithdraw[address(msg.sender)] = block.timestamp
                                        if (20 * invested[address(msg.sender)] * stor17) - (20 * sub_ecb7cb1b[address(msg.sender)]) / 100 >= 0:
                                            if sub_ecb7cb1b[address(msg.sender)] >= invested[address(msg.sender)] * stor17:
                                            else:
                                                if (invested[address(msg.sender)] * stor17) - sub_ecb7cb1b[address(msg.sender)] >= sub_ce138e64 * invested[address(msg.sender)] / 100:
                                                    require sub_ce138e64 * invested[address(msg.sender)] / 100 <= (invested[address(msg.sender)] * stor17) - sub_ecb7cb1b[address(msg.sender)]
                                                    sub_ecb7cb1b[address(msg.sender)] = invested[address(msg.sender)] * stor17
                                                    call msg.sender with:
                                                       value sub_ce138e64 * invested[address(msg.sender)] / 100 wei
                                                         gas 2300 * is_zero(value) wei
                                                    if not ext_call.success:
                                                        revert with ext_call.return_data[0 len return_data.size]
                                                    else:
                                                        require invested[address(msg.sender)] + (invested[address(msg.sender)] * stor17) - sub_ecb7cb1b[address(msg.sender)] - (sub_ce138e64 * invested[address(msg.sender)] / 100) >= invested[address(msg.sender)]
                                                        invested[address(msg.sender)] = invested[address(msg.sender)] + (invested[address(msg.sender)] * stor17) - sub_ecb7cb1b[address(msg.sender)] - (sub_ce138e64 * invested[address(msg.sender)] / 100)
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
                                                       value (invested[address(msg.sender)] * stor17) - sub_ecb7cb1b[address(msg.sender)] wei
                                                         gas 2300 * is_zero(value) wei
                                                    if not ext_call.success:
                                                        revert with ext_call.return_data[0 len return_data.size]
                                                    else:
                                        else:
                                            if (invested[address(msg.sender)] * stor17) - sub_ecb7cb1b[address(msg.sender)] + ((20 * invested[address(msg.sender)] * stor17) - (20 * sub_ecb7cb1b[address(msg.sender)]) / 100) >= sub_ce138e64 * invested[address(msg.sender)] / 100:
                                                require sub_ce138e64 * invested[address(msg.sender)] / 100 <= (invested[address(msg.sender)] * stor17) - sub_ecb7cb1b[address(msg.sender)] + ((20 * invested[address(msg.sender)] * stor17) - (20 * sub_ecb7cb1b[address(msg.sender)]) / 100)
                                                sub_ecb7cb1b[address(msg.sender)] = (invested[address(msg.sender)] * stor17) + ((20 * invested[address(msg.sender)] * stor17) - (20 * sub_ecb7cb1b[address(msg.sender)]) / 100)
                                                call msg.sender with:
                                                   value sub_ce138e64 * invested[address(msg.sender)] / 100 wei
                                                     gas 2300 * is_zero(value) wei
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                else:
                                                    require invested[address(msg.sender)] + (invested[address(msg.sender)] * stor17) - sub_ecb7cb1b[address(msg.sender)] + ((20 * invested[address(msg.sender)] * stor17) - (20 * sub_ecb7cb1b[address(msg.sender)]) / 100) - (sub_ce138e64 * invested[address(msg.sender)] / 100) >= invested[address(msg.sender)]
                                                    invested[address(msg.sender)] = invested[address(msg.sender)] + (invested[address(msg.sender)] * stor17) - sub_ecb7cb1b[address(msg.sender)] + ((20 * invested[address(msg.sender)] * stor17) - (20 * sub_ecb7cb1b[address(msg.sender)]) / 100) - (sub_ce138e64 * invested[address(msg.sender)] / 100)
                                            else:
                                                sub_ecb7cb1b[address(msg.sender)] = (invested[address(msg.sender)] * stor17) + ((20 * invested[address(msg.sender)] * stor17) - (20 * sub_ecb7cb1b[address(msg.sender)]) / 100)
                                                call msg.sender with:
                                                   value (invested[address(msg.sender)] * stor17) - sub_ecb7cb1b[address(msg.sender)] + ((20 * invested[address(msg.sender)] * stor17) - (20 * sub_ecb7cb1b[address(msg.sender)]) / 100) wei
                                                     gas 2300 * is_zero(value) wei
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                else:
                                    else:
                                        require (invested[address(msg.sender)] * stor17) - sub_ecb7cb1b[address(msg.sender)] + ((20 * invested[address(msg.sender)] * stor17) - (20 * sub_ecb7cb1b[address(msg.sender)]) / 100) > 0
                                        require block.timestamp - launchtime >= 360 * 24 * 3600
                                        lastInvest[address(msg.sender)] = block.timestamp
                                        lastWithdraw[address(msg.sender)] = block.timestamp
                                        if (20 * invested[address(msg.sender)] * stor17) - (20 * sub_ecb7cb1b[address(msg.sender)]) / 100 >= 0:
                                            if sub_ecb7cb1b[address(msg.sender)] >= invested[address(msg.sender)] * stor17:
                                            else:
                                                if (invested[address(msg.sender)] * stor17) - sub_ecb7cb1b[address(msg.sender)] >= 0:
                                                    require 0 <= (invested[address(msg.sender)] * stor17) - sub_ecb7cb1b[address(msg.sender)]
                                                    sub_ecb7cb1b[address(msg.sender)] = invested[address(msg.sender)] * stor17
                                                    call msg.sender with:
                                                         gas 2300 wei
                                                    if not ext_call.success:
                                                        revert with ext_call.return_data[0 len return_data.size]
                                                    else:
                                                        require invested[address(msg.sender)] + (invested[address(msg.sender)] * stor17) - sub_ecb7cb1b[address(msg.sender)] >= invested[address(msg.sender)]
                                                        invested[address(msg.sender)] = invested[address(msg.sender)] + (invested[address(msg.sender)] * stor17) - sub_ecb7cb1b[address(msg.sender)]
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
                                                       value (invested[address(msg.sender)] * stor17) - sub_ecb7cb1b[address(msg.sender)] wei
                                                         gas 2300 * is_zero(value) wei
                                                    if not ext_call.success:
                                                        revert with ext_call.return_data[0 len return_data.size]
                                                    else:
                                        else:
                                            if (invested[address(msg.sender)] * stor17) - sub_ecb7cb1b[address(msg.sender)] + ((20 * invested[address(msg.sender)] * stor17) - (20 * sub_ecb7cb1b[address(msg.sender)]) / 100) >= 0:
                                                require 0 <= (invested[address(msg.sender)] * stor17) - sub_ecb7cb1b[address(msg.sender)] + ((20 * invested[address(msg.sender)] * stor17) - (20 * sub_ecb7cb1b[address(msg.sender)]) / 100)
                                                sub_ecb7cb1b[address(msg.sender)] = (invested[address(msg.sender)] * stor17) + ((20 * invested[address(msg.sender)] * stor17) - (20 * sub_ecb7cb1b[address(msg.sender)]) / 100)
                                                call msg.sender with:
                                                     gas 2300 wei
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                else:
                                                    require invested[address(msg.sender)] + (invested[address(msg.sender)] * stor17) - sub_ecb7cb1b[address(msg.sender)] + ((20 * invested[address(msg.sender)] * stor17) - (20 * sub_ecb7cb1b[address(msg.sender)]) / 100) >= invested[address(msg.sender)]
                                                    invested[address(msg.sender)] = invested[address(msg.sender)] + (invested[address(msg.sender)] * stor17) - sub_ecb7cb1b[address(msg.sender)] + ((20 * invested[address(msg.sender)] * stor17) - (20 * sub_ecb7cb1b[address(msg.sender)]) / 100)
                                            else:
                                                sub_ecb7cb1b[address(msg.sender)] = (invested[address(msg.sender)] * stor17) + ((20 * invested[address(msg.sender)] * stor17) - (20 * sub_ecb7cb1b[address(msg.sender)]) / 100)
                                                call msg.sender with:
                                                   value (invested[address(msg.sender)] * stor17) - sub_ecb7cb1b[address(msg.sender)] + ((20 * invested[address(msg.sender)] * stor17) - (20 * sub_ecb7cb1b[address(msg.sender)]) / 100) wei
                                                     gas 2300 * is_zero(value) wei
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                else:
                                else:
                                    require launchtime <= block.timestamp
                                    if sub_ce138e64:
                                        require sub_ce138e64
                                        require sub_ce138e64 * invested[address(msg.sender)] / sub_ce138e64 == invested[address(msg.sender)]
                                        require (invested[address(msg.sender)] * stor17) - sub_ecb7cb1b[address(msg.sender)] > 0
                                        require block.timestamp - launchtime >= 360 * 24 * 3600
                                        lastInvest[address(msg.sender)] = block.timestamp
                                        lastWithdraw[address(msg.sender)] = block.timestamp
                                        if sub_ecb7cb1b[address(msg.sender)] >= invested[address(msg.sender)] * stor17:
                                        else:
                                            if (invested[address(msg.sender)] * stor17) - sub_ecb7cb1b[address(msg.sender)] >= sub_ce138e64 * invested[address(msg.sender)] / 100:
                                                require sub_ce138e64 * invested[address(msg.sender)] / 100 <= (invested[address(msg.sender)] * stor17) - sub_ecb7cb1b[address(msg.sender)]
                                                sub_ecb7cb1b[address(msg.sender)] = invested[address(msg.sender)] * stor17
                                                call msg.sender with:
                                                   value sub_ce138e64 * invested[address(msg.sender)] / 100 wei
                                                     gas 2300 * is_zero(value) wei
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                else:
                                                    require invested[address(msg.sender)] + (invested[address(msg.sender)] * stor17) - sub_ecb7cb1b[address(msg.sender)] - (sub_ce138e64 * invested[address(msg.sender)] / 100) >= invested[address(msg.sender)]
                                                    invested[address(msg.sender)] = invested[address(msg.sender)] + (invested[address(msg.sender)] * stor17) - sub_ecb7cb1b[address(msg.sender)] - (sub_ce138e64 * invested[address(msg.sender)] / 100)
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
                                                   value (invested[address(msg.sender)] * stor17) - sub_ecb7cb1b[address(msg.sender)] wei
                                                     gas 2300 * is_zero(value) wei
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                else:
                                    else:
                                        require (invested[address(msg.sender)] * stor17) - sub_ecb7cb1b[address(msg.sender)] > 0
                                        require block.timestamp - launchtime >= 360 * 24 * 3600
                                        lastInvest[address(msg.sender)] = block.timestamp
                                        lastWithdraw[address(msg.sender)] = block.timestamp
                                        if sub_ecb7cb1b[address(msg.sender)] >= invested[address(msg.sender)] * stor17:
                                        else:
                                            if (invested[address(msg.sender)] * stor17) - sub_ecb7cb1b[address(msg.sender)] >= 0:
                                                require 0 <= (invested[address(msg.sender)] * stor17) - sub_ecb7cb1b[address(msg.sender)]
                                                sub_ecb7cb1b[address(msg.sender)] = invested[address(msg.sender)] * stor17
                                                call msg.sender with:
                                                     gas 2300 wei
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                else:
                                                    require invested[address(msg.sender)] + (invested[address(msg.sender)] * stor17) - sub_ecb7cb1b[address(msg.sender)] >= invested[address(msg.sender)]
                                                    invested[address(msg.sender)] = invested[address(msg.sender)] + (invested[address(msg.sender)] * stor17) - sub_ecb7cb1b[address(msg.sender)]
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
                                                   value (invested[address(msg.sender)] * stor17) - sub_ecb7cb1b[address(msg.sender)] wei
                                                     gas 2300 * is_zero(value) wei
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                else:
                    else:
                        require launchtime <= block.timestamp
                        if sub_ce138e64:
                            require sub_ce138e64
                            require sub_ce138e64 * invested[address(msg.sender)] / sub_ce138e64 == invested[address(msg.sender)]
                            require (invested[address(msg.sender)] * stor17) - sub_ecb7cb1b[address(msg.sender)] > 0
                            require block.timestamp - launchtime >= 360 * 24 * 3600
                            lastInvest[address(msg.sender)] = block.timestamp
                            lastWithdraw[address(msg.sender)] = block.timestamp
                            if sub_ecb7cb1b[address(msg.sender)] >= invested[address(msg.sender)] * stor17:
                            else:
                                if (invested[address(msg.sender)] * stor17) - sub_ecb7cb1b[address(msg.sender)] >= sub_ce138e64 * invested[address(msg.sender)] / 100:
                                    require sub_ce138e64 * invested[address(msg.sender)] / 100 <= (invested[address(msg.sender)] * stor17) - sub_ecb7cb1b[address(msg.sender)]
                                    sub_ecb7cb1b[address(msg.sender)] = invested[address(msg.sender)] * stor17
                                    call msg.sender with:
                                       value sub_ce138e64 * invested[address(msg.sender)] / 100 wei
                                         gas 2300 * is_zero(value) wei
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    else:
                                        require invested[address(msg.sender)] + (invested[address(msg.sender)] * stor17) - sub_ecb7cb1b[address(msg.sender)] - (sub_ce138e64 * invested[address(msg.sender)] / 100) >= invested[address(msg.sender)]
                                        invested[address(msg.sender)] = invested[address(msg.sender)] + (invested[address(msg.sender)] * stor17) - sub_ecb7cb1b[address(msg.sender)] - (sub_ce138e64 * invested[address(msg.sender)] / 100)
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
                                       value (invested[address(msg.sender)] * stor17) - sub_ecb7cb1b[address(msg.sender)] wei
                                         gas 2300 * is_zero(value) wei
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    else:
                        else:
                            require (invested[address(msg.sender)] * stor17) - sub_ecb7cb1b[address(msg.sender)] > 0
                            require block.timestamp - launchtime >= 360 * 24 * 3600
                            lastInvest[address(msg.sender)] = block.timestamp
                            lastWithdraw[address(msg.sender)] = block.timestamp
                            if sub_ecb7cb1b[address(msg.sender)] >= invested[address(msg.sender)] * stor17:
                            else:
                                if (invested[address(msg.sender)] * stor17) - sub_ecb7cb1b[address(msg.sender)] >= 0:
                                    require 0 <= (invested[address(msg.sender)] * stor17) - sub_ecb7cb1b[address(msg.sender)]
                                    sub_ecb7cb1b[address(msg.sender)] = invested[address(msg.sender)] * stor17
                                    call msg.sender with:
                                         gas 2300 wei
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    else:
                                        require invested[address(msg.sender)] + (invested[address(msg.sender)] * stor17) - sub_ecb7cb1b[address(msg.sender)] >= invested[address(msg.sender)]
                                        invested[address(msg.sender)] = invested[address(msg.sender)] + (invested[address(msg.sender)] * stor17) - sub_ecb7cb1b[address(msg.sender)]
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
                                       value (invested[address(msg.sender)] * stor17) - sub_ecb7cb1b[address(msg.sender)] wei
                                         gas 2300 * is_zero(value) wei
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    else:
}



}

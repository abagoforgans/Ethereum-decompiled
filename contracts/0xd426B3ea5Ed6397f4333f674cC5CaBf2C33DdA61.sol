contract main {




// =====================  Runtime code  =====================


const rateDecimals = 18

const minContribution = 10^15


uint256 stor0;
address tokenAddress;
address walletAddress;
uint256 rate;
uint256 weiRaised;

function rate() {
    return rate
}

function weiRaised() {
    return weiRaised
}

function wallet() {
    return walletAddress
}

function token() {
    return tokenAddress
}

function getTokenAmount(uint256 arg1) {
    require calldata.size - 4 >= 32
    if rate:
        require rate
        require 2 * rate / rate == 2
        require ext_code.size(tokenAddress)
        staticcall tokenAddress.0x18160ddd with:
                gas gas_remaining wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        else:
            require return_data.size >= 32
            if ext_call.return_data[0]:
                require ext_call.return_data[0]
                require 10^18 * ext_call.return_data[0] / ext_call.return_data[0] == 10^18
                if 10^18 * ext_call.return_data[0]:
                    require 10^18 * ext_call.return_data[0]
                    require 2 * 10^18 * ext_call.return_data[0] / 10^18 * ext_call.return_data[0] == 2
                    require (2 * 10^18 * ext_call.return_data[0]) + 10^18 >= 2 * 10^18 * ext_call.return_data[0]
                    require 2 * rate > 0
                    require 2 * rate
                    if (2 * 10^18 * ext_call.return_data[0]) + 10^18 / 2 * rate:
                        require (2 * 10^18 * ext_call.return_data[0]) + 10^18 / 2 * rate
                        require (2 * 10^18 * ext_call.return_data[0]) + 10^18 / 2 * rate * (2 * 10^18 * ext_call.return_data[0]) + 10^18 / 2 * rate / (2 * 10^18 * ext_call.return_data[0]) + 10^18 / 2 * rate == (2 * 10^18 * ext_call.return_data[0]) + 10^18 / 2 * rate
                        if arg1:
                            require arg1
                            require 10^18 * arg1 / arg1 == 10^18
                            if 10^18 * arg1:
                                require 10^18 * arg1
                                require 4 * 10^18 * arg1 / 10^18 * arg1 == 4
                                require 2 * rate > 0
                                require 2 * rate
                                require ((2 * 10^18 * ext_call.return_data[0]) + 10^18 / 2 * rate * (2 * 10^18 * ext_call.return_data[0]) + 10^18 / 2 * rate / 10^18) + (4 * 10^18 * arg1 / 2 * rate) >= (2 * 10^18 * ext_call.return_data[0]) + 10^18 / 2 * rate * (2 * 10^18 * ext_call.return_data[0]) + 10^18 / 2 * rate / 10^18
                                if ((2 * 10^18 * ext_call.return_data[0]) + 10^18 / 2 * rate * (2 * 10^18 * ext_call.return_data[0]) + 10^18 / 2 * rate / 10^18) + (4 * 10^18 * arg1 / 2 * rate):
                                    require ((2 * 10^18 * ext_call.return_data[0]) + 10^18 / 2 * rate * (2 * 10^18 * ext_call.return_data[0]) + 10^18 / 2 * rate / 10^18) + (4 * 10^18 * arg1 / 2 * rate)
                                    require (10^18 * (2 * 10^18 * ext_call.return_data[0]) + 10^18 / 2 * rate * (2 * 10^18 * ext_call.return_data[0]) + 10^18 / 2 * rate / 10^18) + (10^18 * 4 * 10^18 * arg1 / 2 * rate) / ((2 * 10^18 * ext_call.return_data[0]) + 10^18 / 2 * rate * (2 * 10^18 * ext_call.return_data[0]) + 10^18 / 2 * rate / 10^18) + (4 * 10^18 * arg1 / 2 * rate) == 10^18
                                    s = (10^18 * (2 * 10^18 * ext_call.return_data[0]) + 10^18 / 2 * rate * (2 * 10^18 * ext_call.return_data[0]) + 10^18 / 2 * rate / 10^18) + (10^18 * 4 * 10^18 * arg1 / 2 * rate)
                                    t = (10^18 * (2 * 10^18 * ext_call.return_data[0]) + 10^18 / 2 * rate * (2 * 10^18 * ext_call.return_data[0]) + 10^18 / 2 * rate / 10^18) + (10^18 * 4 * 10^18 * arg1 / 2 * rate) + 1 / 2
                                    while t < s:
                                        require t > 0
                                        require t
                                        require ((10^18 * (2 * 10^18 * ext_call.return_data[0]) + 10^18 / 2 * rate * (2 * 10^18 * ext_call.return_data[0]) + 10^18 / 2 * rate / 10^18) + (10^18 * 4 * 10^18 * arg1 / 2 * rate) / t) + t >= (10^18 * (2 * 10^18 * ext_call.return_data[0]) + 10^18 / 2 * rate * (2 * 10^18 * ext_call.return_data[0]) + 10^18 / 2 * rate / 10^18) + (10^18 * 4 * 10^18 * arg1 / 2 * rate) / t
                                        s = t
                                        t = ((10^18 * (2 * 10^18 * ext_call.return_data[0]) + 10^18 / 2 * rate * (2 * 10^18 * ext_call.return_data[0]) + 10^18 / 2 * rate / 10^18) + (10^18 * 4 * 10^18 * arg1 / 2 * rate) / t) + t / 2
                                        continue 
                                    require (2 * 10^18 * ext_call.return_data[0]) + 10^18 / 2 * rate <= s
                                    if Mask(255, 1, s - ((2 * 10^18 * ext_call.return_data[0]) + 10^18 / 2 * rate)):
                                        require s - ((2 * 10^18 * ext_call.return_data[0]) + 10^18 / 2 * rate) / 2
                                        require s - ((2 * 10^18 * ext_call.return_data[0]) + 10^18 / 2 * rate) / 2 * 2 * rate / s - ((2 * 10^18 * ext_call.return_data[0]) + 10^18 / 2 * rate) / 2 == 2 * rate
                                        return (s - ((2 * 10^18 * ext_call.return_data[0]) + 10^18 / 2 * rate) / 2 * 2 * rate / 10^18)
                                    else:
                                        return 0
                                else:
                                    require (2 * 10^18 * ext_call.return_data[0]) + 10^18 / 2 * rate <= 0
                                    if Mask(255, 1, -(2 * 10^18 * ext_call.return_data[0]) + 10^18 / 2 * rate):
                                        require -(2 * 10^18 * ext_call.return_data[0]) + 10^18 / 2 * rate / 2
                                        require -(2 * 10^18 * ext_call.return_data[0]) + 10^18 / 2 * rate / 2 * 2 * rate / -(2 * 10^18 * ext_call.return_data[0]) + 10^18 / 2 * rate / 2 == 2 * rate
                                        return (-(2 * 10^18 * ext_call.return_data[0]) + 10^18 / 2 * rate / 2 * 2 * rate / 10^18)
                                    else:
                                        return 0
                            else:
                                require 2 * rate > 0
                                require 2 * rate
                                require ((2 * 10^18 * ext_call.return_data[0]) + 10^18 / 2 * rate * (2 * 10^18 * ext_call.return_data[0]) + 10^18 / 2 * rate / 10^18) + (0 / 2 * rate) >= (2 * 10^18 * ext_call.return_data[0]) + 10^18 / 2 * rate * (2 * 10^18 * ext_call.return_data[0]) + 10^18 / 2 * rate / 10^18
                                if ((2 * 10^18 * ext_call.return_data[0]) + 10^18 / 2 * rate * (2 * 10^18 * ext_call.return_data[0]) + 10^18 / 2 * rate / 10^18) + (0 / 2 * rate):
                                    require ((2 * 10^18 * ext_call.return_data[0]) + 10^18 / 2 * rate * (2 * 10^18 * ext_call.return_data[0]) + 10^18 / 2 * rate / 10^18) + (0 / 2 * rate)
                                    require (10^18 * (2 * 10^18 * ext_call.return_data[0]) + 10^18 / 2 * rate * (2 * 10^18 * ext_call.return_data[0]) + 10^18 / 2 * rate / 10^18) + (10^18 * 0 / 2 * rate) / ((2 * 10^18 * ext_call.return_data[0]) + 10^18 / 2 * rate * (2 * 10^18 * ext_call.return_data[0]) + 10^18 / 2 * rate / 10^18) + (0 / 2 * rate) == 10^18
                                    s = (10^18 * (2 * 10^18 * ext_call.return_data[0]) + 10^18 / 2 * rate * (2 * 10^18 * ext_call.return_data[0]) + 10^18 / 2 * rate / 10^18) + (10^18 * 0 / 2 * rate)
                                    t = (10^18 * (2 * 10^18 * ext_call.return_data[0]) + 10^18 / 2 * rate * (2 * 10^18 * ext_call.return_data[0]) + 10^18 / 2 * rate / 10^18) + (10^18 * 0 / 2 * rate) + 1 / 2
                                    while t < s:
                                        require t > 0
                                        require t
                                        require ((10^18 * (2 * 10^18 * ext_call.return_data[0]) + 10^18 / 2 * rate * (2 * 10^18 * ext_call.return_data[0]) + 10^18 / 2 * rate / 10^18) + (10^18 * 0 / 2 * rate) / t) + t >= (10^18 * (2 * 10^18 * ext_call.return_data[0]) + 10^18 / 2 * rate * (2 * 10^18 * ext_call.return_data[0]) + 10^18 / 2 * rate / 10^18) + (10^18 * 0 / 2 * rate) / t
                                        s = t
                                        t = ((10^18 * (2 * 10^18 * ext_call.return_data[0]) + 10^18 / 2 * rate * (2 * 10^18 * ext_call.return_data[0]) + 10^18 / 2 * rate / 10^18) + (10^18 * 0 / 2 * rate) / t) + t / 2
                                        continue 
                                    require (2 * 10^18 * ext_call.return_data[0]) + 10^18 / 2 * rate <= s
                                    if Mask(255, 1, s - ((2 * 10^18 * ext_call.return_data[0]) + 10^18 / 2 * rate)):
                                        require s - ((2 * 10^18 * ext_call.return_data[0]) + 10^18 / 2 * rate) / 2
                                        require s - ((2 * 10^18 * ext_call.return_data[0]) + 10^18 / 2 * rate) / 2 * 2 * rate / s - ((2 * 10^18 * ext_call.return_data[0]) + 10^18 / 2 * rate) / 2 == 2 * rate
                                        return (s - ((2 * 10^18 * ext_call.return_data[0]) + 10^18 / 2 * rate) / 2 * 2 * rate / 10^18)
                                    else:
                                        return 0
                                else:
                                    require (2 * 10^18 * ext_call.return_data[0]) + 10^18 / 2 * rate <= 0
                                    if Mask(255, 1, -(2 * 10^18 * ext_call.return_data[0]) + 10^18 / 2 * rate):
                                        require -(2 * 10^18 * ext_call.return_data[0]) + 10^18 / 2 * rate / 2
                                        require -(2 * 10^18 * ext_call.return_data[0]) + 10^18 / 2 * rate / 2 * 2 * rate / -(2 * 10^18 * ext_call.return_data[0]) + 10^18 / 2 * rate / 2 == 2 * rate
                                        return (-(2 * 10^18 * ext_call.return_data[0]) + 10^18 / 2 * rate / 2 * 2 * rate / 10^18)
                                    else:
                                        return 0
                        else:
                            require 2 * rate > 0
                            require 2 * rate
                            require ((2 * 10^18 * ext_call.return_data[0]) + 10^18 / 2 * rate * (2 * 10^18 * ext_call.return_data[0]) + 10^18 / 2 * rate / 10^18) + (0 / 2 * rate) >= (2 * 10^18 * ext_call.return_data[0]) + 10^18 / 2 * rate * (2 * 10^18 * ext_call.return_data[0]) + 10^18 / 2 * rate / 10^18
                            if ((2 * 10^18 * ext_call.return_data[0]) + 10^18 / 2 * rate * (2 * 10^18 * ext_call.return_data[0]) + 10^18 / 2 * rate / 10^18) + (0 / 2 * rate):
                                require ((2 * 10^18 * ext_call.return_data[0]) + 10^18 / 2 * rate * (2 * 10^18 * ext_call.return_data[0]) + 10^18 / 2 * rate / 10^18) + (0 / 2 * rate)
                                require (10^18 * (2 * 10^18 * ext_call.return_data[0]) + 10^18 / 2 * rate * (2 * 10^18 * ext_call.return_data[0]) + 10^18 / 2 * rate / 10^18) + (10^18 * 0 / 2 * rate) / ((2 * 10^18 * ext_call.return_data[0]) + 10^18 / 2 * rate * (2 * 10^18 * ext_call.return_data[0]) + 10^18 / 2 * rate / 10^18) + (0 / 2 * rate) == 10^18
                                s = (10^18 * (2 * 10^18 * ext_call.return_data[0]) + 10^18 / 2 * rate * (2 * 10^18 * ext_call.return_data[0]) + 10^18 / 2 * rate / 10^18) + (10^18 * 0 / 2 * rate)
                                t = (10^18 * (2 * 10^18 * ext_call.return_data[0]) + 10^18 / 2 * rate * (2 * 10^18 * ext_call.return_data[0]) + 10^18 / 2 * rate / 10^18) + (10^18 * 0 / 2 * rate) + 1 / 2
                                while t < s:
                                    require t > 0
                                    require t
                                    require ((10^18 * (2 * 10^18 * ext_call.return_data[0]) + 10^18 / 2 * rate * (2 * 10^18 * ext_call.return_data[0]) + 10^18 / 2 * rate / 10^18) + (10^18 * 0 / 2 * rate) / t) + t >= (10^18 * (2 * 10^18 * ext_call.return_data[0]) + 10^18 / 2 * rate * (2 * 10^18 * ext_call.return_data[0]) + 10^18 / 2 * rate / 10^18) + (10^18 * 0 / 2 * rate) / t
                                    s = t
                                    t = ((10^18 * (2 * 10^18 * ext_call.return_data[0]) + 10^18 / 2 * rate * (2 * 10^18 * ext_call.return_data[0]) + 10^18 / 2 * rate / 10^18) + (10^18 * 0 / 2 * rate) / t) + t / 2
                                    continue 
                                require (2 * 10^18 * ext_call.return_data[0]) + 10^18 / 2 * rate <= s
                                if Mask(255, 1, s - ((2 * 10^18 * ext_call.return_data[0]) + 10^18 / 2 * rate)):
                                    require s - ((2 * 10^18 * ext_call.return_data[0]) + 10^18 / 2 * rate) / 2
                                    require s - ((2 * 10^18 * ext_call.return_data[0]) + 10^18 / 2 * rate) / 2 * 2 * rate / s - ((2 * 10^18 * ext_call.return_data[0]) + 10^18 / 2 * rate) / 2 == 2 * rate
                                    return (s - ((2 * 10^18 * ext_call.return_data[0]) + 10^18 / 2 * rate) / 2 * 2 * rate / 10^18)
                                else:
                                    return 0
                            else:
                                require (2 * 10^18 * ext_call.return_data[0]) + 10^18 / 2 * rate <= 0
                                if Mask(255, 1, -(2 * 10^18 * ext_call.return_data[0]) + 10^18 / 2 * rate):
                                    require -(2 * 10^18 * ext_call.return_data[0]) + 10^18 / 2 * rate / 2
                                    require -(2 * 10^18 * ext_call.return_data[0]) + 10^18 / 2 * rate / 2 * 2 * rate / -(2 * 10^18 * ext_call.return_data[0]) + 10^18 / 2 * rate / 2 == 2 * rate
                                    return (-(2 * 10^18 * ext_call.return_data[0]) + 10^18 / 2 * rate / 2 * 2 * rate / 10^18)
                                else:
                                    return 0
                    else:
                        if arg1:
                            require arg1
                            require 10^18 * arg1 / arg1 == 10^18
                            if 10^18 * arg1:
                                require 10^18 * arg1
                                require 4 * 10^18 * arg1 / 10^18 * arg1 == 4
                                require 2 * rate > 0
                                require 2 * rate
                                require 4 * 10^18 * arg1 / 2 * rate >= 0
                                if 4 * 10^18 * arg1 / 2 * rate:
                                    require 4 * 10^18 * arg1 / 2 * rate
                                    require 10^18 * 4 * 10^18 * arg1 / 2 * rate / 4 * 10^18 * arg1 / 2 * rate == 10^18
                                    require (10^18 * 4 * 10^18 * arg1 / 2 * rate) + 1 >= 10^18 * 4 * 10^18 * arg1 / 2 * rate
                                    s = 10^18 * 4 * 10^18 * arg1 / 2 * rate
                                    t = (10^18 * 4 * 10^18 * arg1 / 2 * rate) + 1 / 2
                                    while t < s:
                                        require t > 0
                                        require t
                                        require (10^18 * 4 * 10^18 * arg1 / 2 * rate / t) + t >= 10^18 * 4 * 10^18 * arg1 / 2 * rate / t
                                        s = t
                                        t = (10^18 * 4 * 10^18 * arg1 / 2 * rate / t) + t / 2
                                        continue 
                                    require (2 * 10^18 * ext_call.return_data[0]) + 10^18 / 2 * rate <= s
                                    if Mask(255, 1, s - ((2 * 10^18 * ext_call.return_data[0]) + 10^18 / 2 * rate)):
                                        require s - ((2 * 10^18 * ext_call.return_data[0]) + 10^18 / 2 * rate) / 2
                                        require s - ((2 * 10^18 * ext_call.return_data[0]) + 10^18 / 2 * rate) / 2 * 2 * rate / s - ((2 * 10^18 * ext_call.return_data[0]) + 10^18 / 2 * rate) / 2 == 2 * rate
                                        return (s - ((2 * 10^18 * ext_call.return_data[0]) + 10^18 / 2 * rate) / 2 * 2 * rate / 10^18)
                                    else:
                                        return 0
                                else:
                                    require (2 * 10^18 * ext_call.return_data[0]) + 10^18 / 2 * rate <= 0
                                    if Mask(255, 1, -(2 * 10^18 * ext_call.return_data[0]) + 10^18 / 2 * rate):
                                        require -(2 * 10^18 * ext_call.return_data[0]) + 10^18 / 2 * rate / 2
                                        require -(2 * 10^18 * ext_call.return_data[0]) + 10^18 / 2 * rate / 2 * 2 * rate / -(2 * 10^18 * ext_call.return_data[0]) + 10^18 / 2 * rate / 2 == 2 * rate
                                        return (-(2 * 10^18 * ext_call.return_data[0]) + 10^18 / 2 * rate / 2 * 2 * rate / 10^18)
                                    else:
                                        return 0
                            else:
                                require 2 * rate > 0
                                require 2 * rate
                                require 0 / 2 * rate >= 0
                                if 0 / 2 * rate:
                                    require 0 / 2 * rate
                                    require 10^18 * 0 / 2 * rate / 0 / 2 * rate == 10^18
                                    require (10^18 * 0 / 2 * rate) + 1 >= 10^18 * 0 / 2 * rate
                                    s = 10^18 * 0 / 2 * rate
                                    t = (10^18 * 0 / 2 * rate) + 1 / 2
                                    while t < s:
                                        require t > 0
                                        require t
                                        require (10^18 * 0 / 2 * rate / t) + t >= 10^18 * 0 / 2 * rate / t
                                        s = t
                                        t = (10^18 * 0 / 2 * rate / t) + t / 2
                                        continue 
                                    require (2 * 10^18 * ext_call.return_data[0]) + 10^18 / 2 * rate <= s
                                    if Mask(255, 1, s - ((2 * 10^18 * ext_call.return_data[0]) + 10^18 / 2 * rate)):
                                        require s - ((2 * 10^18 * ext_call.return_data[0]) + 10^18 / 2 * rate) / 2
                                        require s - ((2 * 10^18 * ext_call.return_data[0]) + 10^18 / 2 * rate) / 2 * 2 * rate / s - ((2 * 10^18 * ext_call.return_data[0]) + 10^18 / 2 * rate) / 2 == 2 * rate
                                        return (s - ((2 * 10^18 * ext_call.return_data[0]) + 10^18 / 2 * rate) / 2 * 2 * rate / 10^18)
                                    else:
                                        return 0
                                else:
                                    require (2 * 10^18 * ext_call.return_data[0]) + 10^18 / 2 * rate <= 0
                                    if Mask(255, 1, -(2 * 10^18 * ext_call.return_data[0]) + 10^18 / 2 * rate):
                                        require -(2 * 10^18 * ext_call.return_data[0]) + 10^18 / 2 * rate / 2
                                        require -(2 * 10^18 * ext_call.return_data[0]) + 10^18 / 2 * rate / 2 * 2 * rate / -(2 * 10^18 * ext_call.return_data[0]) + 10^18 / 2 * rate / 2 == 2 * rate
                                        return (-(2 * 10^18 * ext_call.return_data[0]) + 10^18 / 2 * rate / 2 * 2 * rate / 10^18)
                                    else:
                                        return 0
                        else:
                            require 2 * rate > 0
                            require 2 * rate
                            require 0 / 2 * rate >= 0
                            if 0 / 2 * rate:
                                require 0 / 2 * rate
                                require 10^18 * 0 / 2 * rate / 0 / 2 * rate == 10^18
                                require (10^18 * 0 / 2 * rate) + 1 >= 10^18 * 0 / 2 * rate
                                s = 10^18 * 0 / 2 * rate
                                t = (10^18 * 0 / 2 * rate) + 1 / 2
                                while t < s:
                                    require t > 0
                                    require t
                                    require (10^18 * 0 / 2 * rate / t) + t >= 10^18 * 0 / 2 * rate / t
                                    s = t
                                    t = (10^18 * 0 / 2 * rate / t) + t / 2
                                    continue 
                                require (2 * 10^18 * ext_call.return_data[0]) + 10^18 / 2 * rate <= s
                                if Mask(255, 1, s - ((2 * 10^18 * ext_call.return_data[0]) + 10^18 / 2 * rate)):
                                    require s - ((2 * 10^18 * ext_call.return_data[0]) + 10^18 / 2 * rate) / 2
                                    require s - ((2 * 10^18 * ext_call.return_data[0]) + 10^18 / 2 * rate) / 2 * 2 * rate / s - ((2 * 10^18 * ext_call.return_data[0]) + 10^18 / 2 * rate) / 2 == 2 * rate
                                    return (s - ((2 * 10^18 * ext_call.return_data[0]) + 10^18 / 2 * rate) / 2 * 2 * rate / 10^18)
                                else:
                                    return 0
                            else:
                                require (2 * 10^18 * ext_call.return_data[0]) + 10^18 / 2 * rate <= 0
                                if Mask(255, 1, -(2 * 10^18 * ext_call.return_data[0]) + 10^18 / 2 * rate):
                                    require -(2 * 10^18 * ext_call.return_data[0]) + 10^18 / 2 * rate / 2
                                    require -(2 * 10^18 * ext_call.return_data[0]) + 10^18 / 2 * rate / 2 * 2 * rate / -(2 * 10^18 * ext_call.return_data[0]) + 10^18 / 2 * rate / 2 == 2 * rate
                                    return (-(2 * 10^18 * ext_call.return_data[0]) + 10^18 / 2 * rate / 2 * 2 * rate / 10^18)
                                else:
                                    return 0
                else:
                    require 2 * rate > 0
                    require 2 * rate
                    if 10^18 / 2 * rate:
                        require 10^18 / 2 * rate
                        require 10^18 / 2 * rate * 10^18 / 2 * rate / 10^18 / 2 * rate == 10^18 / 2 * rate
                        if arg1:
                            require arg1
                            require 10^18 * arg1 / arg1 == 10^18
                            if 10^18 * arg1:
                                require 10^18 * arg1
                                require 4 * 10^18 * arg1 / 10^18 * arg1 == 4
                                require 2 * rate > 0
                                require 2 * rate
                                require (10^18 / 2 * rate * 10^18 / 2 * rate / 10^18) + (4 * 10^18 * arg1 / 2 * rate) >= 10^18 / 2 * rate * 10^18 / 2 * rate / 10^18
                                if (10^18 / 2 * rate * 10^18 / 2 * rate / 10^18) + (4 * 10^18 * arg1 / 2 * rate):
                                    require (10^18 / 2 * rate * 10^18 / 2 * rate / 10^18) + (4 * 10^18 * arg1 / 2 * rate)
                                    require (10^18 * 10^18 / 2 * rate * 10^18 / 2 * rate / 10^18) + (10^18 * 4 * 10^18 * arg1 / 2 * rate) / (10^18 / 2 * rate * 10^18 / 2 * rate / 10^18) + (4 * 10^18 * arg1 / 2 * rate) == 10^18
                                    s = (10^18 * 10^18 / 2 * rate * 10^18 / 2 * rate / 10^18) + (10^18 * 4 * 10^18 * arg1 / 2 * rate)
                                    t = (10^18 * 10^18 / 2 * rate * 10^18 / 2 * rate / 10^18) + (10^18 * 4 * 10^18 * arg1 / 2 * rate) + 1 / 2
                                    while t < s:
                                        require t > 0
                                        require t
                                        require ((10^18 * 10^18 / 2 * rate * 10^18 / 2 * rate / 10^18) + (10^18 * 4 * 10^18 * arg1 / 2 * rate) / t) + t >= (10^18 * 10^18 / 2 * rate * 10^18 / 2 * rate / 10^18) + (10^18 * 4 * 10^18 * arg1 / 2 * rate) / t
                                        s = t
                                        t = ((10^18 * 10^18 / 2 * rate * 10^18 / 2 * rate / 10^18) + (10^18 * 4 * 10^18 * arg1 / 2 * rate) / t) + t / 2
                                        continue 
                                    require 10^18 / 2 * rate <= s
                                    if Mask(255, 1, s - (10^18 / 2 * rate)):
                                        require s - (10^18 / 2 * rate) / 2
                                        require s - (10^18 / 2 * rate) / 2 * 2 * rate / s - (10^18 / 2 * rate) / 2 == 2 * rate
                                        return (s - (10^18 / 2 * rate) / 2 * 2 * rate / 10^18)
                                    else:
                                        return 0
                                else:
                                    require 10^18 / 2 * rate <= 0
                                    if Mask(255, 1, -10^18 / 2 * rate):
                                        require -10^18 / 2 * rate / 2
                                        require -10^18 / 2 * rate / 2 * 2 * rate / -10^18 / 2 * rate / 2 == 2 * rate
                                        return (-10^18 / 2 * rate / 2 * 2 * rate / 10^18)
                                    else:
                                        return 0
                            else:
                                require 2 * rate > 0
                                require 2 * rate
                                require (10^18 / 2 * rate * 10^18 / 2 * rate / 10^18) + (0 / 2 * rate) >= 10^18 / 2 * rate * 10^18 / 2 * rate / 10^18
                                if (10^18 / 2 * rate * 10^18 / 2 * rate / 10^18) + (0 / 2 * rate):
                                    require (10^18 / 2 * rate * 10^18 / 2 * rate / 10^18) + (0 / 2 * rate)
                                    require (10^18 * 10^18 / 2 * rate * 10^18 / 2 * rate / 10^18) + (10^18 * 0 / 2 * rate) / (10^18 / 2 * rate * 10^18 / 2 * rate / 10^18) + (0 / 2 * rate) == 10^18
                                    s = (10^18 * 10^18 / 2 * rate * 10^18 / 2 * rate / 10^18) + (10^18 * 0 / 2 * rate)
                                    t = (10^18 * 10^18 / 2 * rate * 10^18 / 2 * rate / 10^18) + (10^18 * 0 / 2 * rate) + 1 / 2
                                    while t < s:
                                        require t > 0
                                        require t
                                        require ((10^18 * 10^18 / 2 * rate * 10^18 / 2 * rate / 10^18) + (10^18 * 0 / 2 * rate) / t) + t >= (10^18 * 10^18 / 2 * rate * 10^18 / 2 * rate / 10^18) + (10^18 * 0 / 2 * rate) / t
                                        s = t
                                        t = ((10^18 * 10^18 / 2 * rate * 10^18 / 2 * rate / 10^18) + (10^18 * 0 / 2 * rate) / t) + t / 2
                                        continue 
                                    require 10^18 / 2 * rate <= s
                                    if Mask(255, 1, s - (10^18 / 2 * rate)):
                                        require s - (10^18 / 2 * rate) / 2
                                        require s - (10^18 / 2 * rate) / 2 * 2 * rate / s - (10^18 / 2 * rate) / 2 == 2 * rate
                                        return (s - (10^18 / 2 * rate) / 2 * 2 * rate / 10^18)
                                    else:
                                        return 0
                                else:
                                    require 10^18 / 2 * rate <= 0
                                    if Mask(255, 1, -10^18 / 2 * rate):
                                        require -10^18 / 2 * rate / 2
                                        require -10^18 / 2 * rate / 2 * 2 * rate / -10^18 / 2 * rate / 2 == 2 * rate
                                        return (-10^18 / 2 * rate / 2 * 2 * rate / 10^18)
                                    else:
                                        return 0
                        else:
                            require 2 * rate > 0
                            require 2 * rate
                            require (10^18 / 2 * rate * 10^18 / 2 * rate / 10^18) + (0 / 2 * rate) >= 10^18 / 2 * rate * 10^18 / 2 * rate / 10^18
                            if (10^18 / 2 * rate * 10^18 / 2 * rate / 10^18) + (0 / 2 * rate):
                                require (10^18 / 2 * rate * 10^18 / 2 * rate / 10^18) + (0 / 2 * rate)
                                require (10^18 * 10^18 / 2 * rate * 10^18 / 2 * rate / 10^18) + (10^18 * 0 / 2 * rate) / (10^18 / 2 * rate * 10^18 / 2 * rate / 10^18) + (0 / 2 * rate) == 10^18
                                s = (10^18 * 10^18 / 2 * rate * 10^18 / 2 * rate / 10^18) + (10^18 * 0 / 2 * rate)
                                t = (10^18 * 10^18 / 2 * rate * 10^18 / 2 * rate / 10^18) + (10^18 * 0 / 2 * rate) + 1 / 2
                                while t < s:
                                    require t > 0
                                    require t
                                    require ((10^18 * 10^18 / 2 * rate * 10^18 / 2 * rate / 10^18) + (10^18 * 0 / 2 * rate) / t) + t >= (10^18 * 10^18 / 2 * rate * 10^18 / 2 * rate / 10^18) + (10^18 * 0 / 2 * rate) / t
                                    s = t
                                    t = ((10^18 * 10^18 / 2 * rate * 10^18 / 2 * rate / 10^18) + (10^18 * 0 / 2 * rate) / t) + t / 2
                                    continue 
                                require 10^18 / 2 * rate <= s
                                if Mask(255, 1, s - (10^18 / 2 * rate)):
                                    require s - (10^18 / 2 * rate) / 2
                                    require s - (10^18 / 2 * rate) / 2 * 2 * rate / s - (10^18 / 2 * rate) / 2 == 2 * rate
                                    return (s - (10^18 / 2 * rate) / 2 * 2 * rate / 10^18)
                                else:
                                    return 0
                            else:
                                require 10^18 / 2 * rate <= 0
                                if Mask(255, 1, -10^18 / 2 * rate):
                                    require -10^18 / 2 * rate / 2
                                    require -10^18 / 2 * rate / 2 * 2 * rate / -10^18 / 2 * rate / 2 == 2 * rate
                                    return (-10^18 / 2 * rate / 2 * 2 * rate / 10^18)
                                else:
                                    return 0
                    else:
                        if arg1:
                            require arg1
                            require 10^18 * arg1 / arg1 == 10^18
                            if 10^18 * arg1:
                                require 10^18 * arg1
                                require 4 * 10^18 * arg1 / 10^18 * arg1 == 4
                                require 2 * rate > 0
                                require 2 * rate
                                require 4 * 10^18 * arg1 / 2 * rate >= 0
                                if 4 * 10^18 * arg1 / 2 * rate:
                                    require 4 * 10^18 * arg1 / 2 * rate
                                    require 10^18 * 4 * 10^18 * arg1 / 2 * rate / 4 * 10^18 * arg1 / 2 * rate == 10^18
                                    require (10^18 * 4 * 10^18 * arg1 / 2 * rate) + 1 >= 10^18 * 4 * 10^18 * arg1 / 2 * rate
                                    s = 10^18 * 4 * 10^18 * arg1 / 2 * rate
                                    t = (10^18 * 4 * 10^18 * arg1 / 2 * rate) + 1 / 2
                                    while t < s:
                                        require t > 0
                                        require t
                                        require (10^18 * 4 * 10^18 * arg1 / 2 * rate / t) + t >= 10^18 * 4 * 10^18 * arg1 / 2 * rate / t
                                        s = t
                                        t = (10^18 * 4 * 10^18 * arg1 / 2 * rate / t) + t / 2
                                        continue 
                                    require 10^18 / 2 * rate <= s
                                    if Mask(255, 1, s - (10^18 / 2 * rate)):
                                        require s - (10^18 / 2 * rate) / 2
                                        require s - (10^18 / 2 * rate) / 2 * 2 * rate / s - (10^18 / 2 * rate) / 2 == 2 * rate
                                        return (s - (10^18 / 2 * rate) / 2 * 2 * rate / 10^18)
                                    else:
                                        return 0
                                else:
                                    require 10^18 / 2 * rate <= 0
                                    if Mask(255, 1, -10^18 / 2 * rate):
                                        require -10^18 / 2 * rate / 2
                                        require -10^18 / 2 * rate / 2 * 2 * rate / -10^18 / 2 * rate / 2 == 2 * rate
                                        return (-10^18 / 2 * rate / 2 * 2 * rate / 10^18)
                                    else:
                                        return 0
                            else:
                                require 2 * rate > 0
                                require 2 * rate
                                require 0 / 2 * rate >= 0
                                if 0 / 2 * rate:
                                    require 0 / 2 * rate
                                    require 10^18 * 0 / 2 * rate / 0 / 2 * rate == 10^18
                                    require (10^18 * 0 / 2 * rate) + 1 >= 10^18 * 0 / 2 * rate
                                    s = 10^18 * 0 / 2 * rate
                                    t = (10^18 * 0 / 2 * rate) + 1 / 2
                                    while t < s:
                                        require t > 0
                                        require t
                                        require (10^18 * 0 / 2 * rate / t) + t >= 10^18 * 0 / 2 * rate / t
                                        s = t
                                        t = (10^18 * 0 / 2 * rate / t) + t / 2
                                        continue 
                                    require 10^18 / 2 * rate <= s
                                    if Mask(255, 1, s - (10^18 / 2 * rate)):
                                        require s - (10^18 / 2 * rate) / 2
                                        require s - (10^18 / 2 * rate) / 2 * 2 * rate / s - (10^18 / 2 * rate) / 2 == 2 * rate
                                        return (s - (10^18 / 2 * rate) / 2 * 2 * rate / 10^18)
                                    else:
                                        return 0
                                else:
                                    require 10^18 / 2 * rate <= 0
                                    if Mask(255, 1, -10^18 / 2 * rate):
                                        require -10^18 / 2 * rate / 2
                                        require -10^18 / 2 * rate / 2 * 2 * rate / -10^18 / 2 * rate / 2 == 2 * rate
                                        return (-10^18 / 2 * rate / 2 * 2 * rate / 10^18)
                                    else:
                                        return 0
                        else:
                            require 2 * rate > 0
                            require 2 * rate
                            require 0 / 2 * rate >= 0
                            if 0 / 2 * rate:
                                require 0 / 2 * rate
                                require 10^18 * 0 / 2 * rate / 0 / 2 * rate == 10^18
                                require (10^18 * 0 / 2 * rate) + 1 >= 10^18 * 0 / 2 * rate
                                s = 10^18 * 0 / 2 * rate
                                t = (10^18 * 0 / 2 * rate) + 1 / 2
                                while t < s:
                                    require t > 0
                                    require t
                                    require (10^18 * 0 / 2 * rate / t) + t >= 10^18 * 0 / 2 * rate / t
                                    s = t
                                    t = (10^18 * 0 / 2 * rate / t) + t / 2
                                    continue 
                                require 10^18 / 2 * rate <= s
                                if Mask(255, 1, s - (10^18 / 2 * rate)):
                                    require s - (10^18 / 2 * rate) / 2
                                    require s - (10^18 / 2 * rate) / 2 * 2 * rate / s - (10^18 / 2 * rate) / 2 == 2 * rate
                                    return (s - (10^18 / 2 * rate) / 2 * 2 * rate / 10^18)
                                else:
                                    return 0
                            else:
                                require 10^18 / 2 * rate <= 0
                                if Mask(255, 1, -10^18 / 2 * rate):
                                    require -10^18 / 2 * rate / 2
                                    require -10^18 / 2 * rate / 2 * 2 * rate / -10^18 / 2 * rate / 2 == 2 * rate
                                    return (-10^18 / 2 * rate / 2 * 2 * rate / 10^18)
                                else:
                                    return 0
            else:
                require 2 * rate > 0
                require 2 * rate
                if 10^18 / 2 * rate:
                    require 10^18 / 2 * rate
                    require 10^18 / 2 * rate * 10^18 / 2 * rate / 10^18 / 2 * rate == 10^18 / 2 * rate
                    if arg1:
                        require arg1
                        require 10^18 * arg1 / arg1 == 10^18
                        if 10^18 * arg1:
                            require 10^18 * arg1
                            require 4 * 10^18 * arg1 / 10^18 * arg1 == 4
                            require 2 * rate > 0
                            require 2 * rate
                            require (10^18 / 2 * rate * 10^18 / 2 * rate / 10^18) + (4 * 10^18 * arg1 / 2 * rate) >= 10^18 / 2 * rate * 10^18 / 2 * rate / 10^18
                            if (10^18 / 2 * rate * 10^18 / 2 * rate / 10^18) + (4 * 10^18 * arg1 / 2 * rate):
                                require (10^18 / 2 * rate * 10^18 / 2 * rate / 10^18) + (4 * 10^18 * arg1 / 2 * rate)
                                require (10^18 * 10^18 / 2 * rate * 10^18 / 2 * rate / 10^18) + (10^18 * 4 * 10^18 * arg1 / 2 * rate) / (10^18 / 2 * rate * 10^18 / 2 * rate / 10^18) + (4 * 10^18 * arg1 / 2 * rate) == 10^18
                                s = (10^18 * 10^18 / 2 * rate * 10^18 / 2 * rate / 10^18) + (10^18 * 4 * 10^18 * arg1 / 2 * rate)
                                t = (10^18 * 10^18 / 2 * rate * 10^18 / 2 * rate / 10^18) + (10^18 * 4 * 10^18 * arg1 / 2 * rate) + 1 / 2
                                while t < s:
                                    require t > 0
                                    require t
                                    require ((10^18 * 10^18 / 2 * rate * 10^18 / 2 * rate / 10^18) + (10^18 * 4 * 10^18 * arg1 / 2 * rate) / t) + t >= (10^18 * 10^18 / 2 * rate * 10^18 / 2 * rate / 10^18) + (10^18 * 4 * 10^18 * arg1 / 2 * rate) / t
                                    s = t
                                    t = ((10^18 * 10^18 / 2 * rate * 10^18 / 2 * rate / 10^18) + (10^18 * 4 * 10^18 * arg1 / 2 * rate) / t) + t / 2
                                    continue 
                                require 10^18 / 2 * rate <= s
                                if Mask(255, 1, s - (10^18 / 2 * rate)):
                                    require s - (10^18 / 2 * rate) / 2
                                    require s - (10^18 / 2 * rate) / 2 * 2 * rate / s - (10^18 / 2 * rate) / 2 == 2 * rate
                                    return (s - (10^18 / 2 * rate) / 2 * 2 * rate / 10^18)
                                else:
                                    return 0
                            else:
                                require 10^18 / 2 * rate <= 0
                                if Mask(255, 1, -10^18 / 2 * rate):
                                    require -10^18 / 2 * rate / 2
                                    require -10^18 / 2 * rate / 2 * 2 * rate / -10^18 / 2 * rate / 2 == 2 * rate
                                    return (-10^18 / 2 * rate / 2 * 2 * rate / 10^18)
                                else:
                                    return 0
                        else:
                            require 2 * rate > 0
                            require 2 * rate
                            require (10^18 / 2 * rate * 10^18 / 2 * rate / 10^18) + (0 / 2 * rate) >= 10^18 / 2 * rate * 10^18 / 2 * rate / 10^18
                            if (10^18 / 2 * rate * 10^18 / 2 * rate / 10^18) + (0 / 2 * rate):
                                require (10^18 / 2 * rate * 10^18 / 2 * rate / 10^18) + (0 / 2 * rate)
                                require (10^18 * 10^18 / 2 * rate * 10^18 / 2 * rate / 10^18) + (10^18 * 0 / 2 * rate) / (10^18 / 2 * rate * 10^18 / 2 * rate / 10^18) + (0 / 2 * rate) == 10^18
                                s = (10^18 * 10^18 / 2 * rate * 10^18 / 2 * rate / 10^18) + (10^18 * 0 / 2 * rate)
                                t = (10^18 * 10^18 / 2 * rate * 10^18 / 2 * rate / 10^18) + (10^18 * 0 / 2 * rate) + 1 / 2
                                while t < s:
                                    require t > 0
                                    require t
                                    require ((10^18 * 10^18 / 2 * rate * 10^18 / 2 * rate / 10^18) + (10^18 * 0 / 2 * rate) / t) + t >= (10^18 * 10^18 / 2 * rate * 10^18 / 2 * rate / 10^18) + (10^18 * 0 / 2 * rate) / t
                                    s = t
                                    t = ((10^18 * 10^18 / 2 * rate * 10^18 / 2 * rate / 10^18) + (10^18 * 0 / 2 * rate) / t) + t / 2
                                    continue 
                                require 10^18 / 2 * rate <= s
                                if Mask(255, 1, s - (10^18 / 2 * rate)):
                                    require s - (10^18 / 2 * rate) / 2
                                    require s - (10^18 / 2 * rate) / 2 * 2 * rate / s - (10^18 / 2 * rate) / 2 == 2 * rate
                                    return (s - (10^18 / 2 * rate) / 2 * 2 * rate / 10^18)
                                else:
                                    return 0
                            else:
                                require 10^18 / 2 * rate <= 0
                                if Mask(255, 1, -10^18 / 2 * rate):
                                    require -10^18 / 2 * rate / 2
                                    require -10^18 / 2 * rate / 2 * 2 * rate / -10^18 / 2 * rate / 2 == 2 * rate
                                    return (-10^18 / 2 * rate / 2 * 2 * rate / 10^18)
                                else:
                                    return 0
                    else:
                        require 2 * rate > 0
                        require 2 * rate
                        require (10^18 / 2 * rate * 10^18 / 2 * rate / 10^18) + (0 / 2 * rate) >= 10^18 / 2 * rate * 10^18 / 2 * rate / 10^18
                        if (10^18 / 2 * rate * 10^18 / 2 * rate / 10^18) + (0 / 2 * rate):
                            require (10^18 / 2 * rate * 10^18 / 2 * rate / 10^18) + (0 / 2 * rate)
                            require (10^18 * 10^18 / 2 * rate * 10^18 / 2 * rate / 10^18) + (10^18 * 0 / 2 * rate) / (10^18 / 2 * rate * 10^18 / 2 * rate / 10^18) + (0 / 2 * rate) == 10^18
                            s = (10^18 * 10^18 / 2 * rate * 10^18 / 2 * rate / 10^18) + (10^18 * 0 / 2 * rate)
                            t = (10^18 * 10^18 / 2 * rate * 10^18 / 2 * rate / 10^18) + (10^18 * 0 / 2 * rate) + 1 / 2
                            while t < s:
                                require t > 0
                                require t
                                require ((10^18 * 10^18 / 2 * rate * 10^18 / 2 * rate / 10^18) + (10^18 * 0 / 2 * rate) / t) + t >= (10^18 * 10^18 / 2 * rate * 10^18 / 2 * rate / 10^18) + (10^18 * 0 / 2 * rate) / t
                                s = t
                                t = ((10^18 * 10^18 / 2 * rate * 10^18 / 2 * rate / 10^18) + (10^18 * 0 / 2 * rate) / t) + t / 2
                                continue 
                            require 10^18 / 2 * rate <= s
                            if Mask(255, 1, s - (10^18 / 2 * rate)):
                                require s - (10^18 / 2 * rate) / 2
                                require s - (10^18 / 2 * rate) / 2 * 2 * rate / s - (10^18 / 2 * rate) / 2 == 2 * rate
                                return (s - (10^18 / 2 * rate) / 2 * 2 * rate / 10^18)
                            else:
                                return 0
                        else:
                            require 10^18 / 2 * rate <= 0
                            if Mask(255, 1, -10^18 / 2 * rate):
                                require -10^18 / 2 * rate / 2
                                require -10^18 / 2 * rate / 2 * 2 * rate / -10^18 / 2 * rate / 2 == 2 * rate
                                return (-10^18 / 2 * rate / 2 * 2 * rate / 10^18)
                            else:
                                return 0
                else:
                    if arg1:
                        require arg1
                        require 10^18 * arg1 / arg1 == 10^18
                        if 10^18 * arg1:
                            require 10^18 * arg1
                            require 4 * 10^18 * arg1 / 10^18 * arg1 == 4
                            require 2 * rate > 0
                            require 2 * rate
                            require 4 * 10^18 * arg1 / 2 * rate >= 0
                            if 4 * 10^18 * arg1 / 2 * rate:
                                require 4 * 10^18 * arg1 / 2 * rate
                                require 10^18 * 4 * 10^18 * arg1 / 2 * rate / 4 * 10^18 * arg1 / 2 * rate == 10^18
                                require (10^18 * 4 * 10^18 * arg1 / 2 * rate) + 1 >= 10^18 * 4 * 10^18 * arg1 / 2 * rate
                                s = 10^18 * 4 * 10^18 * arg1 / 2 * rate
                                t = (10^18 * 4 * 10^18 * arg1 / 2 * rate) + 1 / 2
                                while t < s:
                                    require t > 0
                                    require t
                                    require (10^18 * 4 * 10^18 * arg1 / 2 * rate / t) + t >= 10^18 * 4 * 10^18 * arg1 / 2 * rate / t
                                    s = t
                                    t = (10^18 * 4 * 10^18 * arg1 / 2 * rate / t) + t / 2
                                    continue 
                                require 10^18 / 2 * rate <= s
                                if Mask(255, 1, s - (10^18 / 2 * rate)):
                                    require s - (10^18 / 2 * rate) / 2
                                    require s - (10^18 / 2 * rate) / 2 * 2 * rate / s - (10^18 / 2 * rate) / 2 == 2 * rate
                                    return (s - (10^18 / 2 * rate) / 2 * 2 * rate / 10^18)
                                else:
                                    return 0
                            else:
                                require 10^18 / 2 * rate <= 0
                                if Mask(255, 1, -10^18 / 2 * rate):
                                    require -10^18 / 2 * rate / 2
                                    require -10^18 / 2 * rate / 2 * 2 * rate / -10^18 / 2 * rate / 2 == 2 * rate
                                    return (-10^18 / 2 * rate / 2 * 2 * rate / 10^18)
                                else:
                                    return 0
                        else:
                            require 2 * rate > 0
                            require 2 * rate
                            require 0 / 2 * rate >= 0
                            if 0 / 2 * rate:
                                require 0 / 2 * rate
                                require 10^18 * 0 / 2 * rate / 0 / 2 * rate == 10^18
                                require (10^18 * 0 / 2 * rate) + 1 >= 10^18 * 0 / 2 * rate
                                s = 10^18 * 0 / 2 * rate
                                t = (10^18 * 0 / 2 * rate) + 1 / 2
                                while t < s:
                                    require t > 0
                                    require t
                                    require (10^18 * 0 / 2 * rate / t) + t >= 10^18 * 0 / 2 * rate / t
                                    s = t
                                    t = (10^18 * 0 / 2 * rate / t) + t / 2
                                    continue 
                                require 10^18 / 2 * rate <= s
                                if Mask(255, 1, s - (10^18 / 2 * rate)):
                                    require s - (10^18 / 2 * rate) / 2
                                    require s - (10^18 / 2 * rate) / 2 * 2 * rate / s - (10^18 / 2 * rate) / 2 == 2 * rate
                                    return (s - (10^18 / 2 * rate) / 2 * 2 * rate / 10^18)
                                else:
                                    return 0
                            else:
                                require 10^18 / 2 * rate <= 0
                                if Mask(255, 1, -10^18 / 2 * rate):
                                    require -10^18 / 2 * rate / 2
                                    require -10^18 / 2 * rate / 2 * 2 * rate / -10^18 / 2 * rate / 2 == 2 * rate
                                    return (-10^18 / 2 * rate / 2 * 2 * rate / 10^18)
                                else:
                                    return 0
                    else:
                        require 2 * rate > 0
                        require 2 * rate
                        require 0 / 2 * rate >= 0
                        if 0 / 2 * rate:
                            require 0 / 2 * rate
                            require 10^18 * 0 / 2 * rate / 0 / 2 * rate == 10^18
                            require (10^18 * 0 / 2 * rate) + 1 >= 10^18 * 0 / 2 * rate
                            s = 10^18 * 0 / 2 * rate
                            t = (10^18 * 0 / 2 * rate) + 1 / 2
                            while t < s:
                                require t > 0
                                require t
                                require (10^18 * 0 / 2 * rate / t) + t >= 10^18 * 0 / 2 * rate / t
                                s = t
                                t = (10^18 * 0 / 2 * rate / t) + t / 2
                                continue 
                            require 10^18 / 2 * rate <= s
                            if Mask(255, 1, s - (10^18 / 2 * rate)):
                                require s - (10^18 / 2 * rate) / 2
                                require s - (10^18 / 2 * rate) / 2 * 2 * rate / s - (10^18 / 2 * rate) / 2 == 2 * rate
                                return (s - (10^18 / 2 * rate) / 2 * 2 * rate / 10^18)
                            else:
                                return 0
                        else:
                            require 10^18 / 2 * rate <= 0
                            if Mask(255, 1, -10^18 / 2 * rate):
                                require -10^18 / 2 * rate / 2
                                require -10^18 / 2 * rate / 2 * 2 * rate / -10^18 / 2 * rate / 2 == 2 * rate
                                return (-10^18 / 2 * rate / 2 * 2 * rate / 10^18)
                            else:
                                return 0
    else:
        require ext_code.size(tokenAddress)
        staticcall tokenAddress.0x18160ddd with:
                gas gas_remaining wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        else:
            require return_data.size >= 32
            require ext_call.return_data[0]
            require ext_call.return_data[0]
            require 10^18 * ext_call.return_data[0] / ext_call.return_data[0] == 10^18
            require 10^18 * ext_call.return_data[0]
            require 10^18 * ext_call.return_data[0]
            require 2 * 10^18 * ext_call.return_data[0] / 10^18 * ext_call.return_data[0] == 2
            require (2 * 10^18 * ext_call.return_data[0]) + 10^18 < 2 * 10^18 * ext_call.return_data[0]
            revert
}

function buyTokens(address arg1) payable {
    require calldata.size - 4 >= 32
    stor0++
    require arg1
    require msg.value
    if msg.value < 10^15:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Contribution must be at least 0.001 ETH'
    else:
        if rate:
            require rate
            require 2 * rate / rate == 2
            require ext_code.size(tokenAddress)
            staticcall tokenAddress.0x18160ddd with:
                    gas gas_remaining wei
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            else:
                require return_data.size >= 32
                if ext_call.return_data[0]:
                    require ext_call.return_data[0]
                    require 10^18 * ext_call.return_data[0] / ext_call.return_data[0] == 10^18
                    if 10^18 * ext_call.return_data[0]:
                        require 10^18 * ext_call.return_data[0]
                        require 2 * 10^18 * ext_call.return_data[0] / 10^18 * ext_call.return_data[0] == 2
                        require (2 * 10^18 * ext_call.return_data[0]) + 10^18 >= 2 * 10^18 * ext_call.return_data[0]
                        require 2 * rate > 0
                        require 2 * rate
                        if (2 * 10^18 * ext_call.return_data[0]) + 10^18 / 2 * rate:
                            require (2 * 10^18 * ext_call.return_data[0]) + 10^18 / 2 * rate
                            require (2 * 10^18 * ext_call.return_data[0]) + 10^18 / 2 * rate * (2 * 10^18 * ext_call.return_data[0]) + 10^18 / 2 * rate / (2 * 10^18 * ext_call.return_data[0]) + 10^18 / 2 * rate == (2 * 10^18 * ext_call.return_data[0]) + 10^18 / 2 * rate
                            if msg.value:
                                require msg.value
                                require 10^18 * msg.value / msg.value == 10^18
                                if 10^18 * msg.value:
                                    require 10^18 * msg.value
                                    require 4 * 10^18 * msg.value / 10^18 * msg.value == 4
                                    require 2 * rate > 0
                                    require 2 * rate
                                    require ((2 * 10^18 * ext_call.return_data[0]) + 10^18 / 2 * rate * (2 * 10^18 * ext_call.return_data[0]) + 10^18 / 2 * rate / 10^18) + (4 * 10^18 * msg.value / 2 * rate) >= (2 * 10^18 * ext_call.return_data[0]) + 10^18 / 2 * rate * (2 * 10^18 * ext_call.return_data[0]) + 10^18 / 2 * rate / 10^18
                                    if ((2 * 10^18 * ext_call.return_data[0]) + 10^18 / 2 * rate * (2 * 10^18 * ext_call.return_data[0]) + 10^18 / 2 * rate / 10^18) + (4 * 10^18 * msg.value / 2 * rate):
                                        require ((2 * 10^18 * ext_call.return_data[0]) + 10^18 / 2 * rate * (2 * 10^18 * ext_call.return_data[0]) + 10^18 / 2 * rate / 10^18) + (4 * 10^18 * msg.value / 2 * rate)
                                        require (10^18 * (2 * 10^18 * ext_call.return_data[0]) + 10^18 / 2 * rate * (2 * 10^18 * ext_call.return_data[0]) + 10^18 / 2 * rate / 10^18) + (10^18 * 4 * 10^18 * msg.value / 2 * rate) / ((2 * 10^18 * ext_call.return_data[0]) + 10^18 / 2 * rate * (2 * 10^18 * ext_call.return_data[0]) + 10^18 / 2 * rate / 10^18) + (4 * 10^18 * msg.value / 2 * rate) == 10^18
                                        s = (10^18 * (2 * 10^18 * ext_call.return_data[0]) + 10^18 / 2 * rate * (2 * 10^18 * ext_call.return_data[0]) + 10^18 / 2 * rate / 10^18) + (10^18 * 4 * 10^18 * msg.value / 2 * rate)
                                        t = (10^18 * (2 * 10^18 * ext_call.return_data[0]) + 10^18 / 2 * rate * (2 * 10^18 * ext_call.return_data[0]) + 10^18 / 2 * rate / 10^18) + (10^18 * 4 * 10^18 * msg.value / 2 * rate) + 1 / 2
                                        while t < s:
                                            require t > 0
                                            require t
                                            require ((10^18 * (2 * 10^18 * ext_call.return_data[0]) + 10^18 / 2 * rate * (2 * 10^18 * ext_call.return_data[0]) + 10^18 / 2 * rate / 10^18) + (10^18 * 4 * 10^18 * msg.value / 2 * rate) / t) + t >= (10^18 * (2 * 10^18 * ext_call.return_data[0]) + 10^18 / 2 * rate * (2 * 10^18 * ext_call.return_data[0]) + 10^18 / 2 * rate / 10^18) + (10^18 * 4 * 10^18 * msg.value / 2 * rate) / t
                                            s = t
                                            t = ((10^18 * (2 * 10^18 * ext_call.return_data[0]) + 10^18 / 2 * rate * (2 * 10^18 * ext_call.return_data[0]) + 10^18 / 2 * rate / 10^18) + (10^18 * 4 * 10^18 * msg.value / 2 * rate) / t) + t / 2
                                            continue 
                                        require (2 * 10^18 * ext_call.return_data[0]) + 10^18 / 2 * rate <= s
                                        if Mask(255, 1, s - ((2 * 10^18 * ext_call.return_data[0]) + 10^18 / 2 * rate)):
                                            require s - ((2 * 10^18 * ext_call.return_data[0]) + 10^18 / 2 * rate) / 2
                                            require s - ((2 * 10^18 * ext_call.return_data[0]) + 10^18 / 2 * rate) / 2 * 2 * rate / s - ((2 * 10^18 * ext_call.return_data[0]) + 10^18 / 2 * rate) / 2 == 2 * rate
                                            require weiRaised + msg.value >= weiRaised
                                            weiRaised += msg.value
                                            require ext_code.size(tokenAddress)
                                            call tokenAddress.0x40c10f19 with:
                                                 gas gas_remaining wei
                                                args address(arg1), s - ((2 * 10^18 * ext_call.return_data[0]) + 10^18 / 2 * rate) / 2 * 2 * rate / 10^18
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            else:
                                                require return_data.size >= 32
                                                require ext_call.return_data[0]
                                                emit TokensPurchased(msg.value, s - ((2 * 10^18 * ext_call.return_data[0]) + 10^18 / 2 * rate) / 2 * 2 * rate / 10^18, msg.sender, arg1);
                                                call walletAddress with:
                                                   value msg.value wei
                                                     gas 2300 * is_zero(value) wei
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                else:
                                                    require stor0 == stor0
                                        else:
                                            require weiRaised + msg.value >= weiRaised
                                            weiRaised += msg.value
                                            require ext_code.size(tokenAddress)
                                            call tokenAddress.0x40c10f19 with:
                                                 gas gas_remaining wei
                                                args address(arg1), 0
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            else:
                                                require return_data.size >= 32
                                                require ext_call.return_data[0]
                                                emit TokensPurchased(msg.value, 0, msg.sender, arg1);
                                                call walletAddress with:
                                                   value msg.value wei
                                                     gas 2300 * is_zero(value) wei
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                else:
                                                    require stor0 == stor0
                                    else:
                                        require (2 * 10^18 * ext_call.return_data[0]) + 10^18 / 2 * rate <= 0
                                        if Mask(255, 1, -(2 * 10^18 * ext_call.return_data[0]) + 10^18 / 2 * rate):
                                            require -(2 * 10^18 * ext_call.return_data[0]) + 10^18 / 2 * rate / 2
                                            require -(2 * 10^18 * ext_call.return_data[0]) + 10^18 / 2 * rate / 2 * 2 * rate / -(2 * 10^18 * ext_call.return_data[0]) + 10^18 / 2 * rate / 2 == 2 * rate
                                            require weiRaised + msg.value >= weiRaised
                                            weiRaised += msg.value
                                            require ext_code.size(tokenAddress)
                                            call tokenAddress.0x40c10f19 with:
                                                 gas gas_remaining wei
                                                args address(arg1), -(2 * 10^18 * ext_call.return_data[0]) + 10^18 / 2 * rate / 2 * 2 * rate / 10^18
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            else:
                                                require return_data.size >= 32
                                                require ext_call.return_data[0]
                                                emit TokensPurchased(msg.value, -(2 * 10^18 * ext_call.return_data[0]) + 10^18 / 2 * rate / 2 * 2 * rate / 10^18, msg.sender, arg1);
                                                call walletAddress with:
                                                   value msg.value wei
                                                     gas 2300 * is_zero(value) wei
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                else:
                                                    require stor0 == stor0
                                        else:
                                            require weiRaised + msg.value >= weiRaised
                                            weiRaised += msg.value
                                            require ext_code.size(tokenAddress)
                                            call tokenAddress.0x40c10f19 with:
                                                 gas gas_remaining wei
                                                args address(arg1), 0
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            else:
                                                require return_data.size >= 32
                                                require ext_call.return_data[0]
                                                emit TokensPurchased(msg.value, 0, msg.sender, arg1);
                                                call walletAddress with:
                                                   value msg.value wei
                                                     gas 2300 * is_zero(value) wei
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                else:
                                                    require stor0 == stor0
                                else:
                                    require 2 * rate > 0
                                    require 2 * rate
                                    require ((2 * 10^18 * ext_call.return_data[0]) + 10^18 / 2 * rate * (2 * 10^18 * ext_call.return_data[0]) + 10^18 / 2 * rate / 10^18) + (0 / 2 * rate) >= (2 * 10^18 * ext_call.return_data[0]) + 10^18 / 2 * rate * (2 * 10^18 * ext_call.return_data[0]) + 10^18 / 2 * rate / 10^18
                                    if ((2 * 10^18 * ext_call.return_data[0]) + 10^18 / 2 * rate * (2 * 10^18 * ext_call.return_data[0]) + 10^18 / 2 * rate / 10^18) + (0 / 2 * rate):
                                        require ((2 * 10^18 * ext_call.return_data[0]) + 10^18 / 2 * rate * (2 * 10^18 * ext_call.return_data[0]) + 10^18 / 2 * rate / 10^18) + (0 / 2 * rate)
                                        require (10^18 * (2 * 10^18 * ext_call.return_data[0]) + 10^18 / 2 * rate * (2 * 10^18 * ext_call.return_data[0]) + 10^18 / 2 * rate / 10^18) + (10^18 * 0 / 2 * rate) / ((2 * 10^18 * ext_call.return_data[0]) + 10^18 / 2 * rate * (2 * 10^18 * ext_call.return_data[0]) + 10^18 / 2 * rate / 10^18) + (0 / 2 * rate) == 10^18
                                        s = (10^18 * (2 * 10^18 * ext_call.return_data[0]) + 10^18 / 2 * rate * (2 * 10^18 * ext_call.return_data[0]) + 10^18 / 2 * rate / 10^18) + (10^18 * 0 / 2 * rate)
                                        t = (10^18 * (2 * 10^18 * ext_call.return_data[0]) + 10^18 / 2 * rate * (2 * 10^18 * ext_call.return_data[0]) + 10^18 / 2 * rate / 10^18) + (10^18 * 0 / 2 * rate) + 1 / 2
                                        while t < s:
                                            require t > 0
                                            require t
                                            require ((10^18 * (2 * 10^18 * ext_call.return_data[0]) + 10^18 / 2 * rate * (2 * 10^18 * ext_call.return_data[0]) + 10^18 / 2 * rate / 10^18) + (10^18 * 0 / 2 * rate) / t) + t >= (10^18 * (2 * 10^18 * ext_call.return_data[0]) + 10^18 / 2 * rate * (2 * 10^18 * ext_call.return_data[0]) + 10^18 / 2 * rate / 10^18) + (10^18 * 0 / 2 * rate) / t
                                            s = t
                                            t = ((10^18 * (2 * 10^18 * ext_call.return_data[0]) + 10^18 / 2 * rate * (2 * 10^18 * ext_call.return_data[0]) + 10^18 / 2 * rate / 10^18) + (10^18 * 0 / 2 * rate) / t) + t / 2
                                            continue 
                                        require (2 * 10^18 * ext_call.return_data[0]) + 10^18 / 2 * rate <= s
                                        if Mask(255, 1, s - ((2 * 10^18 * ext_call.return_data[0]) + 10^18 / 2 * rate)):
                                            require s - ((2 * 10^18 * ext_call.return_data[0]) + 10^18 / 2 * rate) / 2
                                            require s - ((2 * 10^18 * ext_call.return_data[0]) + 10^18 / 2 * rate) / 2 * 2 * rate / s - ((2 * 10^18 * ext_call.return_data[0]) + 10^18 / 2 * rate) / 2 == 2 * rate
                                            require weiRaised + msg.value >= weiRaised
                                            weiRaised += msg.value
                                            require ext_code.size(tokenAddress)
                                            call tokenAddress.0x40c10f19 with:
                                                 gas gas_remaining wei
                                                args address(arg1), s - ((2 * 10^18 * ext_call.return_data[0]) + 10^18 / 2 * rate) / 2 * 2 * rate / 10^18
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            else:
                                                require return_data.size >= 32
                                                require ext_call.return_data[0]
                                                emit TokensPurchased(msg.value, s - ((2 * 10^18 * ext_call.return_data[0]) + 10^18 / 2 * rate) / 2 * 2 * rate / 10^18, msg.sender, arg1);
                                                call walletAddress with:
                                                   value msg.value wei
                                                     gas 2300 * is_zero(value) wei
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                else:
                                                    require stor0 == stor0
                                        else:
                                            require weiRaised + msg.value >= weiRaised
                                            weiRaised += msg.value
                                            require ext_code.size(tokenAddress)
                                            call tokenAddress.0x40c10f19 with:
                                                 gas gas_remaining wei
                                                args address(arg1), 0
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            else:
                                                require return_data.size >= 32
                                                require ext_call.return_data[0]
                                                emit TokensPurchased(msg.value, 0, msg.sender, arg1);
                                                call walletAddress with:
                                                   value msg.value wei
                                                     gas 2300 * is_zero(value) wei
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                else:
                                                    require stor0 == stor0
                                    else:
                                        require (2 * 10^18 * ext_call.return_data[0]) + 10^18 / 2 * rate <= 0
                                        if Mask(255, 1, -(2 * 10^18 * ext_call.return_data[0]) + 10^18 / 2 * rate):
                                            require -(2 * 10^18 * ext_call.return_data[0]) + 10^18 / 2 * rate / 2
                                            require -(2 * 10^18 * ext_call.return_data[0]) + 10^18 / 2 * rate / 2 * 2 * rate / -(2 * 10^18 * ext_call.return_data[0]) + 10^18 / 2 * rate / 2 == 2 * rate
                                            require weiRaised + msg.value >= weiRaised
                                            weiRaised += msg.value
                                            require ext_code.size(tokenAddress)
                                            call tokenAddress.0x40c10f19 with:
                                                 gas gas_remaining wei
                                                args address(arg1), -(2 * 10^18 * ext_call.return_data[0]) + 10^18 / 2 * rate / 2 * 2 * rate / 10^18
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            else:
                                                require return_data.size >= 32
                                                require ext_call.return_data[0]
                                                emit TokensPurchased(msg.value, -(2 * 10^18 * ext_call.return_data[0]) + 10^18 / 2 * rate / 2 * 2 * rate / 10^18, msg.sender, arg1);
                                                call walletAddress with:
                                                   value msg.value wei
                                                     gas 2300 * is_zero(value) wei
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                else:
                                                    require stor0 == stor0
                                        else:
                                            require weiRaised + msg.value >= weiRaised
                                            weiRaised += msg.value
                                            require ext_code.size(tokenAddress)
                                            call tokenAddress.0x40c10f19 with:
                                                 gas gas_remaining wei
                                                args address(arg1), 0
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            else:
                                                require return_data.size >= 32
                                                require ext_call.return_data[0]
                                                emit TokensPurchased(msg.value, 0, msg.sender, arg1);
                                                call walletAddress with:
                                                   value msg.value wei
                                                     gas 2300 * is_zero(value) wei
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                else:
                                                    require stor0 == stor0
                            else:
                                require 2 * rate > 0
                                require 2 * rate
                                require ((2 * 10^18 * ext_call.return_data[0]) + 10^18 / 2 * rate * (2 * 10^18 * ext_call.return_data[0]) + 10^18 / 2 * rate / 10^18) + (0 / 2 * rate) >= (2 * 10^18 * ext_call.return_data[0]) + 10^18 / 2 * rate * (2 * 10^18 * ext_call.return_data[0]) + 10^18 / 2 * rate / 10^18
                                if ((2 * 10^18 * ext_call.return_data[0]) + 10^18 / 2 * rate * (2 * 10^18 * ext_call.return_data[0]) + 10^18 / 2 * rate / 10^18) + (0 / 2 * rate):
                                    require ((2 * 10^18 * ext_call.return_data[0]) + 10^18 / 2 * rate * (2 * 10^18 * ext_call.return_data[0]) + 10^18 / 2 * rate / 10^18) + (0 / 2 * rate)
                                    require (10^18 * (2 * 10^18 * ext_call.return_data[0]) + 10^18 / 2 * rate * (2 * 10^18 * ext_call.return_data[0]) + 10^18 / 2 * rate / 10^18) + (10^18 * 0 / 2 * rate) / ((2 * 10^18 * ext_call.return_data[0]) + 10^18 / 2 * rate * (2 * 10^18 * ext_call.return_data[0]) + 10^18 / 2 * rate / 10^18) + (0 / 2 * rate) == 10^18
                                    s = (10^18 * (2 * 10^18 * ext_call.return_data[0]) + 10^18 / 2 * rate * (2 * 10^18 * ext_call.return_data[0]) + 10^18 / 2 * rate / 10^18) + (10^18 * 0 / 2 * rate)
                                    t = (10^18 * (2 * 10^18 * ext_call.return_data[0]) + 10^18 / 2 * rate * (2 * 10^18 * ext_call.return_data[0]) + 10^18 / 2 * rate / 10^18) + (10^18 * 0 / 2 * rate) + 1 / 2
                                    while t < s:
                                        require t > 0
                                        require t
                                        require ((10^18 * (2 * 10^18 * ext_call.return_data[0]) + 10^18 / 2 * rate * (2 * 10^18 * ext_call.return_data[0]) + 10^18 / 2 * rate / 10^18) + (10^18 * 0 / 2 * rate) / t) + t >= (10^18 * (2 * 10^18 * ext_call.return_data[0]) + 10^18 / 2 * rate * (2 * 10^18 * ext_call.return_data[0]) + 10^18 / 2 * rate / 10^18) + (10^18 * 0 / 2 * rate) / t
                                        s = t
                                        t = ((10^18 * (2 * 10^18 * ext_call.return_data[0]) + 10^18 / 2 * rate * (2 * 10^18 * ext_call.return_data[0]) + 10^18 / 2 * rate / 10^18) + (10^18 * 0 / 2 * rate) / t) + t / 2
                                        continue 
                                    require (2 * 10^18 * ext_call.return_data[0]) + 10^18 / 2 * rate <= s
                                    if Mask(255, 1, s - ((2 * 10^18 * ext_call.return_data[0]) + 10^18 / 2 * rate)):
                                        require s - ((2 * 10^18 * ext_call.return_data[0]) + 10^18 / 2 * rate) / 2
                                        require s - ((2 * 10^18 * ext_call.return_data[0]) + 10^18 / 2 * rate) / 2 * 2 * rate / s - ((2 * 10^18 * ext_call.return_data[0]) + 10^18 / 2 * rate) / 2 == 2 * rate
                                        require weiRaised + msg.value >= weiRaised
                                        weiRaised += msg.value
                                        require ext_code.size(tokenAddress)
                                        call tokenAddress.0x40c10f19 with:
                                             gas gas_remaining wei
                                            args address(arg1), s - ((2 * 10^18 * ext_call.return_data[0]) + 10^18 / 2 * rate) / 2 * 2 * rate / 10^18
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        else:
                                            require return_data.size >= 32
                                            require ext_call.return_data[0]
                                            emit TokensPurchased(msg.value, s - ((2 * 10^18 * ext_call.return_data[0]) + 10^18 / 2 * rate) / 2 * 2 * rate / 10^18, msg.sender, arg1);
                                            call walletAddress with:
                                               value msg.value wei
                                                 gas 2300 * is_zero(value) wei
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            else:
                                                require stor0 == stor0
                                    else:
                                        require weiRaised + msg.value >= weiRaised
                                        weiRaised += msg.value
                                        require ext_code.size(tokenAddress)
                                        call tokenAddress.0x40c10f19 with:
                                             gas gas_remaining wei
                                            args address(arg1), 0
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        else:
                                            require return_data.size >= 32
                                            require ext_call.return_data[0]
                                            emit TokensPurchased(msg.value, 0, msg.sender, arg1);
                                            call walletAddress with:
                                               value msg.value wei
                                                 gas 2300 * is_zero(value) wei
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            else:
                                                require stor0 == stor0
                                else:
                                    require (2 * 10^18 * ext_call.return_data[0]) + 10^18 / 2 * rate <= 0
                                    if Mask(255, 1, -(2 * 10^18 * ext_call.return_data[0]) + 10^18 / 2 * rate):
                                        require -(2 * 10^18 * ext_call.return_data[0]) + 10^18 / 2 * rate / 2
                                        require -(2 * 10^18 * ext_call.return_data[0]) + 10^18 / 2 * rate / 2 * 2 * rate / -(2 * 10^18 * ext_call.return_data[0]) + 10^18 / 2 * rate / 2 == 2 * rate
                                        require weiRaised + msg.value >= weiRaised
                                        weiRaised += msg.value
                                        require ext_code.size(tokenAddress)
                                        call tokenAddress.0x40c10f19 with:
                                             gas gas_remaining wei
                                            args address(arg1), -(2 * 10^18 * ext_call.return_data[0]) + 10^18 / 2 * rate / 2 * 2 * rate / 10^18
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        else:
                                            require return_data.size >= 32
                                            require ext_call.return_data[0]
                                            emit TokensPurchased(msg.value, -(2 * 10^18 * ext_call.return_data[0]) + 10^18 / 2 * rate / 2 * 2 * rate / 10^18, msg.sender, arg1);
                                            call walletAddress with:
                                               value msg.value wei
                                                 gas 2300 * is_zero(value) wei
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            else:
                                                require stor0 == stor0
                                    else:
                                        require weiRaised + msg.value >= weiRaised
                                        weiRaised += msg.value
                                        require ext_code.size(tokenAddress)
                                        call tokenAddress.0x40c10f19 with:
                                             gas gas_remaining wei
                                            args address(arg1), 0
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        else:
                                            require return_data.size >= 32
                                            require ext_call.return_data[0]
                                            emit TokensPurchased(msg.value, 0, msg.sender, arg1);
                                            call walletAddress with:
                                               value msg.value wei
                                                 gas 2300 * is_zero(value) wei
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            else:
                                                require stor0 == stor0
                        else:
                            if msg.value:
                                require msg.value
                                require 10^18 * msg.value / msg.value == 10^18
                                if 10^18 * msg.value:
                                    require 10^18 * msg.value
                                    require 4 * 10^18 * msg.value / 10^18 * msg.value == 4
                                    require 2 * rate > 0
                                    require 2 * rate
                                    require 4 * 10^18 * msg.value / 2 * rate >= 0
                                    if 4 * 10^18 * msg.value / 2 * rate:
                                        require 4 * 10^18 * msg.value / 2 * rate
                                        require 10^18 * 4 * 10^18 * msg.value / 2 * rate / 4 * 10^18 * msg.value / 2 * rate == 10^18
                                        require (10^18 * 4 * 10^18 * msg.value / 2 * rate) + 1 >= 10^18 * 4 * 10^18 * msg.value / 2 * rate
                                        s = 10^18 * 4 * 10^18 * msg.value / 2 * rate
                                        t = (10^18 * 4 * 10^18 * msg.value / 2 * rate) + 1 / 2
                                        while t < s:
                                            require t > 0
                                            require t
                                            require (10^18 * 4 * 10^18 * msg.value / 2 * rate / t) + t >= 10^18 * 4 * 10^18 * msg.value / 2 * rate / t
                                            s = t
                                            t = (10^18 * 4 * 10^18 * msg.value / 2 * rate / t) + t / 2
                                            continue 
                                        require (2 * 10^18 * ext_call.return_data[0]) + 10^18 / 2 * rate <= s
                                        if Mask(255, 1, s - ((2 * 10^18 * ext_call.return_data[0]) + 10^18 / 2 * rate)):
                                            require s - ((2 * 10^18 * ext_call.return_data[0]) + 10^18 / 2 * rate) / 2
                                            require s - ((2 * 10^18 * ext_call.return_data[0]) + 10^18 / 2 * rate) / 2 * 2 * rate / s - ((2 * 10^18 * ext_call.return_data[0]) + 10^18 / 2 * rate) / 2 == 2 * rate
                                            require weiRaised + msg.value >= weiRaised
                                            weiRaised += msg.value
                                            require ext_code.size(tokenAddress)
                                            call tokenAddress.0x40c10f19 with:
                                                 gas gas_remaining wei
                                                args address(arg1), s - ((2 * 10^18 * ext_call.return_data[0]) + 10^18 / 2 * rate) / 2 * 2 * rate / 10^18
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            else:
                                                require return_data.size >= 32
                                                require ext_call.return_data[0]
                                                emit TokensPurchased(msg.value, s - ((2 * 10^18 * ext_call.return_data[0]) + 10^18 / 2 * rate) / 2 * 2 * rate / 10^18, msg.sender, arg1);
                                                call walletAddress with:
                                                   value msg.value wei
                                                     gas 2300 * is_zero(value) wei
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                else:
                                                    require stor0 == stor0
                                        else:
                                            require weiRaised + msg.value >= weiRaised
                                            weiRaised += msg.value
                                            require ext_code.size(tokenAddress)
                                            call tokenAddress.0x40c10f19 with:
                                                 gas gas_remaining wei
                                                args address(arg1), 0
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            else:
                                                require return_data.size >= 32
                                                require ext_call.return_data[0]
                                                emit TokensPurchased(msg.value, 0, msg.sender, arg1);
                                                call walletAddress with:
                                                   value msg.value wei
                                                     gas 2300 * is_zero(value) wei
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                else:
                                                    require stor0 == stor0
                                    else:
                                        require (2 * 10^18 * ext_call.return_data[0]) + 10^18 / 2 * rate <= 0
                                        if Mask(255, 1, -(2 * 10^18 * ext_call.return_data[0]) + 10^18 / 2 * rate):
                                            require -(2 * 10^18 * ext_call.return_data[0]) + 10^18 / 2 * rate / 2
                                            require -(2 * 10^18 * ext_call.return_data[0]) + 10^18 / 2 * rate / 2 * 2 * rate / -(2 * 10^18 * ext_call.return_data[0]) + 10^18 / 2 * rate / 2 == 2 * rate
                                            require weiRaised + msg.value >= weiRaised
                                            weiRaised += msg.value
                                            require ext_code.size(tokenAddress)
                                            call tokenAddress.0x40c10f19 with:
                                                 gas gas_remaining wei
                                                args address(arg1), -(2 * 10^18 * ext_call.return_data[0]) + 10^18 / 2 * rate / 2 * 2 * rate / 10^18
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            else:
                                                require return_data.size >= 32
                                                require ext_call.return_data[0]
                                                emit TokensPurchased(msg.value, -(2 * 10^18 * ext_call.return_data[0]) + 10^18 / 2 * rate / 2 * 2 * rate / 10^18, msg.sender, arg1);
                                                call walletAddress with:
                                                   value msg.value wei
                                                     gas 2300 * is_zero(value) wei
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                else:
                                                    require stor0 == stor0
                                        else:
                                            require weiRaised + msg.value >= weiRaised
                                            weiRaised += msg.value
                                            require ext_code.size(tokenAddress)
                                            call tokenAddress.0x40c10f19 with:
                                                 gas gas_remaining wei
                                                args address(arg1), 0
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            else:
                                                require return_data.size >= 32
                                                require ext_call.return_data[0]
                                                emit TokensPurchased(msg.value, 0, msg.sender, arg1);
                                                call walletAddress with:
                                                   value msg.value wei
                                                     gas 2300 * is_zero(value) wei
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                else:
                                                    require stor0 == stor0
                                else:
                                    require 2 * rate > 0
                                    require 2 * rate
                                    require 0 / 2 * rate >= 0
                                    if 0 / 2 * rate:
                                        require 0 / 2 * rate
                                        require 10^18 * 0 / 2 * rate / 0 / 2 * rate == 10^18
                                        require (10^18 * 0 / 2 * rate) + 1 >= 10^18 * 0 / 2 * rate
                                        s = 10^18 * 0 / 2 * rate
                                        t = (10^18 * 0 / 2 * rate) + 1 / 2
                                        while t < s:
                                            require t > 0
                                            require t
                                            require (10^18 * 0 / 2 * rate / t) + t >= 10^18 * 0 / 2 * rate / t
                                            s = t
                                            t = (10^18 * 0 / 2 * rate / t) + t / 2
                                            continue 
                                        require (2 * 10^18 * ext_call.return_data[0]) + 10^18 / 2 * rate <= s
                                        if Mask(255, 1, s - ((2 * 10^18 * ext_call.return_data[0]) + 10^18 / 2 * rate)):
                                            require s - ((2 * 10^18 * ext_call.return_data[0]) + 10^18 / 2 * rate) / 2
                                            require s - ((2 * 10^18 * ext_call.return_data[0]) + 10^18 / 2 * rate) / 2 * 2 * rate / s - ((2 * 10^18 * ext_call.return_data[0]) + 10^18 / 2 * rate) / 2 == 2 * rate
                                            require weiRaised + msg.value >= weiRaised
                                            weiRaised += msg.value
                                            require ext_code.size(tokenAddress)
                                            call tokenAddress.0x40c10f19 with:
                                                 gas gas_remaining wei
                                                args address(arg1), s - ((2 * 10^18 * ext_call.return_data[0]) + 10^18 / 2 * rate) / 2 * 2 * rate / 10^18
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            else:
                                                require return_data.size >= 32
                                                require ext_call.return_data[0]
                                                emit TokensPurchased(msg.value, s - ((2 * 10^18 * ext_call.return_data[0]) + 10^18 / 2 * rate) / 2 * 2 * rate / 10^18, msg.sender, arg1);
                                                call walletAddress with:
                                                   value msg.value wei
                                                     gas 2300 * is_zero(value) wei
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                else:
                                                    require stor0 == stor0
                                        else:
                                            require weiRaised + msg.value >= weiRaised
                                            weiRaised += msg.value
                                            require ext_code.size(tokenAddress)
                                            call tokenAddress.0x40c10f19 with:
                                                 gas gas_remaining wei
                                                args address(arg1), 0
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            else:
                                                require return_data.size >= 32
                                                require ext_call.return_data[0]
                                                emit TokensPurchased(msg.value, 0, msg.sender, arg1);
                                                call walletAddress with:
                                                   value msg.value wei
                                                     gas 2300 * is_zero(value) wei
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                else:
                                                    require stor0 == stor0
                                    else:
                                        require (2 * 10^18 * ext_call.return_data[0]) + 10^18 / 2 * rate <= 0
                                        if Mask(255, 1, -(2 * 10^18 * ext_call.return_data[0]) + 10^18 / 2 * rate):
                                            require -(2 * 10^18 * ext_call.return_data[0]) + 10^18 / 2 * rate / 2
                                            require -(2 * 10^18 * ext_call.return_data[0]) + 10^18 / 2 * rate / 2 * 2 * rate / -(2 * 10^18 * ext_call.return_data[0]) + 10^18 / 2 * rate / 2 == 2 * rate
                                            require weiRaised + msg.value >= weiRaised
                                            weiRaised += msg.value
                                            require ext_code.size(tokenAddress)
                                            call tokenAddress.0x40c10f19 with:
                                                 gas gas_remaining wei
                                                args address(arg1), -(2 * 10^18 * ext_call.return_data[0]) + 10^18 / 2 * rate / 2 * 2 * rate / 10^18
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            else:
                                                require return_data.size >= 32
                                                require ext_call.return_data[0]
                                                emit TokensPurchased(msg.value, -(2 * 10^18 * ext_call.return_data[0]) + 10^18 / 2 * rate / 2 * 2 * rate / 10^18, msg.sender, arg1);
                                                call walletAddress with:
                                                   value msg.value wei
                                                     gas 2300 * is_zero(value) wei
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                else:
                                                    require stor0 == stor0
                                        else:
                                            require weiRaised + msg.value >= weiRaised
                                            weiRaised += msg.value
                                            require ext_code.size(tokenAddress)
                                            call tokenAddress.0x40c10f19 with:
                                                 gas gas_remaining wei
                                                args address(arg1), 0
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            else:
                                                require return_data.size >= 32
                                                require ext_call.return_data[0]
                                                emit TokensPurchased(msg.value, 0, msg.sender, arg1);
                                                call walletAddress with:
                                                   value msg.value wei
                                                     gas 2300 * is_zero(value) wei
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                else:
                                                    require stor0 == stor0
                            else:
                                require 2 * rate > 0
                                require 2 * rate
                                require 0 / 2 * rate >= 0
                                if 0 / 2 * rate:
                                    require 0 / 2 * rate
                                    require 10^18 * 0 / 2 * rate / 0 / 2 * rate == 10^18
                                    require (10^18 * 0 / 2 * rate) + 1 >= 10^18 * 0 / 2 * rate
                                    s = 10^18 * 0 / 2 * rate
                                    t = (10^18 * 0 / 2 * rate) + 1 / 2
                                    while t < s:
                                        require t > 0
                                        require t
                                        require (10^18 * 0 / 2 * rate / t) + t >= 10^18 * 0 / 2 * rate / t
                                        s = t
                                        t = (10^18 * 0 / 2 * rate / t) + t / 2
                                        continue 
                                    require (2 * 10^18 * ext_call.return_data[0]) + 10^18 / 2 * rate <= s
                                    if Mask(255, 1, s - ((2 * 10^18 * ext_call.return_data[0]) + 10^18 / 2 * rate)):
                                        require s - ((2 * 10^18 * ext_call.return_data[0]) + 10^18 / 2 * rate) / 2
                                        require s - ((2 * 10^18 * ext_call.return_data[0]) + 10^18 / 2 * rate) / 2 * 2 * rate / s - ((2 * 10^18 * ext_call.return_data[0]) + 10^18 / 2 * rate) / 2 == 2 * rate
                                        require weiRaised + msg.value >= weiRaised
                                        weiRaised += msg.value
                                        require ext_code.size(tokenAddress)
                                        call tokenAddress.0x40c10f19 with:
                                             gas gas_remaining wei
                                            args address(arg1), s - ((2 * 10^18 * ext_call.return_data[0]) + 10^18 / 2 * rate) / 2 * 2 * rate / 10^18
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        else:
                                            require return_data.size >= 32
                                            require ext_call.return_data[0]
                                            emit TokensPurchased(msg.value, s - ((2 * 10^18 * ext_call.return_data[0]) + 10^18 / 2 * rate) / 2 * 2 * rate / 10^18, msg.sender, arg1);
                                            call walletAddress with:
                                               value msg.value wei
                                                 gas 2300 * is_zero(value) wei
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            else:
                                                require stor0 == stor0
                                    else:
                                        require weiRaised + msg.value >= weiRaised
                                        weiRaised += msg.value
                                        require ext_code.size(tokenAddress)
                                        call tokenAddress.0x40c10f19 with:
                                             gas gas_remaining wei
                                            args address(arg1), 0
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        else:
                                            require return_data.size >= 32
                                            require ext_call.return_data[0]
                                            emit TokensPurchased(msg.value, 0, msg.sender, arg1);
                                            call walletAddress with:
                                               value msg.value wei
                                                 gas 2300 * is_zero(value) wei
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            else:
                                                require stor0 == stor0
                                else:
                                    require (2 * 10^18 * ext_call.return_data[0]) + 10^18 / 2 * rate <= 0
                                    if Mask(255, 1, -(2 * 10^18 * ext_call.return_data[0]) + 10^18 / 2 * rate):
                                        require -(2 * 10^18 * ext_call.return_data[0]) + 10^18 / 2 * rate / 2
                                        require -(2 * 10^18 * ext_call.return_data[0]) + 10^18 / 2 * rate / 2 * 2 * rate / -(2 * 10^18 * ext_call.return_data[0]) + 10^18 / 2 * rate / 2 == 2 * rate
                                        require weiRaised + msg.value >= weiRaised
                                        weiRaised += msg.value
                                        require ext_code.size(tokenAddress)
                                        call tokenAddress.0x40c10f19 with:
                                             gas gas_remaining wei
                                            args address(arg1), -(2 * 10^18 * ext_call.return_data[0]) + 10^18 / 2 * rate / 2 * 2 * rate / 10^18
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        else:
                                            require return_data.size >= 32
                                            require ext_call.return_data[0]
                                            emit TokensPurchased(msg.value, -(2 * 10^18 * ext_call.return_data[0]) + 10^18 / 2 * rate / 2 * 2 * rate / 10^18, msg.sender, arg1);
                                            call walletAddress with:
                                               value msg.value wei
                                                 gas 2300 * is_zero(value) wei
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            else:
                                                require stor0 == stor0
                                    else:
                                        require weiRaised + msg.value >= weiRaised
                                        weiRaised += msg.value
                                        require ext_code.size(tokenAddress)
                                        call tokenAddress.0x40c10f19 with:
                                             gas gas_remaining wei
                                            args address(arg1), 0
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        else:
                                            require return_data.size >= 32
                                            require ext_call.return_data[0]
                                            emit TokensPurchased(msg.value, 0, msg.sender, arg1);
                                            call walletAddress with:
                                               value msg.value wei
                                                 gas 2300 * is_zero(value) wei
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            else:
                                                require stor0 == stor0
                    else:
                        require 2 * rate > 0
                        require 2 * rate
                        if 10^18 / 2 * rate:
                            require 10^18 / 2 * rate
                            require 10^18 / 2 * rate * 10^18 / 2 * rate / 10^18 / 2 * rate == 10^18 / 2 * rate
                            if msg.value:
                                require msg.value
                                require 10^18 * msg.value / msg.value == 10^18
                                if 10^18 * msg.value:
                                    require 10^18 * msg.value
                                    require 4 * 10^18 * msg.value / 10^18 * msg.value == 4
                                    require 2 * rate > 0
                                    require 2 * rate
                                    require (10^18 / 2 * rate * 10^18 / 2 * rate / 10^18) + (4 * 10^18 * msg.value / 2 * rate) >= 10^18 / 2 * rate * 10^18 / 2 * rate / 10^18
                                    if (10^18 / 2 * rate * 10^18 / 2 * rate / 10^18) + (4 * 10^18 * msg.value / 2 * rate):
                                        require (10^18 / 2 * rate * 10^18 / 2 * rate / 10^18) + (4 * 10^18 * msg.value / 2 * rate)
                                        require (10^18 * 10^18 / 2 * rate * 10^18 / 2 * rate / 10^18) + (10^18 * 4 * 10^18 * msg.value / 2 * rate) / (10^18 / 2 * rate * 10^18 / 2 * rate / 10^18) + (4 * 10^18 * msg.value / 2 * rate) == 10^18
                                        s = (10^18 * 10^18 / 2 * rate * 10^18 / 2 * rate / 10^18) + (10^18 * 4 * 10^18 * msg.value / 2 * rate)
                                        t = (10^18 * 10^18 / 2 * rate * 10^18 / 2 * rate / 10^18) + (10^18 * 4 * 10^18 * msg.value / 2 * rate) + 1 / 2
                                        while t < s:
                                            require t > 0
                                            require t
                                            require ((10^18 * 10^18 / 2 * rate * 10^18 / 2 * rate / 10^18) + (10^18 * 4 * 10^18 * msg.value / 2 * rate) / t) + t >= (10^18 * 10^18 / 2 * rate * 10^18 / 2 * rate / 10^18) + (10^18 * 4 * 10^18 * msg.value / 2 * rate) / t
                                            s = t
                                            t = ((10^18 * 10^18 / 2 * rate * 10^18 / 2 * rate / 10^18) + (10^18 * 4 * 10^18 * msg.value / 2 * rate) / t) + t / 2
                                            continue 
                                        require 10^18 / 2 * rate <= s
                                        if Mask(255, 1, s - (10^18 / 2 * rate)):
                                            require s - (10^18 / 2 * rate) / 2
                                            require s - (10^18 / 2 * rate) / 2 * 2 * rate / s - (10^18 / 2 * rate) / 2 == 2 * rate
                                            require weiRaised + msg.value >= weiRaised
                                            weiRaised += msg.value
                                            require ext_code.size(tokenAddress)
                                            call tokenAddress.0x40c10f19 with:
                                                 gas gas_remaining wei
                                                args address(arg1), s - (10^18 / 2 * rate) / 2 * 2 * rate / 10^18
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            else:
                                                require return_data.size >= 32
                                                require ext_call.return_data[0]
                                                emit TokensPurchased(msg.value, s - (10^18 / 2 * rate) / 2 * 2 * rate / 10^18, msg.sender, arg1);
                                                call walletAddress with:
                                                   value msg.value wei
                                                     gas 2300 * is_zero(value) wei
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                else:
                                                    require stor0 == stor0
                                        else:
                                            require weiRaised + msg.value >= weiRaised
                                            weiRaised += msg.value
                                            require ext_code.size(tokenAddress)
                                            call tokenAddress.0x40c10f19 with:
                                                 gas gas_remaining wei
                                                args address(arg1), 0
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            else:
                                                require return_data.size >= 32
                                                require ext_call.return_data[0]
                                                emit TokensPurchased(msg.value, 0, msg.sender, arg1);
                                                call walletAddress with:
                                                   value msg.value wei
                                                     gas 2300 * is_zero(value) wei
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                else:
                                                    require stor0 == stor0
                                    else:
                                        require 10^18 / 2 * rate <= 0
                                        if Mask(255, 1, -10^18 / 2 * rate):
                                            require -10^18 / 2 * rate / 2
                                            require -10^18 / 2 * rate / 2 * 2 * rate / -10^18 / 2 * rate / 2 == 2 * rate
                                            require weiRaised + msg.value >= weiRaised
                                            weiRaised += msg.value
                                            require ext_code.size(tokenAddress)
                                            call tokenAddress.0x40c10f19 with:
                                                 gas gas_remaining wei
                                                args address(arg1), -10^18 / 2 * rate / 2 * 2 * rate / 10^18
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            else:
                                                require return_data.size >= 32
                                                require ext_call.return_data[0]
                                                emit TokensPurchased(msg.value, -10^18 / 2 * rate / 2 * 2 * rate / 10^18, msg.sender, arg1);
                                                call walletAddress with:
                                                   value msg.value wei
                                                     gas 2300 * is_zero(value) wei
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                else:
                                                    require stor0 == stor0
                                        else:
                                            require weiRaised + msg.value >= weiRaised
                                            weiRaised += msg.value
                                            require ext_code.size(tokenAddress)
                                            call tokenAddress.0x40c10f19 with:
                                                 gas gas_remaining wei
                                                args address(arg1), 0
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            else:
                                                require return_data.size >= 32
                                                require ext_call.return_data[0]
                                                emit TokensPurchased(msg.value, 0, msg.sender, arg1);
                                                call walletAddress with:
                                                   value msg.value wei
                                                     gas 2300 * is_zero(value) wei
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                else:
                                                    require stor0 == stor0
                                else:
                                    require 2 * rate > 0
                                    require 2 * rate
                                    require (10^18 / 2 * rate * 10^18 / 2 * rate / 10^18) + (0 / 2 * rate) >= 10^18 / 2 * rate * 10^18 / 2 * rate / 10^18
                                    if (10^18 / 2 * rate * 10^18 / 2 * rate / 10^18) + (0 / 2 * rate):
                                        require (10^18 / 2 * rate * 10^18 / 2 * rate / 10^18) + (0 / 2 * rate)
                                        require (10^18 * 10^18 / 2 * rate * 10^18 / 2 * rate / 10^18) + (10^18 * 0 / 2 * rate) / (10^18 / 2 * rate * 10^18 / 2 * rate / 10^18) + (0 / 2 * rate) == 10^18
                                        s = (10^18 * 10^18 / 2 * rate * 10^18 / 2 * rate / 10^18) + (10^18 * 0 / 2 * rate)
                                        t = (10^18 * 10^18 / 2 * rate * 10^18 / 2 * rate / 10^18) + (10^18 * 0 / 2 * rate) + 1 / 2
                                        while t < s:
                                            require t > 0
                                            require t
                                            require ((10^18 * 10^18 / 2 * rate * 10^18 / 2 * rate / 10^18) + (10^18 * 0 / 2 * rate) / t) + t >= (10^18 * 10^18 / 2 * rate * 10^18 / 2 * rate / 10^18) + (10^18 * 0 / 2 * rate) / t
                                            s = t
                                            t = ((10^18 * 10^18 / 2 * rate * 10^18 / 2 * rate / 10^18) + (10^18 * 0 / 2 * rate) / t) + t / 2
                                            continue 
                                        require 10^18 / 2 * rate <= s
                                        if Mask(255, 1, s - (10^18 / 2 * rate)):
                                            require s - (10^18 / 2 * rate) / 2
                                            require s - (10^18 / 2 * rate) / 2 * 2 * rate / s - (10^18 / 2 * rate) / 2 == 2 * rate
                                            require weiRaised + msg.value >= weiRaised
                                            weiRaised += msg.value
                                            require ext_code.size(tokenAddress)
                                            call tokenAddress.0x40c10f19 with:
                                                 gas gas_remaining wei
                                                args address(arg1), s - (10^18 / 2 * rate) / 2 * 2 * rate / 10^18
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            else:
                                                require return_data.size >= 32
                                                require ext_call.return_data[0]
                                                emit TokensPurchased(msg.value, s - (10^18 / 2 * rate) / 2 * 2 * rate / 10^18, msg.sender, arg1);
                                                call walletAddress with:
                                                   value msg.value wei
                                                     gas 2300 * is_zero(value) wei
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                else:
                                                    require stor0 == stor0
                                        else:
                                            require weiRaised + msg.value >= weiRaised
                                            weiRaised += msg.value
                                            require ext_code.size(tokenAddress)
                                            call tokenAddress.0x40c10f19 with:
                                                 gas gas_remaining wei
                                                args address(arg1), 0
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            else:
                                                require return_data.size >= 32
                                                require ext_call.return_data[0]
                                                emit TokensPurchased(msg.value, 0, msg.sender, arg1);
                                                call walletAddress with:
                                                   value msg.value wei
                                                     gas 2300 * is_zero(value) wei
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                else:
                                                    require stor0 == stor0
                                    else:
                                        require 10^18 / 2 * rate <= 0
                                        if Mask(255, 1, -10^18 / 2 * rate):
                                            require -10^18 / 2 * rate / 2
                                            require -10^18 / 2 * rate / 2 * 2 * rate / -10^18 / 2 * rate / 2 == 2 * rate
                                            require weiRaised + msg.value >= weiRaised
                                            weiRaised += msg.value
                                            require ext_code.size(tokenAddress)
                                            call tokenAddress.0x40c10f19 with:
                                                 gas gas_remaining wei
                                                args address(arg1), -10^18 / 2 * rate / 2 * 2 * rate / 10^18
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            else:
                                                require return_data.size >= 32
                                                require ext_call.return_data[0]
                                                emit TokensPurchased(msg.value, -10^18 / 2 * rate / 2 * 2 * rate / 10^18, msg.sender, arg1);
                                                call walletAddress with:
                                                   value msg.value wei
                                                     gas 2300 * is_zero(value) wei
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                else:
                                                    require stor0 == stor0
                                        else:
                                            require weiRaised + msg.value >= weiRaised
                                            weiRaised += msg.value
                                            require ext_code.size(tokenAddress)
                                            call tokenAddress.0x40c10f19 with:
                                                 gas gas_remaining wei
                                                args address(arg1), 0
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            else:
                                                require return_data.size >= 32
                                                require ext_call.return_data[0]
                                                emit TokensPurchased(msg.value, 0, msg.sender, arg1);
                                                call walletAddress with:
                                                   value msg.value wei
                                                     gas 2300 * is_zero(value) wei
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                else:
                                                    require stor0 == stor0
                            else:
                                require 2 * rate > 0
                                require 2 * rate
                                require (10^18 / 2 * rate * 10^18 / 2 * rate / 10^18) + (0 / 2 * rate) >= 10^18 / 2 * rate * 10^18 / 2 * rate / 10^18
                                if (10^18 / 2 * rate * 10^18 / 2 * rate / 10^18) + (0 / 2 * rate):
                                    require (10^18 / 2 * rate * 10^18 / 2 * rate / 10^18) + (0 / 2 * rate)
                                    require (10^18 * 10^18 / 2 * rate * 10^18 / 2 * rate / 10^18) + (10^18 * 0 / 2 * rate) / (10^18 / 2 * rate * 10^18 / 2 * rate / 10^18) + (0 / 2 * rate) == 10^18
                                    s = (10^18 * 10^18 / 2 * rate * 10^18 / 2 * rate / 10^18) + (10^18 * 0 / 2 * rate)
                                    t = (10^18 * 10^18 / 2 * rate * 10^18 / 2 * rate / 10^18) + (10^18 * 0 / 2 * rate) + 1 / 2
                                    while t < s:
                                        require t > 0
                                        require t
                                        require ((10^18 * 10^18 / 2 * rate * 10^18 / 2 * rate / 10^18) + (10^18 * 0 / 2 * rate) / t) + t >= (10^18 * 10^18 / 2 * rate * 10^18 / 2 * rate / 10^18) + (10^18 * 0 / 2 * rate) / t
                                        s = t
                                        t = ((10^18 * 10^18 / 2 * rate * 10^18 / 2 * rate / 10^18) + (10^18 * 0 / 2 * rate) / t) + t / 2
                                        continue 
                                    require 10^18 / 2 * rate <= s
                                    if Mask(255, 1, s - (10^18 / 2 * rate)):
                                        require s - (10^18 / 2 * rate) / 2
                                        require s - (10^18 / 2 * rate) / 2 * 2 * rate / s - (10^18 / 2 * rate) / 2 == 2 * rate
                                        require weiRaised + msg.value >= weiRaised
                                        weiRaised += msg.value
                                        require ext_code.size(tokenAddress)
                                        call tokenAddress.0x40c10f19 with:
                                             gas gas_remaining wei
                                            args address(arg1), s - (10^18 / 2 * rate) / 2 * 2 * rate / 10^18
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        else:
                                            require return_data.size >= 32
                                            require ext_call.return_data[0]
                                            emit TokensPurchased(msg.value, s - (10^18 / 2 * rate) / 2 * 2 * rate / 10^18, msg.sender, arg1);
                                            call walletAddress with:
                                               value msg.value wei
                                                 gas 2300 * is_zero(value) wei
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            else:
                                                require stor0 == stor0
                                    else:
                                        require weiRaised + msg.value >= weiRaised
                                        weiRaised += msg.value
                                        require ext_code.size(tokenAddress)
                                        call tokenAddress.0x40c10f19 with:
                                             gas gas_remaining wei
                                            args address(arg1), 0
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        else:
                                            require return_data.size >= 32
                                            require ext_call.return_data[0]
                                            emit TokensPurchased(msg.value, 0, msg.sender, arg1);
                                            call walletAddress with:
                                               value msg.value wei
                                                 gas 2300 * is_zero(value) wei
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            else:
                                                require stor0 == stor0
                                else:
                                    require 10^18 / 2 * rate <= 0
                                    if Mask(255, 1, -10^18 / 2 * rate):
                                        require -10^18 / 2 * rate / 2
                                        require -10^18 / 2 * rate / 2 * 2 * rate / -10^18 / 2 * rate / 2 == 2 * rate
                                        require weiRaised + msg.value >= weiRaised
                                        weiRaised += msg.value
                                        require ext_code.size(tokenAddress)
                                        call tokenAddress.0x40c10f19 with:
                                             gas gas_remaining wei
                                            args address(arg1), -10^18 / 2 * rate / 2 * 2 * rate / 10^18
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        else:
                                            require return_data.size >= 32
                                            require ext_call.return_data[0]
                                            emit TokensPurchased(msg.value, -10^18 / 2 * rate / 2 * 2 * rate / 10^18, msg.sender, arg1);
                                            call walletAddress with:
                                               value msg.value wei
                                                 gas 2300 * is_zero(value) wei
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            else:
                                                require stor0 == stor0
                                    else:
                                        require weiRaised + msg.value >= weiRaised
                                        weiRaised += msg.value
                                        require ext_code.size(tokenAddress)
                                        call tokenAddress.0x40c10f19 with:
                                             gas gas_remaining wei
                                            args address(arg1), 0
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        else:
                                            require return_data.size >= 32
                                            require ext_call.return_data[0]
                                            emit TokensPurchased(msg.value, 0, msg.sender, arg1);
                                            call walletAddress with:
                                               value msg.value wei
                                                 gas 2300 * is_zero(value) wei
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            else:
                                                require stor0 == stor0
                        else:
                            if msg.value:
                                require msg.value
                                require 10^18 * msg.value / msg.value == 10^18
                                if 10^18 * msg.value:
                                    require 10^18 * msg.value
                                    require 4 * 10^18 * msg.value / 10^18 * msg.value == 4
                                    require 2 * rate > 0
                                    require 2 * rate
                                    require 4 * 10^18 * msg.value / 2 * rate >= 0
                                    if 4 * 10^18 * msg.value / 2 * rate:
                                        require 4 * 10^18 * msg.value / 2 * rate
                                        require 10^18 * 4 * 10^18 * msg.value / 2 * rate / 4 * 10^18 * msg.value / 2 * rate == 10^18
                                        require (10^18 * 4 * 10^18 * msg.value / 2 * rate) + 1 >= 10^18 * 4 * 10^18 * msg.value / 2 * rate
                                        s = 10^18 * 4 * 10^18 * msg.value / 2 * rate
                                        t = (10^18 * 4 * 10^18 * msg.value / 2 * rate) + 1 / 2
                                        while t < s:
                                            require t > 0
                                            require t
                                            require (10^18 * 4 * 10^18 * msg.value / 2 * rate / t) + t >= 10^18 * 4 * 10^18 * msg.value / 2 * rate / t
                                            s = t
                                            t = (10^18 * 4 * 10^18 * msg.value / 2 * rate / t) + t / 2
                                            continue 
                                        require 10^18 / 2 * rate <= s
                                        if Mask(255, 1, s - (10^18 / 2 * rate)):
                                            require s - (10^18 / 2 * rate) / 2
                                            require s - (10^18 / 2 * rate) / 2 * 2 * rate / s - (10^18 / 2 * rate) / 2 == 2 * rate
                                            require weiRaised + msg.value >= weiRaised
                                            weiRaised += msg.value
                                            require ext_code.size(tokenAddress)
                                            call tokenAddress.0x40c10f19 with:
                                                 gas gas_remaining wei
                                                args address(arg1), s - (10^18 / 2 * rate) / 2 * 2 * rate / 10^18
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            else:
                                                require return_data.size >= 32
                                                require ext_call.return_data[0]
                                                emit TokensPurchased(msg.value, s - (10^18 / 2 * rate) / 2 * 2 * rate / 10^18, msg.sender, arg1);
                                                call walletAddress with:
                                                   value msg.value wei
                                                     gas 2300 * is_zero(value) wei
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                else:
                                                    require stor0 == stor0
                                        else:
                                            require weiRaised + msg.value >= weiRaised
                                            weiRaised += msg.value
                                            require ext_code.size(tokenAddress)
                                            call tokenAddress.0x40c10f19 with:
                                                 gas gas_remaining wei
                                                args address(arg1), 0
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            else:
                                                require return_data.size >= 32
                                                require ext_call.return_data[0]
                                                emit TokensPurchased(msg.value, 0, msg.sender, arg1);
                                                call walletAddress with:
                                                   value msg.value wei
                                                     gas 2300 * is_zero(value) wei
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                else:
                                                    require stor0 == stor0
                                    else:
                                        require 10^18 / 2 * rate <= 0
                                        if Mask(255, 1, -10^18 / 2 * rate):
                                            require -10^18 / 2 * rate / 2
                                            require -10^18 / 2 * rate / 2 * 2 * rate / -10^18 / 2 * rate / 2 == 2 * rate
                                            require weiRaised + msg.value >= weiRaised
                                            weiRaised += msg.value
                                            require ext_code.size(tokenAddress)
                                            call tokenAddress.0x40c10f19 with:
                                                 gas gas_remaining wei
                                                args address(arg1), -10^18 / 2 * rate / 2 * 2 * rate / 10^18
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            else:
                                                require return_data.size >= 32
                                                require ext_call.return_data[0]
                                                emit TokensPurchased(msg.value, -10^18 / 2 * rate / 2 * 2 * rate / 10^18, msg.sender, arg1);
                                                call walletAddress with:
                                                   value msg.value wei
                                                     gas 2300 * is_zero(value) wei
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                else:
                                                    require stor0 == stor0
                                        else:
                                            require weiRaised + msg.value >= weiRaised
                                            weiRaised += msg.value
                                            require ext_code.size(tokenAddress)
                                            call tokenAddress.0x40c10f19 with:
                                                 gas gas_remaining wei
                                                args address(arg1), 0
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            else:
                                                require return_data.size >= 32
                                                require ext_call.return_data[0]
                                                emit TokensPurchased(msg.value, 0, msg.sender, arg1);
                                                call walletAddress with:
                                                   value msg.value wei
                                                     gas 2300 * is_zero(value) wei
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                else:
                                                    require stor0 == stor0
                                else:
                                    require 2 * rate > 0
                                    require 2 * rate
                                    require 0 / 2 * rate >= 0
                                    if 0 / 2 * rate:
                                        require 0 / 2 * rate
                                        require 10^18 * 0 / 2 * rate / 0 / 2 * rate == 10^18
                                        require (10^18 * 0 / 2 * rate) + 1 >= 10^18 * 0 / 2 * rate
                                        s = 10^18 * 0 / 2 * rate
                                        t = (10^18 * 0 / 2 * rate) + 1 / 2
                                        while t < s:
                                            require t > 0
                                            require t
                                            require (10^18 * 0 / 2 * rate / t) + t >= 10^18 * 0 / 2 * rate / t
                                            s = t
                                            t = (10^18 * 0 / 2 * rate / t) + t / 2
                                            continue 
                                        require 10^18 / 2 * rate <= s
                                        if Mask(255, 1, s - (10^18 / 2 * rate)):
                                            require s - (10^18 / 2 * rate) / 2
                                            require s - (10^18 / 2 * rate) / 2 * 2 * rate / s - (10^18 / 2 * rate) / 2 == 2 * rate
                                            require weiRaised + msg.value >= weiRaised
                                            weiRaised += msg.value
                                            require ext_code.size(tokenAddress)
                                            call tokenAddress.0x40c10f19 with:
                                                 gas gas_remaining wei
                                                args address(arg1), s - (10^18 / 2 * rate) / 2 * 2 * rate / 10^18
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            else:
                                                require return_data.size >= 32
                                                require ext_call.return_data[0]
                                                emit TokensPurchased(msg.value, s - (10^18 / 2 * rate) / 2 * 2 * rate / 10^18, msg.sender, arg1);
                                                call walletAddress with:
                                                   value msg.value wei
                                                     gas 2300 * is_zero(value) wei
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                else:
                                                    require stor0 == stor0
                                        else:
                                            require weiRaised + msg.value >= weiRaised
                                            weiRaised += msg.value
                                            require ext_code.size(tokenAddress)
                                            call tokenAddress.0x40c10f19 with:
                                                 gas gas_remaining wei
                                                args address(arg1), 0
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            else:
                                                require return_data.size >= 32
                                                require ext_call.return_data[0]
                                                emit TokensPurchased(msg.value, 0, msg.sender, arg1);
                                                call walletAddress with:
                                                   value msg.value wei
                                                     gas 2300 * is_zero(value) wei
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                else:
                                                    require stor0 == stor0
                                    else:
                                        require 10^18 / 2 * rate <= 0
                                        if Mask(255, 1, -10^18 / 2 * rate):
                                            require -10^18 / 2 * rate / 2
                                            require -10^18 / 2 * rate / 2 * 2 * rate / -10^18 / 2 * rate / 2 == 2 * rate
                                            require weiRaised + msg.value >= weiRaised
                                            weiRaised += msg.value
                                            require ext_code.size(tokenAddress)
                                            call tokenAddress.0x40c10f19 with:
                                                 gas gas_remaining wei
                                                args address(arg1), -10^18 / 2 * rate / 2 * 2 * rate / 10^18
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            else:
                                                require return_data.size >= 32
                                                require ext_call.return_data[0]
                                                emit TokensPurchased(msg.value, -10^18 / 2 * rate / 2 * 2 * rate / 10^18, msg.sender, arg1);
                                                call walletAddress with:
                                                   value msg.value wei
                                                     gas 2300 * is_zero(value) wei
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                else:
                                                    require stor0 == stor0
                                        else:
                                            require weiRaised + msg.value >= weiRaised
                                            weiRaised += msg.value
                                            require ext_code.size(tokenAddress)
                                            call tokenAddress.0x40c10f19 with:
                                                 gas gas_remaining wei
                                                args address(arg1), 0
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            else:
                                                require return_data.size >= 32
                                                require ext_call.return_data[0]
                                                emit TokensPurchased(msg.value, 0, msg.sender, arg1);
                                                call walletAddress with:
                                                   value msg.value wei
                                                     gas 2300 * is_zero(value) wei
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                else:
                                                    require stor0 == stor0
                            else:
                                require 2 * rate > 0
                                require 2 * rate
                                require 0 / 2 * rate >= 0
                                if 0 / 2 * rate:
                                    require 0 / 2 * rate
                                    require 10^18 * 0 / 2 * rate / 0 / 2 * rate == 10^18
                                    require (10^18 * 0 / 2 * rate) + 1 >= 10^18 * 0 / 2 * rate
                                    s = 10^18 * 0 / 2 * rate
                                    t = (10^18 * 0 / 2 * rate) + 1 / 2
                                    while t < s:
                                        require t > 0
                                        require t
                                        require (10^18 * 0 / 2 * rate / t) + t >= 10^18 * 0 / 2 * rate / t
                                        s = t
                                        t = (10^18 * 0 / 2 * rate / t) + t / 2
                                        continue 
                                    require 10^18 / 2 * rate <= s
                                    if Mask(255, 1, s - (10^18 / 2 * rate)):
                                        require s - (10^18 / 2 * rate) / 2
                                        require s - (10^18 / 2 * rate) / 2 * 2 * rate / s - (10^18 / 2 * rate) / 2 == 2 * rate
                                        require weiRaised + msg.value >= weiRaised
                                        weiRaised += msg.value
                                        require ext_code.size(tokenAddress)
                                        call tokenAddress.0x40c10f19 with:
                                             gas gas_remaining wei
                                            args address(arg1), s - (10^18 / 2 * rate) / 2 * 2 * rate / 10^18
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        else:
                                            require return_data.size >= 32
                                            require ext_call.return_data[0]
                                            emit TokensPurchased(msg.value, s - (10^18 / 2 * rate) / 2 * 2 * rate / 10^18, msg.sender, arg1);
                                            call walletAddress with:
                                               value msg.value wei
                                                 gas 2300 * is_zero(value) wei
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            else:
                                                require stor0 == stor0
                                    else:
                                        require weiRaised + msg.value >= weiRaised
                                        weiRaised += msg.value
                                        require ext_code.size(tokenAddress)
                                        call tokenAddress.0x40c10f19 with:
                                             gas gas_remaining wei
                                            args address(arg1), 0
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        else:
                                            require return_data.size >= 32
                                            require ext_call.return_data[0]
                                            emit TokensPurchased(msg.value, 0, msg.sender, arg1);
                                            call walletAddress with:
                                               value msg.value wei
                                                 gas 2300 * is_zero(value) wei
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            else:
                                                require stor0 == stor0
                                else:
                                    require 10^18 / 2 * rate <= 0
                                    if Mask(255, 1, -10^18 / 2 * rate):
                                        require -10^18 / 2 * rate / 2
                                        require -10^18 / 2 * rate / 2 * 2 * rate / -10^18 / 2 * rate / 2 == 2 * rate
                                        require weiRaised + msg.value >= weiRaised
                                        weiRaised += msg.value
                                        require ext_code.size(tokenAddress)
                                        call tokenAddress.0x40c10f19 with:
                                             gas gas_remaining wei
                                            args address(arg1), -10^18 / 2 * rate / 2 * 2 * rate / 10^18
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        else:
                                            require return_data.size >= 32
                                            require ext_call.return_data[0]
                                            emit TokensPurchased(msg.value, -10^18 / 2 * rate / 2 * 2 * rate / 10^18, msg.sender, arg1);
                                            call walletAddress with:
                                               value msg.value wei
                                                 gas 2300 * is_zero(value) wei
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            else:
                                                require stor0 == stor0
                                    else:
                                        require weiRaised + msg.value >= weiRaised
                                        weiRaised += msg.value
                                        require ext_code.size(tokenAddress)
                                        call tokenAddress.0x40c10f19 with:
                                             gas gas_remaining wei
                                            args address(arg1), 0
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        else:
                                            require return_data.size >= 32
                                            require ext_call.return_data[0]
                                            emit TokensPurchased(msg.value, 0, msg.sender, arg1);
                                            call walletAddress with:
                                               value msg.value wei
                                                 gas 2300 * is_zero(value) wei
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            else:
                                                require stor0 == stor0
                else:
                    require 2 * rate > 0
                    require 2 * rate
                    if 10^18 / 2 * rate:
                        require 10^18 / 2 * rate
                        require 10^18 / 2 * rate * 10^18 / 2 * rate / 10^18 / 2 * rate == 10^18 / 2 * rate
                        if msg.value:
                            require msg.value
                            require 10^18 * msg.value / msg.value == 10^18
                            if 10^18 * msg.value:
                                require 10^18 * msg.value
                                require 4 * 10^18 * msg.value / 10^18 * msg.value == 4
                                require 2 * rate > 0
                                require 2 * rate
                                require (10^18 / 2 * rate * 10^18 / 2 * rate / 10^18) + (4 * 10^18 * msg.value / 2 * rate) >= 10^18 / 2 * rate * 10^18 / 2 * rate / 10^18
                                if (10^18 / 2 * rate * 10^18 / 2 * rate / 10^18) + (4 * 10^18 * msg.value / 2 * rate):
                                    require (10^18 / 2 * rate * 10^18 / 2 * rate / 10^18) + (4 * 10^18 * msg.value / 2 * rate)
                                    require (10^18 * 10^18 / 2 * rate * 10^18 / 2 * rate / 10^18) + (10^18 * 4 * 10^18 * msg.value / 2 * rate) / (10^18 / 2 * rate * 10^18 / 2 * rate / 10^18) + (4 * 10^18 * msg.value / 2 * rate) == 10^18
                                    s = (10^18 * 10^18 / 2 * rate * 10^18 / 2 * rate / 10^18) + (10^18 * 4 * 10^18 * msg.value / 2 * rate)
                                    t = (10^18 * 10^18 / 2 * rate * 10^18 / 2 * rate / 10^18) + (10^18 * 4 * 10^18 * msg.value / 2 * rate) + 1 / 2
                                    while t < s:
                                        require t > 0
                                        require t
                                        require ((10^18 * 10^18 / 2 * rate * 10^18 / 2 * rate / 10^18) + (10^18 * 4 * 10^18 * msg.value / 2 * rate) / t) + t >= (10^18 * 10^18 / 2 * rate * 10^18 / 2 * rate / 10^18) + (10^18 * 4 * 10^18 * msg.value / 2 * rate) / t
                                        s = t
                                        t = ((10^18 * 10^18 / 2 * rate * 10^18 / 2 * rate / 10^18) + (10^18 * 4 * 10^18 * msg.value / 2 * rate) / t) + t / 2
                                        continue 
                                    require 10^18 / 2 * rate <= s
                                    if Mask(255, 1, s - (10^18 / 2 * rate)):
                                        require s - (10^18 / 2 * rate) / 2
                                        require s - (10^18 / 2 * rate) / 2 * 2 * rate / s - (10^18 / 2 * rate) / 2 == 2 * rate
                                        require weiRaised + msg.value >= weiRaised
                                        weiRaised += msg.value
                                        require ext_code.size(tokenAddress)
                                        call tokenAddress.0x40c10f19 with:
                                             gas gas_remaining wei
                                            args address(arg1), s - (10^18 / 2 * rate) / 2 * 2 * rate / 10^18
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        else:
                                            require return_data.size >= 32
                                            require ext_call.return_data[0]
                                            emit TokensPurchased(msg.value, s - (10^18 / 2 * rate) / 2 * 2 * rate / 10^18, msg.sender, arg1);
                                            call walletAddress with:
                                               value msg.value wei
                                                 gas 2300 * is_zero(value) wei
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            else:
                                                require stor0 == stor0
                                    else:
                                        require weiRaised + msg.value >= weiRaised
                                        weiRaised += msg.value
                                        require ext_code.size(tokenAddress)
                                        call tokenAddress.0x40c10f19 with:
                                             gas gas_remaining wei
                                            args address(arg1), 0
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        else:
                                            require return_data.size >= 32
                                            require ext_call.return_data[0]
                                            emit TokensPurchased(msg.value, 0, msg.sender, arg1);
                                            call walletAddress with:
                                               value msg.value wei
                                                 gas 2300 * is_zero(value) wei
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            else:
                                                require stor0 == stor0
                                else:
                                    require 10^18 / 2 * rate <= 0
                                    if Mask(255, 1, -10^18 / 2 * rate):
                                        require -10^18 / 2 * rate / 2
                                        require -10^18 / 2 * rate / 2 * 2 * rate / -10^18 / 2 * rate / 2 == 2 * rate
                                        require weiRaised + msg.value >= weiRaised
                                        weiRaised += msg.value
                                        require ext_code.size(tokenAddress)
                                        call tokenAddress.0x40c10f19 with:
                                             gas gas_remaining wei
                                            args address(arg1), -10^18 / 2 * rate / 2 * 2 * rate / 10^18
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        else:
                                            require return_data.size >= 32
                                            require ext_call.return_data[0]
                                            emit TokensPurchased(msg.value, -10^18 / 2 * rate / 2 * 2 * rate / 10^18, msg.sender, arg1);
                                            call walletAddress with:
                                               value msg.value wei
                                                 gas 2300 * is_zero(value) wei
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            else:
                                                require stor0 == stor0
                                    else:
                                        require weiRaised + msg.value >= weiRaised
                                        weiRaised += msg.value
                                        require ext_code.size(tokenAddress)
                                        call tokenAddress.0x40c10f19 with:
                                             gas gas_remaining wei
                                            args address(arg1), 0
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        else:
                                            require return_data.size >= 32
                                            require ext_call.return_data[0]
                                            emit TokensPurchased(msg.value, 0, msg.sender, arg1);
                                            call walletAddress with:
                                               value msg.value wei
                                                 gas 2300 * is_zero(value) wei
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            else:
                                                require stor0 == stor0
                            else:
                                require 2 * rate > 0
                                require 2 * rate
                                require (10^18 / 2 * rate * 10^18 / 2 * rate / 10^18) + (0 / 2 * rate) >= 10^18 / 2 * rate * 10^18 / 2 * rate / 10^18
                                if (10^18 / 2 * rate * 10^18 / 2 * rate / 10^18) + (0 / 2 * rate):
                                    require (10^18 / 2 * rate * 10^18 / 2 * rate / 10^18) + (0 / 2 * rate)
                                    require (10^18 * 10^18 / 2 * rate * 10^18 / 2 * rate / 10^18) + (10^18 * 0 / 2 * rate) / (10^18 / 2 * rate * 10^18 / 2 * rate / 10^18) + (0 / 2 * rate) == 10^18
                                    s = (10^18 * 10^18 / 2 * rate * 10^18 / 2 * rate / 10^18) + (10^18 * 0 / 2 * rate)
                                    t = (10^18 * 10^18 / 2 * rate * 10^18 / 2 * rate / 10^18) + (10^18 * 0 / 2 * rate) + 1 / 2
                                    while t < s:
                                        require t > 0
                                        require t
                                        require ((10^18 * 10^18 / 2 * rate * 10^18 / 2 * rate / 10^18) + (10^18 * 0 / 2 * rate) / t) + t >= (10^18 * 10^18 / 2 * rate * 10^18 / 2 * rate / 10^18) + (10^18 * 0 / 2 * rate) / t
                                        s = t
                                        t = ((10^18 * 10^18 / 2 * rate * 10^18 / 2 * rate / 10^18) + (10^18 * 0 / 2 * rate) / t) + t / 2
                                        continue 
                                    require 10^18 / 2 * rate <= s
                                    if Mask(255, 1, s - (10^18 / 2 * rate)):
                                        require s - (10^18 / 2 * rate) / 2
                                        require s - (10^18 / 2 * rate) / 2 * 2 * rate / s - (10^18 / 2 * rate) / 2 == 2 * rate
                                        require weiRaised + msg.value >= weiRaised
                                        weiRaised += msg.value
                                        require ext_code.size(tokenAddress)
                                        call tokenAddress.0x40c10f19 with:
                                             gas gas_remaining wei
                                            args address(arg1), s - (10^18 / 2 * rate) / 2 * 2 * rate / 10^18
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        else:
                                            require return_data.size >= 32
                                            require ext_call.return_data[0]
                                            emit TokensPurchased(msg.value, s - (10^18 / 2 * rate) / 2 * 2 * rate / 10^18, msg.sender, arg1);
                                            call walletAddress with:
                                               value msg.value wei
                                                 gas 2300 * is_zero(value) wei
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            else:
                                                require stor0 == stor0
                                    else:
                                        require weiRaised + msg.value >= weiRaised
                                        weiRaised += msg.value
                                        require ext_code.size(tokenAddress)
                                        call tokenAddress.0x40c10f19 with:
                                             gas gas_remaining wei
                                            args address(arg1), 0
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        else:
                                            require return_data.size >= 32
                                            require ext_call.return_data[0]
                                            emit TokensPurchased(msg.value, 0, msg.sender, arg1);
                                            call walletAddress with:
                                               value msg.value wei
                                                 gas 2300 * is_zero(value) wei
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            else:
                                                require stor0 == stor0
                                else:
                                    require 10^18 / 2 * rate <= 0
                                    if Mask(255, 1, -10^18 / 2 * rate):
                                        require -10^18 / 2 * rate / 2
                                        require -10^18 / 2 * rate / 2 * 2 * rate / -10^18 / 2 * rate / 2 == 2 * rate
                                        require weiRaised + msg.value >= weiRaised
                                        weiRaised += msg.value
                                        require ext_code.size(tokenAddress)
                                        call tokenAddress.0x40c10f19 with:
                                             gas gas_remaining wei
                                            args address(arg1), -10^18 / 2 * rate / 2 * 2 * rate / 10^18
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        else:
                                            require return_data.size >= 32
                                            require ext_call.return_data[0]
                                            emit TokensPurchased(msg.value, -10^18 / 2 * rate / 2 * 2 * rate / 10^18, msg.sender, arg1);
                                            call walletAddress with:
                                               value msg.value wei
                                                 gas 2300 * is_zero(value) wei
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            else:
                                                require stor0 == stor0
                                    else:
                                        require weiRaised + msg.value >= weiRaised
                                        weiRaised += msg.value
                                        require ext_code.size(tokenAddress)
                                        call tokenAddress.0x40c10f19 with:
                                             gas gas_remaining wei
                                            args address(arg1), 0
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        else:
                                            require return_data.size >= 32
                                            require ext_call.return_data[0]
                                            emit TokensPurchased(msg.value, 0, msg.sender, arg1);
                                            call walletAddress with:
                                               value msg.value wei
                                                 gas 2300 * is_zero(value) wei
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            else:
                                                require stor0 == stor0
                        else:
                            require 2 * rate > 0
                            require 2 * rate
                            require (10^18 / 2 * rate * 10^18 / 2 * rate / 10^18) + (0 / 2 * rate) >= 10^18 / 2 * rate * 10^18 / 2 * rate / 10^18
                            if (10^18 / 2 * rate * 10^18 / 2 * rate / 10^18) + (0 / 2 * rate):
                                require (10^18 / 2 * rate * 10^18 / 2 * rate / 10^18) + (0 / 2 * rate)
                                require (10^18 * 10^18 / 2 * rate * 10^18 / 2 * rate / 10^18) + (10^18 * 0 / 2 * rate) / (10^18 / 2 * rate * 10^18 / 2 * rate / 10^18) + (0 / 2 * rate) == 10^18
                                s = (10^18 * 10^18 / 2 * rate * 10^18 / 2 * rate / 10^18) + (10^18 * 0 / 2 * rate)
                                t = (10^18 * 10^18 / 2 * rate * 10^18 / 2 * rate / 10^18) + (10^18 * 0 / 2 * rate) + 1 / 2
                                while t < s:
                                    require t > 0
                                    require t
                                    require ((10^18 * 10^18 / 2 * rate * 10^18 / 2 * rate / 10^18) + (10^18 * 0 / 2 * rate) / t) + t >= (10^18 * 10^18 / 2 * rate * 10^18 / 2 * rate / 10^18) + (10^18 * 0 / 2 * rate) / t
                                    s = t
                                    t = ((10^18 * 10^18 / 2 * rate * 10^18 / 2 * rate / 10^18) + (10^18 * 0 / 2 * rate) / t) + t / 2
                                    continue 
                                require 10^18 / 2 * rate <= s
                                if Mask(255, 1, s - (10^18 / 2 * rate)):
                                    require s - (10^18 / 2 * rate) / 2
                                    require s - (10^18 / 2 * rate) / 2 * 2 * rate / s - (10^18 / 2 * rate) / 2 == 2 * rate
                                    require weiRaised + msg.value >= weiRaised
                                    weiRaised += msg.value
                                    require ext_code.size(tokenAddress)
                                    call tokenAddress.0x40c10f19 with:
                                         gas gas_remaining wei
                                        args address(arg1), s - (10^18 / 2 * rate) / 2 * 2 * rate / 10^18
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    else:
                                        require return_data.size >= 32
                                        require ext_call.return_data[0]
                                        emit TokensPurchased(msg.value, s - (10^18 / 2 * rate) / 2 * 2 * rate / 10^18, msg.sender, arg1);
                                        call walletAddress with:
                                           value msg.value wei
                                             gas 2300 * is_zero(value) wei
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        else:
                                            require stor0 == stor0
                                else:
                                    require weiRaised + msg.value >= weiRaised
                                    weiRaised += msg.value
                                    require ext_code.size(tokenAddress)
                                    call tokenAddress.0x40c10f19 with:
                                         gas gas_remaining wei
                                        args address(arg1), 0
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    else:
                                        require return_data.size >= 32
                                        require ext_call.return_data[0]
                                        emit TokensPurchased(msg.value, 0, msg.sender, arg1);
                                        call walletAddress with:
                                           value msg.value wei
                                             gas 2300 * is_zero(value) wei
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        else:
                                            require stor0 == stor0
                            else:
                                require 10^18 / 2 * rate <= 0
                                if Mask(255, 1, -10^18 / 2 * rate):
                                    require -10^18 / 2 * rate / 2
                                    require -10^18 / 2 * rate / 2 * 2 * rate / -10^18 / 2 * rate / 2 == 2 * rate
                                    require weiRaised + msg.value >= weiRaised
                                    weiRaised += msg.value
                                    require ext_code.size(tokenAddress)
                                    call tokenAddress.0x40c10f19 with:
                                         gas gas_remaining wei
                                        args address(arg1), -10^18 / 2 * rate / 2 * 2 * rate / 10^18
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    else:
                                        require return_data.size >= 32
                                        require ext_call.return_data[0]
                                        emit TokensPurchased(msg.value, -10^18 / 2 * rate / 2 * 2 * rate / 10^18, msg.sender, arg1);
                                        call walletAddress with:
                                           value msg.value wei
                                             gas 2300 * is_zero(value) wei
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        else:
                                            require stor0 == stor0
                                else:
                                    require weiRaised + msg.value >= weiRaised
                                    weiRaised += msg.value
                                    require ext_code.size(tokenAddress)
                                    call tokenAddress.0x40c10f19 with:
                                         gas gas_remaining wei
                                        args address(arg1), 0
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    else:
                                        require return_data.size >= 32
                                        require ext_call.return_data[0]
                                        emit TokensPurchased(msg.value, 0, msg.sender, arg1);
                                        call walletAddress with:
                                           value msg.value wei
                                             gas 2300 * is_zero(value) wei
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        else:
                                            require stor0 == stor0
                    else:
                        if msg.value:
                            require msg.value
                            require 10^18 * msg.value / msg.value == 10^18
                            if 10^18 * msg.value:
                                require 10^18 * msg.value
                                require 4 * 10^18 * msg.value / 10^18 * msg.value == 4
                                require 2 * rate > 0
                                require 2 * rate
                                require 4 * 10^18 * msg.value / 2 * rate >= 0
                                if 4 * 10^18 * msg.value / 2 * rate:
                                    require 4 * 10^18 * msg.value / 2 * rate
                                    require 10^18 * 4 * 10^18 * msg.value / 2 * rate / 4 * 10^18 * msg.value / 2 * rate == 10^18
                                    require (10^18 * 4 * 10^18 * msg.value / 2 * rate) + 1 >= 10^18 * 4 * 10^18 * msg.value / 2 * rate
                                    s = 10^18 * 4 * 10^18 * msg.value / 2 * rate
                                    t = (10^18 * 4 * 10^18 * msg.value / 2 * rate) + 1 / 2
                                    while t < s:
                                        require t > 0
                                        require t
                                        require (10^18 * 4 * 10^18 * msg.value / 2 * rate / t) + t >= 10^18 * 4 * 10^18 * msg.value / 2 * rate / t
                                        s = t
                                        t = (10^18 * 4 * 10^18 * msg.value / 2 * rate / t) + t / 2
                                        continue 
                                    require 10^18 / 2 * rate <= s
                                    if Mask(255, 1, s - (10^18 / 2 * rate)):
                                        require s - (10^18 / 2 * rate) / 2
                                        require s - (10^18 / 2 * rate) / 2 * 2 * rate / s - (10^18 / 2 * rate) / 2 == 2 * rate
                                        require weiRaised + msg.value >= weiRaised
                                        weiRaised += msg.value
                                        require ext_code.size(tokenAddress)
                                        call tokenAddress.0x40c10f19 with:
                                             gas gas_remaining wei
                                            args address(arg1), s - (10^18 / 2 * rate) / 2 * 2 * rate / 10^18
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        else:
                                            require return_data.size >= 32
                                            require ext_call.return_data[0]
                                            emit TokensPurchased(msg.value, s - (10^18 / 2 * rate) / 2 * 2 * rate / 10^18, msg.sender, arg1);
                                            call walletAddress with:
                                               value msg.value wei
                                                 gas 2300 * is_zero(value) wei
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            else:
                                                require stor0 == stor0
                                    else:
                                        require weiRaised + msg.value >= weiRaised
                                        weiRaised += msg.value
                                        require ext_code.size(tokenAddress)
                                        call tokenAddress.0x40c10f19 with:
                                             gas gas_remaining wei
                                            args address(arg1), 0
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        else:
                                            require return_data.size >= 32
                                            require ext_call.return_data[0]
                                            emit TokensPurchased(msg.value, 0, msg.sender, arg1);
                                            call walletAddress with:
                                               value msg.value wei
                                                 gas 2300 * is_zero(value) wei
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            else:
                                                require stor0 == stor0
                                else:
                                    require 10^18 / 2 * rate <= 0
                                    if Mask(255, 1, -10^18 / 2 * rate):
                                        require -10^18 / 2 * rate / 2
                                        require -10^18 / 2 * rate / 2 * 2 * rate / -10^18 / 2 * rate / 2 == 2 * rate
                                        require weiRaised + msg.value >= weiRaised
                                        weiRaised += msg.value
                                        require ext_code.size(tokenAddress)
                                        call tokenAddress.0x40c10f19 with:
                                             gas gas_remaining wei
                                            args address(arg1), -10^18 / 2 * rate / 2 * 2 * rate / 10^18
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        else:
                                            require return_data.size >= 32
                                            require ext_call.return_data[0]
                                            emit TokensPurchased(msg.value, -10^18 / 2 * rate / 2 * 2 * rate / 10^18, msg.sender, arg1);
                                            call walletAddress with:
                                               value msg.value wei
                                                 gas 2300 * is_zero(value) wei
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            else:
                                                require stor0 == stor0
                                    else:
                                        require weiRaised + msg.value >= weiRaised
                                        weiRaised += msg.value
                                        require ext_code.size(tokenAddress)
                                        call tokenAddress.0x40c10f19 with:
                                             gas gas_remaining wei
                                            args address(arg1), 0
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        else:
                                            require return_data.size >= 32
                                            require ext_call.return_data[0]
                                            emit TokensPurchased(msg.value, 0, msg.sender, arg1);
                                            call walletAddress with:
                                               value msg.value wei
                                                 gas 2300 * is_zero(value) wei
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            else:
                                                require stor0 == stor0
                            else:
                                require 2 * rate > 0
                                require 2 * rate
                                require 0 / 2 * rate >= 0
                                if 0 / 2 * rate:
                                    require 0 / 2 * rate
                                    require 10^18 * 0 / 2 * rate / 0 / 2 * rate == 10^18
                                    require (10^18 * 0 / 2 * rate) + 1 >= 10^18 * 0 / 2 * rate
                                    s = 10^18 * 0 / 2 * rate
                                    t = (10^18 * 0 / 2 * rate) + 1 / 2
                                    while t < s:
                                        require t > 0
                                        require t
                                        require (10^18 * 0 / 2 * rate / t) + t >= 10^18 * 0 / 2 * rate / t
                                        s = t
                                        t = (10^18 * 0 / 2 * rate / t) + t / 2
                                        continue 
                                    require 10^18 / 2 * rate <= s
                                    if Mask(255, 1, s - (10^18 / 2 * rate)):
                                        require s - (10^18 / 2 * rate) / 2
                                        require s - (10^18 / 2 * rate) / 2 * 2 * rate / s - (10^18 / 2 * rate) / 2 == 2 * rate
                                        require weiRaised + msg.value >= weiRaised
                                        weiRaised += msg.value
                                        require ext_code.size(tokenAddress)
                                        call tokenAddress.0x40c10f19 with:
                                             gas gas_remaining wei
                                            args address(arg1), s - (10^18 / 2 * rate) / 2 * 2 * rate / 10^18
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        else:
                                            require return_data.size >= 32
                                            require ext_call.return_data[0]
                                            emit TokensPurchased(msg.value, s - (10^18 / 2 * rate) / 2 * 2 * rate / 10^18, msg.sender, arg1);
                                            call walletAddress with:
                                               value msg.value wei
                                                 gas 2300 * is_zero(value) wei
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            else:
                                                require stor0 == stor0
                                    else:
                                        require weiRaised + msg.value >= weiRaised
                                        weiRaised += msg.value
                                        require ext_code.size(tokenAddress)
                                        call tokenAddress.0x40c10f19 with:
                                             gas gas_remaining wei
                                            args address(arg1), 0
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        else:
                                            require return_data.size >= 32
                                            require ext_call.return_data[0]
                                            emit TokensPurchased(msg.value, 0, msg.sender, arg1);
                                            call walletAddress with:
                                               value msg.value wei
                                                 gas 2300 * is_zero(value) wei
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            else:
                                                require stor0 == stor0
                                else:
                                    require 10^18 / 2 * rate <= 0
                                    if Mask(255, 1, -10^18 / 2 * rate):
                                        require -10^18 / 2 * rate / 2
                                        require -10^18 / 2 * rate / 2 * 2 * rate / -10^18 / 2 * rate / 2 == 2 * rate
                                        require weiRaised + msg.value >= weiRaised
                                        weiRaised += msg.value
                                        require ext_code.size(tokenAddress)
                                        call tokenAddress.0x40c10f19 with:
                                             gas gas_remaining wei
                                            args address(arg1), -10^18 / 2 * rate / 2 * 2 * rate / 10^18
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        else:
                                            require return_data.size >= 32
                                            require ext_call.return_data[0]
                                            emit TokensPurchased(msg.value, -10^18 / 2 * rate / 2 * 2 * rate / 10^18, msg.sender, arg1);
                                            call walletAddress with:
                                               value msg.value wei
                                                 gas 2300 * is_zero(value) wei
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            else:
                                                require stor0 == stor0
                                    else:
                                        require weiRaised + msg.value >= weiRaised
                                        weiRaised += msg.value
                                        require ext_code.size(tokenAddress)
                                        call tokenAddress.0x40c10f19 with:
                                             gas gas_remaining wei
                                            args address(arg1), 0
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        else:
                                            require return_data.size >= 32
                                            require ext_call.return_data[0]
                                            emit TokensPurchased(msg.value, 0, msg.sender, arg1);
                                            call walletAddress with:
                                               value msg.value wei
                                                 gas 2300 * is_zero(value) wei
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            else:
                                                require stor0 == stor0
                        else:
                            require 2 * rate > 0
                            require 2 * rate
                            require 0 / 2 * rate >= 0
                            if 0 / 2 * rate:
                                require 0 / 2 * rate
                                require 10^18 * 0 / 2 * rate / 0 / 2 * rate == 10^18
                                require (10^18 * 0 / 2 * rate) + 1 >= 10^18 * 0 / 2 * rate
                                s = 10^18 * 0 / 2 * rate
                                t = (10^18 * 0 / 2 * rate) + 1 / 2
                                while t < s:
                                    require t > 0
                                    require t
                                    require (10^18 * 0 / 2 * rate / t) + t >= 10^18 * 0 / 2 * rate / t
                                    s = t
                                    t = (10^18 * 0 / 2 * rate / t) + t / 2
                                    continue 
                                require 10^18 / 2 * rate <= s
                                if Mask(255, 1, s - (10^18 / 2 * rate)):
                                    require s - (10^18 / 2 * rate) / 2
                                    require s - (10^18 / 2 * rate) / 2 * 2 * rate / s - (10^18 / 2 * rate) / 2 == 2 * rate
                                    require weiRaised + msg.value >= weiRaised
                                    weiRaised += msg.value
                                    require ext_code.size(tokenAddress)
                                    call tokenAddress.0x40c10f19 with:
                                         gas gas_remaining wei
                                        args address(arg1), s - (10^18 / 2 * rate) / 2 * 2 * rate / 10^18
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    else:
                                        require return_data.size >= 32
                                        require ext_call.return_data[0]
                                        emit TokensPurchased(msg.value, s - (10^18 / 2 * rate) / 2 * 2 * rate / 10^18, msg.sender, arg1);
                                        call walletAddress with:
                                           value msg.value wei
                                             gas 2300 * is_zero(value) wei
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        else:
                                            require stor0 == stor0
                                else:
                                    require weiRaised + msg.value >= weiRaised
                                    weiRaised += msg.value
                                    require ext_code.size(tokenAddress)
                                    call tokenAddress.0x40c10f19 with:
                                         gas gas_remaining wei
                                        args address(arg1), 0
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    else:
                                        require return_data.size >= 32
                                        require ext_call.return_data[0]
                                        emit TokensPurchased(msg.value, 0, msg.sender, arg1);
                                        call walletAddress with:
                                           value msg.value wei
                                             gas 2300 * is_zero(value) wei
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        else:
                                            require stor0 == stor0
                            else:
                                require 10^18 / 2 * rate <= 0
                                if Mask(255, 1, -10^18 / 2 * rate):
                                    require -10^18 / 2 * rate / 2
                                    require -10^18 / 2 * rate / 2 * 2 * rate / -10^18 / 2 * rate / 2 == 2 * rate
                                    require weiRaised + msg.value >= weiRaised
                                    weiRaised += msg.value
                                    require ext_code.size(tokenAddress)
                                    call tokenAddress.0x40c10f19 with:
                                         gas gas_remaining wei
                                        args address(arg1), -10^18 / 2 * rate / 2 * 2 * rate / 10^18
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    else:
                                        require return_data.size >= 32
                                        require ext_call.return_data[0]
                                        emit TokensPurchased(msg.value, -10^18 / 2 * rate / 2 * 2 * rate / 10^18, msg.sender, arg1);
                                        call walletAddress with:
                                           value msg.value wei
                                             gas 2300 * is_zero(value) wei
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        else:
                                            require stor0 == stor0
                                else:
                                    require weiRaised + msg.value >= weiRaised
                                    weiRaised += msg.value
                                    require ext_code.size(tokenAddress)
                                    call tokenAddress.0x40c10f19 with:
                                         gas gas_remaining wei
                                        args address(arg1), 0
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    else:
                                        require return_data.size >= 32
                                        require ext_call.return_data[0]
                                        emit TokensPurchased(msg.value, 0, msg.sender, arg1);
                                        call walletAddress with:
                                           value msg.value wei
                                             gas 2300 * is_zero(value) wei
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        else:
                                            require stor0 == stor0
        else:
            require ext_code.size(tokenAddress)
            staticcall tokenAddress.0x18160ddd with:
                    gas gas_remaining wei
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            else:
                require return_data.size >= 32
                require ext_call.return_data[0]
                require ext_call.return_data[0]
                require 10^18 * ext_call.return_data[0] / ext_call.return_data[0] == 10^18
                require 10^18 * ext_call.return_data[0]
                require 10^18 * ext_call.return_data[0]
                require 2 * 10^18 * ext_call.return_data[0] / 10^18 * ext_call.return_data[0] == 2
                require (2 * 10^18 * ext_call.return_data[0]) + 10^18 < 2 * 10^18 * ext_call.return_data[0]
                revert
}

function _fallback() payable {
    stor0++
    require msg.sender
    require msg.value
    if msg.value < 10^15:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Contribution must be at least 0.001 ETH'
    else:
        if rate:
            require rate
            require 2 * rate / rate == 2
            require ext_code.size(tokenAddress)
            staticcall tokenAddress.0x18160ddd with:
                    gas gas_remaining wei
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            else:
                require return_data.size >= 32
                if ext_call.return_data[0]:
                    require ext_call.return_data[0]
                    require 10^18 * ext_call.return_data[0] / ext_call.return_data[0] == 10^18
                    if 10^18 * ext_call.return_data[0]:
                        require 10^18 * ext_call.return_data[0]
                        require 2 * 10^18 * ext_call.return_data[0] / 10^18 * ext_call.return_data[0] == 2
                        require (2 * 10^18 * ext_call.return_data[0]) + 10^18 >= 2 * 10^18 * ext_call.return_data[0]
                        require 2 * rate > 0
                        require 2 * rate
                        if (2 * 10^18 * ext_call.return_data[0]) + 10^18 / 2 * rate:
                            require (2 * 10^18 * ext_call.return_data[0]) + 10^18 / 2 * rate
                            require (2 * 10^18 * ext_call.return_data[0]) + 10^18 / 2 * rate * (2 * 10^18 * ext_call.return_data[0]) + 10^18 / 2 * rate / (2 * 10^18 * ext_call.return_data[0]) + 10^18 / 2 * rate == (2 * 10^18 * ext_call.return_data[0]) + 10^18 / 2 * rate
                            if msg.value:
                                require msg.value
                                require 10^18 * msg.value / msg.value == 10^18
                                if 10^18 * msg.value:
                                    require 10^18 * msg.value
                                    require 4 * 10^18 * msg.value / 10^18 * msg.value == 4
                                    require 2 * rate > 0
                                    require 2 * rate
                                    require ((2 * 10^18 * ext_call.return_data[0]) + 10^18 / 2 * rate * (2 * 10^18 * ext_call.return_data[0]) + 10^18 / 2 * rate / 10^18) + (4 * 10^18 * msg.value / 2 * rate) >= (2 * 10^18 * ext_call.return_data[0]) + 10^18 / 2 * rate * (2 * 10^18 * ext_call.return_data[0]) + 10^18 / 2 * rate / 10^18
                                    if ((2 * 10^18 * ext_call.return_data[0]) + 10^18 / 2 * rate * (2 * 10^18 * ext_call.return_data[0]) + 10^18 / 2 * rate / 10^18) + (4 * 10^18 * msg.value / 2 * rate):
                                        require ((2 * 10^18 * ext_call.return_data[0]) + 10^18 / 2 * rate * (2 * 10^18 * ext_call.return_data[0]) + 10^18 / 2 * rate / 10^18) + (4 * 10^18 * msg.value / 2 * rate)
                                        require (10^18 * (2 * 10^18 * ext_call.return_data[0]) + 10^18 / 2 * rate * (2 * 10^18 * ext_call.return_data[0]) + 10^18 / 2 * rate / 10^18) + (10^18 * 4 * 10^18 * msg.value / 2 * rate) / ((2 * 10^18 * ext_call.return_data[0]) + 10^18 / 2 * rate * (2 * 10^18 * ext_call.return_data[0]) + 10^18 / 2 * rate / 10^18) + (4 * 10^18 * msg.value / 2 * rate) == 10^18
                                        s = (10^18 * (2 * 10^18 * ext_call.return_data[0]) + 10^18 / 2 * rate * (2 * 10^18 * ext_call.return_data[0]) + 10^18 / 2 * rate / 10^18) + (10^18 * 4 * 10^18 * msg.value / 2 * rate)
                                        t = (10^18 * (2 * 10^18 * ext_call.return_data[0]) + 10^18 / 2 * rate * (2 * 10^18 * ext_call.return_data[0]) + 10^18 / 2 * rate / 10^18) + (10^18 * 4 * 10^18 * msg.value / 2 * rate) + 1 / 2
                                        while t < s:
                                            require t > 0
                                            require t
                                            require ((10^18 * (2 * 10^18 * ext_call.return_data[0]) + 10^18 / 2 * rate * (2 * 10^18 * ext_call.return_data[0]) + 10^18 / 2 * rate / 10^18) + (10^18 * 4 * 10^18 * msg.value / 2 * rate) / t) + t >= (10^18 * (2 * 10^18 * ext_call.return_data[0]) + 10^18 / 2 * rate * (2 * 10^18 * ext_call.return_data[0]) + 10^18 / 2 * rate / 10^18) + (10^18 * 4 * 10^18 * msg.value / 2 * rate) / t
                                            s = t
                                            t = ((10^18 * (2 * 10^18 * ext_call.return_data[0]) + 10^18 / 2 * rate * (2 * 10^18 * ext_call.return_data[0]) + 10^18 / 2 * rate / 10^18) + (10^18 * 4 * 10^18 * msg.value / 2 * rate) / t) + t / 2
                                            continue 
                                        require (2 * 10^18 * ext_call.return_data[0]) + 10^18 / 2 * rate <= s
                                        if Mask(255, 1, s - ((2 * 10^18 * ext_call.return_data[0]) + 10^18 / 2 * rate)):
                                            require s - ((2 * 10^18 * ext_call.return_data[0]) + 10^18 / 2 * rate) / 2
                                            require s - ((2 * 10^18 * ext_call.return_data[0]) + 10^18 / 2 * rate) / 2 * 2 * rate / s - ((2 * 10^18 * ext_call.return_data[0]) + 10^18 / 2 * rate) / 2 == 2 * rate
                                            require weiRaised + msg.value >= weiRaised
                                            weiRaised += msg.value
                                            require ext_code.size(tokenAddress)
                                            call tokenAddress.0x40c10f19 with:
                                                 gas gas_remaining wei
                                                args msg.sender, s - ((2 * 10^18 * ext_call.return_data[0]) + 10^18 / 2 * rate) / 2 * 2 * rate / 10^18
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            else:
                                                require return_data.size >= 32
                                                require ext_call.return_data[0]
                                                emit TokensPurchased(msg.value, s - ((2 * 10^18 * ext_call.return_data[0]) + 10^18 / 2 * rate) / 2 * 2 * rate / 10^18, msg.sender, msg.sender);
                                                call walletAddress with:
                                                   value msg.value wei
                                                     gas 2300 * is_zero(value) wei
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                else:
                                                    require stor0 == stor0
                                        else:
                                            require weiRaised + msg.value >= weiRaised
                                            weiRaised += msg.value
                                            require ext_code.size(tokenAddress)
                                            call tokenAddress.0x40c10f19 with:
                                                 gas gas_remaining wei
                                                args msg.sender, 0
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            else:
                                                require return_data.size >= 32
                                                require ext_call.return_data[0]
                                                emit TokensPurchased(msg.value, 0, msg.sender, msg.sender);
                                                call walletAddress with:
                                                   value msg.value wei
                                                     gas 2300 * is_zero(value) wei
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                else:
                                                    require stor0 == stor0
                                    else:
                                        require (2 * 10^18 * ext_call.return_data[0]) + 10^18 / 2 * rate <= 0
                                        if Mask(255, 1, -(2 * 10^18 * ext_call.return_data[0]) + 10^18 / 2 * rate):
                                            require -(2 * 10^18 * ext_call.return_data[0]) + 10^18 / 2 * rate / 2
                                            require -(2 * 10^18 * ext_call.return_data[0]) + 10^18 / 2 * rate / 2 * 2 * rate / -(2 * 10^18 * ext_call.return_data[0]) + 10^18 / 2 * rate / 2 == 2 * rate
                                            require weiRaised + msg.value >= weiRaised
                                            weiRaised += msg.value
                                            require ext_code.size(tokenAddress)
                                            call tokenAddress.0x40c10f19 with:
                                                 gas gas_remaining wei
                                                args msg.sender, -(2 * 10^18 * ext_call.return_data[0]) + 10^18 / 2 * rate / 2 * 2 * rate / 10^18
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            else:
                                                require return_data.size >= 32
                                                require ext_call.return_data[0]
                                                emit TokensPurchased(msg.value, -(2 * 10^18 * ext_call.return_data[0]) + 10^18 / 2 * rate / 2 * 2 * rate / 10^18, msg.sender, msg.sender);
                                                call walletAddress with:
                                                   value msg.value wei
                                                     gas 2300 * is_zero(value) wei
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                else:
                                                    require stor0 == stor0
                                        else:
                                            require weiRaised + msg.value >= weiRaised
                                            weiRaised += msg.value
                                            require ext_code.size(tokenAddress)
                                            call tokenAddress.0x40c10f19 with:
                                                 gas gas_remaining wei
                                                args msg.sender, 0
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            else:
                                                require return_data.size >= 32
                                                require ext_call.return_data[0]
                                                emit TokensPurchased(msg.value, 0, msg.sender, msg.sender);
                                                call walletAddress with:
                                                   value msg.value wei
                                                     gas 2300 * is_zero(value) wei
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                else:
                                                    require stor0 == stor0
                                else:
                                    require 2 * rate > 0
                                    require 2 * rate
                                    require ((2 * 10^18 * ext_call.return_data[0]) + 10^18 / 2 * rate * (2 * 10^18 * ext_call.return_data[0]) + 10^18 / 2 * rate / 10^18) + (0 / 2 * rate) >= (2 * 10^18 * ext_call.return_data[0]) + 10^18 / 2 * rate * (2 * 10^18 * ext_call.return_data[0]) + 10^18 / 2 * rate / 10^18
                                    if ((2 * 10^18 * ext_call.return_data[0]) + 10^18 / 2 * rate * (2 * 10^18 * ext_call.return_data[0]) + 10^18 / 2 * rate / 10^18) + (0 / 2 * rate):
                                        require ((2 * 10^18 * ext_call.return_data[0]) + 10^18 / 2 * rate * (2 * 10^18 * ext_call.return_data[0]) + 10^18 / 2 * rate / 10^18) + (0 / 2 * rate)
                                        require (10^18 * (2 * 10^18 * ext_call.return_data[0]) + 10^18 / 2 * rate * (2 * 10^18 * ext_call.return_data[0]) + 10^18 / 2 * rate / 10^18) + (10^18 * 0 / 2 * rate) / ((2 * 10^18 * ext_call.return_data[0]) + 10^18 / 2 * rate * (2 * 10^18 * ext_call.return_data[0]) + 10^18 / 2 * rate / 10^18) + (0 / 2 * rate) == 10^18
                                        s = (10^18 * (2 * 10^18 * ext_call.return_data[0]) + 10^18 / 2 * rate * (2 * 10^18 * ext_call.return_data[0]) + 10^18 / 2 * rate / 10^18) + (10^18 * 0 / 2 * rate)
                                        t = (10^18 * (2 * 10^18 * ext_call.return_data[0]) + 10^18 / 2 * rate * (2 * 10^18 * ext_call.return_data[0]) + 10^18 / 2 * rate / 10^18) + (10^18 * 0 / 2 * rate) + 1 / 2
                                        while t < s:
                                            require t > 0
                                            require t
                                            require ((10^18 * (2 * 10^18 * ext_call.return_data[0]) + 10^18 / 2 * rate * (2 * 10^18 * ext_call.return_data[0]) + 10^18 / 2 * rate / 10^18) + (10^18 * 0 / 2 * rate) / t) + t >= (10^18 * (2 * 10^18 * ext_call.return_data[0]) + 10^18 / 2 * rate * (2 * 10^18 * ext_call.return_data[0]) + 10^18 / 2 * rate / 10^18) + (10^18 * 0 / 2 * rate) / t
                                            s = t
                                            t = ((10^18 * (2 * 10^18 * ext_call.return_data[0]) + 10^18 / 2 * rate * (2 * 10^18 * ext_call.return_data[0]) + 10^18 / 2 * rate / 10^18) + (10^18 * 0 / 2 * rate) / t) + t / 2
                                            continue 
                                        require (2 * 10^18 * ext_call.return_data[0]) + 10^18 / 2 * rate <= s
                                        if Mask(255, 1, s - ((2 * 10^18 * ext_call.return_data[0]) + 10^18 / 2 * rate)):
                                            require s - ((2 * 10^18 * ext_call.return_data[0]) + 10^18 / 2 * rate) / 2
                                            require s - ((2 * 10^18 * ext_call.return_data[0]) + 10^18 / 2 * rate) / 2 * 2 * rate / s - ((2 * 10^18 * ext_call.return_data[0]) + 10^18 / 2 * rate) / 2 == 2 * rate
                                            require weiRaised + msg.value >= weiRaised
                                            weiRaised += msg.value
                                            require ext_code.size(tokenAddress)
                                            call tokenAddress.0x40c10f19 with:
                                                 gas gas_remaining wei
                                                args msg.sender, s - ((2 * 10^18 * ext_call.return_data[0]) + 10^18 / 2 * rate) / 2 * 2 * rate / 10^18
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            else:
                                                require return_data.size >= 32
                                                require ext_call.return_data[0]
                                                emit TokensPurchased(msg.value, s - ((2 * 10^18 * ext_call.return_data[0]) + 10^18 / 2 * rate) / 2 * 2 * rate / 10^18, msg.sender, msg.sender);
                                                call walletAddress with:
                                                   value msg.value wei
                                                     gas 2300 * is_zero(value) wei
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                else:
                                                    require stor0 == stor0
                                        else:
                                            require weiRaised + msg.value >= weiRaised
                                            weiRaised += msg.value
                                            require ext_code.size(tokenAddress)
                                            call tokenAddress.0x40c10f19 with:
                                                 gas gas_remaining wei
                                                args msg.sender, 0
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            else:
                                                require return_data.size >= 32
                                                require ext_call.return_data[0]
                                                emit TokensPurchased(msg.value, 0, msg.sender, msg.sender);
                                                call walletAddress with:
                                                   value msg.value wei
                                                     gas 2300 * is_zero(value) wei
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                else:
                                                    require stor0 == stor0
                                    else:
                                        require (2 * 10^18 * ext_call.return_data[0]) + 10^18 / 2 * rate <= 0
                                        if Mask(255, 1, -(2 * 10^18 * ext_call.return_data[0]) + 10^18 / 2 * rate):
                                            require -(2 * 10^18 * ext_call.return_data[0]) + 10^18 / 2 * rate / 2
                                            require -(2 * 10^18 * ext_call.return_data[0]) + 10^18 / 2 * rate / 2 * 2 * rate / -(2 * 10^18 * ext_call.return_data[0]) + 10^18 / 2 * rate / 2 == 2 * rate
                                            require weiRaised + msg.value >= weiRaised
                                            weiRaised += msg.value
                                            require ext_code.size(tokenAddress)
                                            call tokenAddress.0x40c10f19 with:
                                                 gas gas_remaining wei
                                                args msg.sender, -(2 * 10^18 * ext_call.return_data[0]) + 10^18 / 2 * rate / 2 * 2 * rate / 10^18
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            else:
                                                require return_data.size >= 32
                                                require ext_call.return_data[0]
                                                emit TokensPurchased(msg.value, -(2 * 10^18 * ext_call.return_data[0]) + 10^18 / 2 * rate / 2 * 2 * rate / 10^18, msg.sender, msg.sender);
                                                call walletAddress with:
                                                   value msg.value wei
                                                     gas 2300 * is_zero(value) wei
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                else:
                                                    require stor0 == stor0
                                        else:
                                            require weiRaised + msg.value >= weiRaised
                                            weiRaised += msg.value
                                            require ext_code.size(tokenAddress)
                                            call tokenAddress.0x40c10f19 with:
                                                 gas gas_remaining wei
                                                args msg.sender, 0
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            else:
                                                require return_data.size >= 32
                                                require ext_call.return_data[0]
                                                emit TokensPurchased(msg.value, 0, msg.sender, msg.sender);
                                                call walletAddress with:
                                                   value msg.value wei
                                                     gas 2300 * is_zero(value) wei
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                else:
                                                    require stor0 == stor0
                            else:
                                require 2 * rate > 0
                                require 2 * rate
                                require ((2 * 10^18 * ext_call.return_data[0]) + 10^18 / 2 * rate * (2 * 10^18 * ext_call.return_data[0]) + 10^18 / 2 * rate / 10^18) + (0 / 2 * rate) >= (2 * 10^18 * ext_call.return_data[0]) + 10^18 / 2 * rate * (2 * 10^18 * ext_call.return_data[0]) + 10^18 / 2 * rate / 10^18
                                if ((2 * 10^18 * ext_call.return_data[0]) + 10^18 / 2 * rate * (2 * 10^18 * ext_call.return_data[0]) + 10^18 / 2 * rate / 10^18) + (0 / 2 * rate):
                                    require ((2 * 10^18 * ext_call.return_data[0]) + 10^18 / 2 * rate * (2 * 10^18 * ext_call.return_data[0]) + 10^18 / 2 * rate / 10^18) + (0 / 2 * rate)
                                    require (10^18 * (2 * 10^18 * ext_call.return_data[0]) + 10^18 / 2 * rate * (2 * 10^18 * ext_call.return_data[0]) + 10^18 / 2 * rate / 10^18) + (10^18 * 0 / 2 * rate) / ((2 * 10^18 * ext_call.return_data[0]) + 10^18 / 2 * rate * (2 * 10^18 * ext_call.return_data[0]) + 10^18 / 2 * rate / 10^18) + (0 / 2 * rate) == 10^18
                                    s = (10^18 * (2 * 10^18 * ext_call.return_data[0]) + 10^18 / 2 * rate * (2 * 10^18 * ext_call.return_data[0]) + 10^18 / 2 * rate / 10^18) + (10^18 * 0 / 2 * rate)
                                    t = (10^18 * (2 * 10^18 * ext_call.return_data[0]) + 10^18 / 2 * rate * (2 * 10^18 * ext_call.return_data[0]) + 10^18 / 2 * rate / 10^18) + (10^18 * 0 / 2 * rate) + 1 / 2
                                    while t < s:
                                        require t > 0
                                        require t
                                        require ((10^18 * (2 * 10^18 * ext_call.return_data[0]) + 10^18 / 2 * rate * (2 * 10^18 * ext_call.return_data[0]) + 10^18 / 2 * rate / 10^18) + (10^18 * 0 / 2 * rate) / t) + t >= (10^18 * (2 * 10^18 * ext_call.return_data[0]) + 10^18 / 2 * rate * (2 * 10^18 * ext_call.return_data[0]) + 10^18 / 2 * rate / 10^18) + (10^18 * 0 / 2 * rate) / t
                                        s = t
                                        t = ((10^18 * (2 * 10^18 * ext_call.return_data[0]) + 10^18 / 2 * rate * (2 * 10^18 * ext_call.return_data[0]) + 10^18 / 2 * rate / 10^18) + (10^18 * 0 / 2 * rate) / t) + t / 2
                                        continue 
                                    require (2 * 10^18 * ext_call.return_data[0]) + 10^18 / 2 * rate <= s
                                    if Mask(255, 1, s - ((2 * 10^18 * ext_call.return_data[0]) + 10^18 / 2 * rate)):
                                        require s - ((2 * 10^18 * ext_call.return_data[0]) + 10^18 / 2 * rate) / 2
                                        require s - ((2 * 10^18 * ext_call.return_data[0]) + 10^18 / 2 * rate) / 2 * 2 * rate / s - ((2 * 10^18 * ext_call.return_data[0]) + 10^18 / 2 * rate) / 2 == 2 * rate
                                        require weiRaised + msg.value >= weiRaised
                                        weiRaised += msg.value
                                        require ext_code.size(tokenAddress)
                                        call tokenAddress.0x40c10f19 with:
                                             gas gas_remaining wei
                                            args msg.sender, s - ((2 * 10^18 * ext_call.return_data[0]) + 10^18 / 2 * rate) / 2 * 2 * rate / 10^18
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        else:
                                            require return_data.size >= 32
                                            require ext_call.return_data[0]
                                            emit TokensPurchased(msg.value, s - ((2 * 10^18 * ext_call.return_data[0]) + 10^18 / 2 * rate) / 2 * 2 * rate / 10^18, msg.sender, msg.sender);
                                            call walletAddress with:
                                               value msg.value wei
                                                 gas 2300 * is_zero(value) wei
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            else:
                                                require stor0 == stor0
                                    else:
                                        require weiRaised + msg.value >= weiRaised
                                        weiRaised += msg.value
                                        require ext_code.size(tokenAddress)
                                        call tokenAddress.0x40c10f19 with:
                                             gas gas_remaining wei
                                            args msg.sender, 0
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        else:
                                            require return_data.size >= 32
                                            require ext_call.return_data[0]
                                            emit TokensPurchased(msg.value, 0, msg.sender, msg.sender);
                                            call walletAddress with:
                                               value msg.value wei
                                                 gas 2300 * is_zero(value) wei
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            else:
                                                require stor0 == stor0
                                else:
                                    require (2 * 10^18 * ext_call.return_data[0]) + 10^18 / 2 * rate <= 0
                                    if Mask(255, 1, -(2 * 10^18 * ext_call.return_data[0]) + 10^18 / 2 * rate):
                                        require -(2 * 10^18 * ext_call.return_data[0]) + 10^18 / 2 * rate / 2
                                        require -(2 * 10^18 * ext_call.return_data[0]) + 10^18 / 2 * rate / 2 * 2 * rate / -(2 * 10^18 * ext_call.return_data[0]) + 10^18 / 2 * rate / 2 == 2 * rate
                                        require weiRaised + msg.value >= weiRaised
                                        weiRaised += msg.value
                                        require ext_code.size(tokenAddress)
                                        call tokenAddress.0x40c10f19 with:
                                             gas gas_remaining wei
                                            args msg.sender, -(2 * 10^18 * ext_call.return_data[0]) + 10^18 / 2 * rate / 2 * 2 * rate / 10^18
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        else:
                                            require return_data.size >= 32
                                            require ext_call.return_data[0]
                                            emit TokensPurchased(msg.value, -(2 * 10^18 * ext_call.return_data[0]) + 10^18 / 2 * rate / 2 * 2 * rate / 10^18, msg.sender, msg.sender);
                                            call walletAddress with:
                                               value msg.value wei
                                                 gas 2300 * is_zero(value) wei
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            else:
                                                require stor0 == stor0
                                    else:
                                        require weiRaised + msg.value >= weiRaised
                                        weiRaised += msg.value
                                        require ext_code.size(tokenAddress)
                                        call tokenAddress.0x40c10f19 with:
                                             gas gas_remaining wei
                                            args msg.sender, 0
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        else:
                                            require return_data.size >= 32
                                            require ext_call.return_data[0]
                                            emit TokensPurchased(msg.value, 0, msg.sender, msg.sender);
                                            call walletAddress with:
                                               value msg.value wei
                                                 gas 2300 * is_zero(value) wei
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            else:
                                                require stor0 == stor0
                        else:
                            if msg.value:
                                require msg.value
                                require 10^18 * msg.value / msg.value == 10^18
                                if 10^18 * msg.value:
                                    require 10^18 * msg.value
                                    require 4 * 10^18 * msg.value / 10^18 * msg.value == 4
                                    require 2 * rate > 0
                                    require 2 * rate
                                    require 4 * 10^18 * msg.value / 2 * rate >= 0
                                    if 4 * 10^18 * msg.value / 2 * rate:
                                        require 4 * 10^18 * msg.value / 2 * rate
                                        require 10^18 * 4 * 10^18 * msg.value / 2 * rate / 4 * 10^18 * msg.value / 2 * rate == 10^18
                                        require (10^18 * 4 * 10^18 * msg.value / 2 * rate) + 1 >= 10^18 * 4 * 10^18 * msg.value / 2 * rate
                                        s = 10^18 * 4 * 10^18 * msg.value / 2 * rate
                                        t = (10^18 * 4 * 10^18 * msg.value / 2 * rate) + 1 / 2
                                        while t < s:
                                            require t > 0
                                            require t
                                            require (10^18 * 4 * 10^18 * msg.value / 2 * rate / t) + t >= 10^18 * 4 * 10^18 * msg.value / 2 * rate / t
                                            s = t
                                            t = (10^18 * 4 * 10^18 * msg.value / 2 * rate / t) + t / 2
                                            continue 
                                        require (2 * 10^18 * ext_call.return_data[0]) + 10^18 / 2 * rate <= s
                                        if Mask(255, 1, s - ((2 * 10^18 * ext_call.return_data[0]) + 10^18 / 2 * rate)):
                                            require s - ((2 * 10^18 * ext_call.return_data[0]) + 10^18 / 2 * rate) / 2
                                            require s - ((2 * 10^18 * ext_call.return_data[0]) + 10^18 / 2 * rate) / 2 * 2 * rate / s - ((2 * 10^18 * ext_call.return_data[0]) + 10^18 / 2 * rate) / 2 == 2 * rate
                                            require weiRaised + msg.value >= weiRaised
                                            weiRaised += msg.value
                                            require ext_code.size(tokenAddress)
                                            call tokenAddress.0x40c10f19 with:
                                                 gas gas_remaining wei
                                                args msg.sender, s - ((2 * 10^18 * ext_call.return_data[0]) + 10^18 / 2 * rate) / 2 * 2 * rate / 10^18
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            else:
                                                require return_data.size >= 32
                                                require ext_call.return_data[0]
                                                emit TokensPurchased(msg.value, s - ((2 * 10^18 * ext_call.return_data[0]) + 10^18 / 2 * rate) / 2 * 2 * rate / 10^18, msg.sender, msg.sender);
                                                call walletAddress with:
                                                   value msg.value wei
                                                     gas 2300 * is_zero(value) wei
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                else:
                                                    require stor0 == stor0
                                        else:
                                            require weiRaised + msg.value >= weiRaised
                                            weiRaised += msg.value
                                            require ext_code.size(tokenAddress)
                                            call tokenAddress.0x40c10f19 with:
                                                 gas gas_remaining wei
                                                args msg.sender, 0
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            else:
                                                require return_data.size >= 32
                                                require ext_call.return_data[0]
                                                emit TokensPurchased(msg.value, 0, msg.sender, msg.sender);
                                                call walletAddress with:
                                                   value msg.value wei
                                                     gas 2300 * is_zero(value) wei
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                else:
                                                    require stor0 == stor0
                                    else:
                                        require (2 * 10^18 * ext_call.return_data[0]) + 10^18 / 2 * rate <= 0
                                        if Mask(255, 1, -(2 * 10^18 * ext_call.return_data[0]) + 10^18 / 2 * rate):
                                            require -(2 * 10^18 * ext_call.return_data[0]) + 10^18 / 2 * rate / 2
                                            require -(2 * 10^18 * ext_call.return_data[0]) + 10^18 / 2 * rate / 2 * 2 * rate / -(2 * 10^18 * ext_call.return_data[0]) + 10^18 / 2 * rate / 2 == 2 * rate
                                            require weiRaised + msg.value >= weiRaised
                                            weiRaised += msg.value
                                            require ext_code.size(tokenAddress)
                                            call tokenAddress.0x40c10f19 with:
                                                 gas gas_remaining wei
                                                args msg.sender, -(2 * 10^18 * ext_call.return_data[0]) + 10^18 / 2 * rate / 2 * 2 * rate / 10^18
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            else:
                                                require return_data.size >= 32
                                                require ext_call.return_data[0]
                                                emit TokensPurchased(msg.value, -(2 * 10^18 * ext_call.return_data[0]) + 10^18 / 2 * rate / 2 * 2 * rate / 10^18, msg.sender, msg.sender);
                                                call walletAddress with:
                                                   value msg.value wei
                                                     gas 2300 * is_zero(value) wei
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                else:
                                                    require stor0 == stor0
                                        else:
                                            require weiRaised + msg.value >= weiRaised
                                            weiRaised += msg.value
                                            require ext_code.size(tokenAddress)
                                            call tokenAddress.0x40c10f19 with:
                                                 gas gas_remaining wei
                                                args msg.sender, 0
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            else:
                                                require return_data.size >= 32
                                                require ext_call.return_data[0]
                                                emit TokensPurchased(msg.value, 0, msg.sender, msg.sender);
                                                call walletAddress with:
                                                   value msg.value wei
                                                     gas 2300 * is_zero(value) wei
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                else:
                                                    require stor0 == stor0
                                else:
                                    require 2 * rate > 0
                                    require 2 * rate
                                    require 0 / 2 * rate >= 0
                                    if 0 / 2 * rate:
                                        require 0 / 2 * rate
                                        require 10^18 * 0 / 2 * rate / 0 / 2 * rate == 10^18
                                        require (10^18 * 0 / 2 * rate) + 1 >= 10^18 * 0 / 2 * rate
                                        s = 10^18 * 0 / 2 * rate
                                        t = (10^18 * 0 / 2 * rate) + 1 / 2
                                        while t < s:
                                            require t > 0
                                            require t
                                            require (10^18 * 0 / 2 * rate / t) + t >= 10^18 * 0 / 2 * rate / t
                                            s = t
                                            t = (10^18 * 0 / 2 * rate / t) + t / 2
                                            continue 
                                        require (2 * 10^18 * ext_call.return_data[0]) + 10^18 / 2 * rate <= s
                                        if Mask(255, 1, s - ((2 * 10^18 * ext_call.return_data[0]) + 10^18 / 2 * rate)):
                                            require s - ((2 * 10^18 * ext_call.return_data[0]) + 10^18 / 2 * rate) / 2
                                            require s - ((2 * 10^18 * ext_call.return_data[0]) + 10^18 / 2 * rate) / 2 * 2 * rate / s - ((2 * 10^18 * ext_call.return_data[0]) + 10^18 / 2 * rate) / 2 == 2 * rate
                                            require weiRaised + msg.value >= weiRaised
                                            weiRaised += msg.value
                                            require ext_code.size(tokenAddress)
                                            call tokenAddress.0x40c10f19 with:
                                                 gas gas_remaining wei
                                                args msg.sender, s - ((2 * 10^18 * ext_call.return_data[0]) + 10^18 / 2 * rate) / 2 * 2 * rate / 10^18
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            else:
                                                require return_data.size >= 32
                                                require ext_call.return_data[0]
                                                emit TokensPurchased(msg.value, s - ((2 * 10^18 * ext_call.return_data[0]) + 10^18 / 2 * rate) / 2 * 2 * rate / 10^18, msg.sender, msg.sender);
                                                call walletAddress with:
                                                   value msg.value wei
                                                     gas 2300 * is_zero(value) wei
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                else:
                                                    require stor0 == stor0
                                        else:
                                            require weiRaised + msg.value >= weiRaised
                                            weiRaised += msg.value
                                            require ext_code.size(tokenAddress)
                                            call tokenAddress.0x40c10f19 with:
                                                 gas gas_remaining wei
                                                args msg.sender, 0
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            else:
                                                require return_data.size >= 32
                                                require ext_call.return_data[0]
                                                emit TokensPurchased(msg.value, 0, msg.sender, msg.sender);
                                                call walletAddress with:
                                                   value msg.value wei
                                                     gas 2300 * is_zero(value) wei
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                else:
                                                    require stor0 == stor0
                                    else:
                                        require (2 * 10^18 * ext_call.return_data[0]) + 10^18 / 2 * rate <= 0
                                        if Mask(255, 1, -(2 * 10^18 * ext_call.return_data[0]) + 10^18 / 2 * rate):
                                            require -(2 * 10^18 * ext_call.return_data[0]) + 10^18 / 2 * rate / 2
                                            require -(2 * 10^18 * ext_call.return_data[0]) + 10^18 / 2 * rate / 2 * 2 * rate / -(2 * 10^18 * ext_call.return_data[0]) + 10^18 / 2 * rate / 2 == 2 * rate
                                            require weiRaised + msg.value >= weiRaised
                                            weiRaised += msg.value
                                            require ext_code.size(tokenAddress)
                                            call tokenAddress.0x40c10f19 with:
                                                 gas gas_remaining wei
                                                args msg.sender, -(2 * 10^18 * ext_call.return_data[0]) + 10^18 / 2 * rate / 2 * 2 * rate / 10^18
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            else:
                                                require return_data.size >= 32
                                                require ext_call.return_data[0]
                                                emit TokensPurchased(msg.value, -(2 * 10^18 * ext_call.return_data[0]) + 10^18 / 2 * rate / 2 * 2 * rate / 10^18, msg.sender, msg.sender);
                                                call walletAddress with:
                                                   value msg.value wei
                                                     gas 2300 * is_zero(value) wei
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                else:
                                                    require stor0 == stor0
                                        else:
                                            require weiRaised + msg.value >= weiRaised
                                            weiRaised += msg.value
                                            require ext_code.size(tokenAddress)
                                            call tokenAddress.0x40c10f19 with:
                                                 gas gas_remaining wei
                                                args msg.sender, 0
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            else:
                                                require return_data.size >= 32
                                                require ext_call.return_data[0]
                                                emit TokensPurchased(msg.value, 0, msg.sender, msg.sender);
                                                call walletAddress with:
                                                   value msg.value wei
                                                     gas 2300 * is_zero(value) wei
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                else:
                                                    require stor0 == stor0
                            else:
                                require 2 * rate > 0
                                require 2 * rate
                                require 0 / 2 * rate >= 0
                                if 0 / 2 * rate:
                                    require 0 / 2 * rate
                                    require 10^18 * 0 / 2 * rate / 0 / 2 * rate == 10^18
                                    require (10^18 * 0 / 2 * rate) + 1 >= 10^18 * 0 / 2 * rate
                                    s = 10^18 * 0 / 2 * rate
                                    t = (10^18 * 0 / 2 * rate) + 1 / 2
                                    while t < s:
                                        require t > 0
                                        require t
                                        require (10^18 * 0 / 2 * rate / t) + t >= 10^18 * 0 / 2 * rate / t
                                        s = t
                                        t = (10^18 * 0 / 2 * rate / t) + t / 2
                                        continue 
                                    require (2 * 10^18 * ext_call.return_data[0]) + 10^18 / 2 * rate <= s
                                    if Mask(255, 1, s - ((2 * 10^18 * ext_call.return_data[0]) + 10^18 / 2 * rate)):
                                        require s - ((2 * 10^18 * ext_call.return_data[0]) + 10^18 / 2 * rate) / 2
                                        require s - ((2 * 10^18 * ext_call.return_data[0]) + 10^18 / 2 * rate) / 2 * 2 * rate / s - ((2 * 10^18 * ext_call.return_data[0]) + 10^18 / 2 * rate) / 2 == 2 * rate
                                        require weiRaised + msg.value >= weiRaised
                                        weiRaised += msg.value
                                        require ext_code.size(tokenAddress)
                                        call tokenAddress.0x40c10f19 with:
                                             gas gas_remaining wei
                                            args msg.sender, s - ((2 * 10^18 * ext_call.return_data[0]) + 10^18 / 2 * rate) / 2 * 2 * rate / 10^18
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        else:
                                            require return_data.size >= 32
                                            require ext_call.return_data[0]
                                            emit TokensPurchased(msg.value, s - ((2 * 10^18 * ext_call.return_data[0]) + 10^18 / 2 * rate) / 2 * 2 * rate / 10^18, msg.sender, msg.sender);
                                            call walletAddress with:
                                               value msg.value wei
                                                 gas 2300 * is_zero(value) wei
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            else:
                                                require stor0 == stor0
                                    else:
                                        require weiRaised + msg.value >= weiRaised
                                        weiRaised += msg.value
                                        require ext_code.size(tokenAddress)
                                        call tokenAddress.0x40c10f19 with:
                                             gas gas_remaining wei
                                            args msg.sender, 0
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        else:
                                            require return_data.size >= 32
                                            require ext_call.return_data[0]
                                            emit TokensPurchased(msg.value, 0, msg.sender, msg.sender);
                                            call walletAddress with:
                                               value msg.value wei
                                                 gas 2300 * is_zero(value) wei
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            else:
                                                require stor0 == stor0
                                else:
                                    require (2 * 10^18 * ext_call.return_data[0]) + 10^18 / 2 * rate <= 0
                                    if Mask(255, 1, -(2 * 10^18 * ext_call.return_data[0]) + 10^18 / 2 * rate):
                                        require -(2 * 10^18 * ext_call.return_data[0]) + 10^18 / 2 * rate / 2
                                        require -(2 * 10^18 * ext_call.return_data[0]) + 10^18 / 2 * rate / 2 * 2 * rate / -(2 * 10^18 * ext_call.return_data[0]) + 10^18 / 2 * rate / 2 == 2 * rate
                                        require weiRaised + msg.value >= weiRaised
                                        weiRaised += msg.value
                                        require ext_code.size(tokenAddress)
                                        call tokenAddress.0x40c10f19 with:
                                             gas gas_remaining wei
                                            args msg.sender, -(2 * 10^18 * ext_call.return_data[0]) + 10^18 / 2 * rate / 2 * 2 * rate / 10^18
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        else:
                                            require return_data.size >= 32
                                            require ext_call.return_data[0]
                                            emit TokensPurchased(msg.value, -(2 * 10^18 * ext_call.return_data[0]) + 10^18 / 2 * rate / 2 * 2 * rate / 10^18, msg.sender, msg.sender);
                                            call walletAddress with:
                                               value msg.value wei
                                                 gas 2300 * is_zero(value) wei
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            else:
                                                require stor0 == stor0
                                    else:
                                        require weiRaised + msg.value >= weiRaised
                                        weiRaised += msg.value
                                        require ext_code.size(tokenAddress)
                                        call tokenAddress.0x40c10f19 with:
                                             gas gas_remaining wei
                                            args msg.sender, 0
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        else:
                                            require return_data.size >= 32
                                            require ext_call.return_data[0]
                                            emit TokensPurchased(msg.value, 0, msg.sender, msg.sender);
                                            call walletAddress with:
                                               value msg.value wei
                                                 gas 2300 * is_zero(value) wei
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            else:
                                                require stor0 == stor0
                    else:
                        require 2 * rate > 0
                        require 2 * rate
                        if 10^18 / 2 * rate:
                            require 10^18 / 2 * rate
                            require 10^18 / 2 * rate * 10^18 / 2 * rate / 10^18 / 2 * rate == 10^18 / 2 * rate
                            if msg.value:
                                require msg.value
                                require 10^18 * msg.value / msg.value == 10^18
                                if 10^18 * msg.value:
                                    require 10^18 * msg.value
                                    require 4 * 10^18 * msg.value / 10^18 * msg.value == 4
                                    require 2 * rate > 0
                                    require 2 * rate
                                    require (10^18 / 2 * rate * 10^18 / 2 * rate / 10^18) + (4 * 10^18 * msg.value / 2 * rate) >= 10^18 / 2 * rate * 10^18 / 2 * rate / 10^18
                                    if (10^18 / 2 * rate * 10^18 / 2 * rate / 10^18) + (4 * 10^18 * msg.value / 2 * rate):
                                        require (10^18 / 2 * rate * 10^18 / 2 * rate / 10^18) + (4 * 10^18 * msg.value / 2 * rate)
                                        require (10^18 * 10^18 / 2 * rate * 10^18 / 2 * rate / 10^18) + (10^18 * 4 * 10^18 * msg.value / 2 * rate) / (10^18 / 2 * rate * 10^18 / 2 * rate / 10^18) + (4 * 10^18 * msg.value / 2 * rate) == 10^18
                                        s = (10^18 * 10^18 / 2 * rate * 10^18 / 2 * rate / 10^18) + (10^18 * 4 * 10^18 * msg.value / 2 * rate)
                                        t = (10^18 * 10^18 / 2 * rate * 10^18 / 2 * rate / 10^18) + (10^18 * 4 * 10^18 * msg.value / 2 * rate) + 1 / 2
                                        while t < s:
                                            require t > 0
                                            require t
                                            require ((10^18 * 10^18 / 2 * rate * 10^18 / 2 * rate / 10^18) + (10^18 * 4 * 10^18 * msg.value / 2 * rate) / t) + t >= (10^18 * 10^18 / 2 * rate * 10^18 / 2 * rate / 10^18) + (10^18 * 4 * 10^18 * msg.value / 2 * rate) / t
                                            s = t
                                            t = ((10^18 * 10^18 / 2 * rate * 10^18 / 2 * rate / 10^18) + (10^18 * 4 * 10^18 * msg.value / 2 * rate) / t) + t / 2
                                            continue 
                                        require 10^18 / 2 * rate <= s
                                        if Mask(255, 1, s - (10^18 / 2 * rate)):
                                            require s - (10^18 / 2 * rate) / 2
                                            require s - (10^18 / 2 * rate) / 2 * 2 * rate / s - (10^18 / 2 * rate) / 2 == 2 * rate
                                            require weiRaised + msg.value >= weiRaised
                                            weiRaised += msg.value
                                            require ext_code.size(tokenAddress)
                                            call tokenAddress.0x40c10f19 with:
                                                 gas gas_remaining wei
                                                args msg.sender, s - (10^18 / 2 * rate) / 2 * 2 * rate / 10^18
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            else:
                                                require return_data.size >= 32
                                                require ext_call.return_data[0]
                                                emit TokensPurchased(msg.value, s - (10^18 / 2 * rate) / 2 * 2 * rate / 10^18, msg.sender, msg.sender);
                                                call walletAddress with:
                                                   value msg.value wei
                                                     gas 2300 * is_zero(value) wei
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                else:
                                                    require stor0 == stor0
                                        else:
                                            require weiRaised + msg.value >= weiRaised
                                            weiRaised += msg.value
                                            require ext_code.size(tokenAddress)
                                            call tokenAddress.0x40c10f19 with:
                                                 gas gas_remaining wei
                                                args msg.sender, 0
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            else:
                                                require return_data.size >= 32
                                                require ext_call.return_data[0]
                                                emit TokensPurchased(msg.value, 0, msg.sender, msg.sender);
                                                call walletAddress with:
                                                   value msg.value wei
                                                     gas 2300 * is_zero(value) wei
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                else:
                                                    require stor0 == stor0
                                    else:
                                        require 10^18 / 2 * rate <= 0
                                        if Mask(255, 1, -10^18 / 2 * rate):
                                            require -10^18 / 2 * rate / 2
                                            require -10^18 / 2 * rate / 2 * 2 * rate / -10^18 / 2 * rate / 2 == 2 * rate
                                            require weiRaised + msg.value >= weiRaised
                                            weiRaised += msg.value
                                            require ext_code.size(tokenAddress)
                                            call tokenAddress.0x40c10f19 with:
                                                 gas gas_remaining wei
                                                args msg.sender, -10^18 / 2 * rate / 2 * 2 * rate / 10^18
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            else:
                                                require return_data.size >= 32
                                                require ext_call.return_data[0]
                                                emit TokensPurchased(msg.value, -10^18 / 2 * rate / 2 * 2 * rate / 10^18, msg.sender, msg.sender);
                                                call walletAddress with:
                                                   value msg.value wei
                                                     gas 2300 * is_zero(value) wei
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                else:
                                                    require stor0 == stor0
                                        else:
                                            require weiRaised + msg.value >= weiRaised
                                            weiRaised += msg.value
                                            require ext_code.size(tokenAddress)
                                            call tokenAddress.0x40c10f19 with:
                                                 gas gas_remaining wei
                                                args msg.sender, 0
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            else:
                                                require return_data.size >= 32
                                                require ext_call.return_data[0]
                                                emit TokensPurchased(msg.value, 0, msg.sender, msg.sender);
                                                call walletAddress with:
                                                   value msg.value wei
                                                     gas 2300 * is_zero(value) wei
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                else:
                                                    require stor0 == stor0
                                else:
                                    require 2 * rate > 0
                                    require 2 * rate
                                    require (10^18 / 2 * rate * 10^18 / 2 * rate / 10^18) + (0 / 2 * rate) >= 10^18 / 2 * rate * 10^18 / 2 * rate / 10^18
                                    if (10^18 / 2 * rate * 10^18 / 2 * rate / 10^18) + (0 / 2 * rate):
                                        require (10^18 / 2 * rate * 10^18 / 2 * rate / 10^18) + (0 / 2 * rate)
                                        require (10^18 * 10^18 / 2 * rate * 10^18 / 2 * rate / 10^18) + (10^18 * 0 / 2 * rate) / (10^18 / 2 * rate * 10^18 / 2 * rate / 10^18) + (0 / 2 * rate) == 10^18
                                        s = (10^18 * 10^18 / 2 * rate * 10^18 / 2 * rate / 10^18) + (10^18 * 0 / 2 * rate)
                                        t = (10^18 * 10^18 / 2 * rate * 10^18 / 2 * rate / 10^18) + (10^18 * 0 / 2 * rate) + 1 / 2
                                        while t < s:
                                            require t > 0
                                            require t
                                            require ((10^18 * 10^18 / 2 * rate * 10^18 / 2 * rate / 10^18) + (10^18 * 0 / 2 * rate) / t) + t >= (10^18 * 10^18 / 2 * rate * 10^18 / 2 * rate / 10^18) + (10^18 * 0 / 2 * rate) / t
                                            s = t
                                            t = ((10^18 * 10^18 / 2 * rate * 10^18 / 2 * rate / 10^18) + (10^18 * 0 / 2 * rate) / t) + t / 2
                                            continue 
                                        require 10^18 / 2 * rate <= s
                                        if Mask(255, 1, s - (10^18 / 2 * rate)):
                                            require s - (10^18 / 2 * rate) / 2
                                            require s - (10^18 / 2 * rate) / 2 * 2 * rate / s - (10^18 / 2 * rate) / 2 == 2 * rate
                                            require weiRaised + msg.value >= weiRaised
                                            weiRaised += msg.value
                                            require ext_code.size(tokenAddress)
                                            call tokenAddress.0x40c10f19 with:
                                                 gas gas_remaining wei
                                                args msg.sender, s - (10^18 / 2 * rate) / 2 * 2 * rate / 10^18
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            else:
                                                require return_data.size >= 32
                                                require ext_call.return_data[0]
                                                emit TokensPurchased(msg.value, s - (10^18 / 2 * rate) / 2 * 2 * rate / 10^18, msg.sender, msg.sender);
                                                call walletAddress with:
                                                   value msg.value wei
                                                     gas 2300 * is_zero(value) wei
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                else:
                                                    require stor0 == stor0
                                        else:
                                            require weiRaised + msg.value >= weiRaised
                                            weiRaised += msg.value
                                            require ext_code.size(tokenAddress)
                                            call tokenAddress.0x40c10f19 with:
                                                 gas gas_remaining wei
                                                args msg.sender, 0
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            else:
                                                require return_data.size >= 32
                                                require ext_call.return_data[0]
                                                emit TokensPurchased(msg.value, 0, msg.sender, msg.sender);
                                                call walletAddress with:
                                                   value msg.value wei
                                                     gas 2300 * is_zero(value) wei
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                else:
                                                    require stor0 == stor0
                                    else:
                                        require 10^18 / 2 * rate <= 0
                                        if Mask(255, 1, -10^18 / 2 * rate):
                                            require -10^18 / 2 * rate / 2
                                            require -10^18 / 2 * rate / 2 * 2 * rate / -10^18 / 2 * rate / 2 == 2 * rate
                                            require weiRaised + msg.value >= weiRaised
                                            weiRaised += msg.value
                                            require ext_code.size(tokenAddress)
                                            call tokenAddress.0x40c10f19 with:
                                                 gas gas_remaining wei
                                                args msg.sender, -10^18 / 2 * rate / 2 * 2 * rate / 10^18
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            else:
                                                require return_data.size >= 32
                                                require ext_call.return_data[0]
                                                emit TokensPurchased(msg.value, -10^18 / 2 * rate / 2 * 2 * rate / 10^18, msg.sender, msg.sender);
                                                call walletAddress with:
                                                   value msg.value wei
                                                     gas 2300 * is_zero(value) wei
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                else:
                                                    require stor0 == stor0
                                        else:
                                            require weiRaised + msg.value >= weiRaised
                                            weiRaised += msg.value
                                            require ext_code.size(tokenAddress)
                                            call tokenAddress.0x40c10f19 with:
                                                 gas gas_remaining wei
                                                args msg.sender, 0
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            else:
                                                require return_data.size >= 32
                                                require ext_call.return_data[0]
                                                emit TokensPurchased(msg.value, 0, msg.sender, msg.sender);
                                                call walletAddress with:
                                                   value msg.value wei
                                                     gas 2300 * is_zero(value) wei
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                else:
                                                    require stor0 == stor0
                            else:
                                require 2 * rate > 0
                                require 2 * rate
                                require (10^18 / 2 * rate * 10^18 / 2 * rate / 10^18) + (0 / 2 * rate) >= 10^18 / 2 * rate * 10^18 / 2 * rate / 10^18
                                if (10^18 / 2 * rate * 10^18 / 2 * rate / 10^18) + (0 / 2 * rate):
                                    require (10^18 / 2 * rate * 10^18 / 2 * rate / 10^18) + (0 / 2 * rate)
                                    require (10^18 * 10^18 / 2 * rate * 10^18 / 2 * rate / 10^18) + (10^18 * 0 / 2 * rate) / (10^18 / 2 * rate * 10^18 / 2 * rate / 10^18) + (0 / 2 * rate) == 10^18
                                    s = (10^18 * 10^18 / 2 * rate * 10^18 / 2 * rate / 10^18) + (10^18 * 0 / 2 * rate)
                                    t = (10^18 * 10^18 / 2 * rate * 10^18 / 2 * rate / 10^18) + (10^18 * 0 / 2 * rate) + 1 / 2
                                    while t < s:
                                        require t > 0
                                        require t
                                        require ((10^18 * 10^18 / 2 * rate * 10^18 / 2 * rate / 10^18) + (10^18 * 0 / 2 * rate) / t) + t >= (10^18 * 10^18 / 2 * rate * 10^18 / 2 * rate / 10^18) + (10^18 * 0 / 2 * rate) / t
                                        s = t
                                        t = ((10^18 * 10^18 / 2 * rate * 10^18 / 2 * rate / 10^18) + (10^18 * 0 / 2 * rate) / t) + t / 2
                                        continue 
                                    require 10^18 / 2 * rate <= s
                                    if Mask(255, 1, s - (10^18 / 2 * rate)):
                                        require s - (10^18 / 2 * rate) / 2
                                        require s - (10^18 / 2 * rate) / 2 * 2 * rate / s - (10^18 / 2 * rate) / 2 == 2 * rate
                                        require weiRaised + msg.value >= weiRaised
                                        weiRaised += msg.value
                                        require ext_code.size(tokenAddress)
                                        call tokenAddress.0x40c10f19 with:
                                             gas gas_remaining wei
                                            args msg.sender, s - (10^18 / 2 * rate) / 2 * 2 * rate / 10^18
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        else:
                                            require return_data.size >= 32
                                            require ext_call.return_data[0]
                                            emit TokensPurchased(msg.value, s - (10^18 / 2 * rate) / 2 * 2 * rate / 10^18, msg.sender, msg.sender);
                                            call walletAddress with:
                                               value msg.value wei
                                                 gas 2300 * is_zero(value) wei
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            else:
                                                require stor0 == stor0
                                    else:
                                        require weiRaised + msg.value >= weiRaised
                                        weiRaised += msg.value
                                        require ext_code.size(tokenAddress)
                                        call tokenAddress.0x40c10f19 with:
                                             gas gas_remaining wei
                                            args msg.sender, 0
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        else:
                                            require return_data.size >= 32
                                            require ext_call.return_data[0]
                                            emit TokensPurchased(msg.value, 0, msg.sender, msg.sender);
                                            call walletAddress with:
                                               value msg.value wei
                                                 gas 2300 * is_zero(value) wei
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            else:
                                                require stor0 == stor0
                                else:
                                    require 10^18 / 2 * rate <= 0
                                    if Mask(255, 1, -10^18 / 2 * rate):
                                        require -10^18 / 2 * rate / 2
                                        require -10^18 / 2 * rate / 2 * 2 * rate / -10^18 / 2 * rate / 2 == 2 * rate
                                        require weiRaised + msg.value >= weiRaised
                                        weiRaised += msg.value
                                        require ext_code.size(tokenAddress)
                                        call tokenAddress.0x40c10f19 with:
                                             gas gas_remaining wei
                                            args msg.sender, -10^18 / 2 * rate / 2 * 2 * rate / 10^18
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        else:
                                            require return_data.size >= 32
                                            require ext_call.return_data[0]
                                            emit TokensPurchased(msg.value, -10^18 / 2 * rate / 2 * 2 * rate / 10^18, msg.sender, msg.sender);
                                            call walletAddress with:
                                               value msg.value wei
                                                 gas 2300 * is_zero(value) wei
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            else:
                                                require stor0 == stor0
                                    else:
                                        require weiRaised + msg.value >= weiRaised
                                        weiRaised += msg.value
                                        require ext_code.size(tokenAddress)
                                        call tokenAddress.0x40c10f19 with:
                                             gas gas_remaining wei
                                            args msg.sender, 0
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        else:
                                            require return_data.size >= 32
                                            require ext_call.return_data[0]
                                            emit TokensPurchased(msg.value, 0, msg.sender, msg.sender);
                                            call walletAddress with:
                                               value msg.value wei
                                                 gas 2300 * is_zero(value) wei
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            else:
                                                require stor0 == stor0
                        else:
                            if msg.value:
                                require msg.value
                                require 10^18 * msg.value / msg.value == 10^18
                                if 10^18 * msg.value:
                                    require 10^18 * msg.value
                                    require 4 * 10^18 * msg.value / 10^18 * msg.value == 4
                                    require 2 * rate > 0
                                    require 2 * rate
                                    require 4 * 10^18 * msg.value / 2 * rate >= 0
                                    if 4 * 10^18 * msg.value / 2 * rate:
                                        require 4 * 10^18 * msg.value / 2 * rate
                                        require 10^18 * 4 * 10^18 * msg.value / 2 * rate / 4 * 10^18 * msg.value / 2 * rate == 10^18
                                        require (10^18 * 4 * 10^18 * msg.value / 2 * rate) + 1 >= 10^18 * 4 * 10^18 * msg.value / 2 * rate
                                        s = 10^18 * 4 * 10^18 * msg.value / 2 * rate
                                        t = (10^18 * 4 * 10^18 * msg.value / 2 * rate) + 1 / 2
                                        while t < s:
                                            require t > 0
                                            require t
                                            require (10^18 * 4 * 10^18 * msg.value / 2 * rate / t) + t >= 10^18 * 4 * 10^18 * msg.value / 2 * rate / t
                                            s = t
                                            t = (10^18 * 4 * 10^18 * msg.value / 2 * rate / t) + t / 2
                                            continue 
                                        require 10^18 / 2 * rate <= s
                                        if Mask(255, 1, s - (10^18 / 2 * rate)):
                                            require s - (10^18 / 2 * rate) / 2
                                            require s - (10^18 / 2 * rate) / 2 * 2 * rate / s - (10^18 / 2 * rate) / 2 == 2 * rate
                                            require weiRaised + msg.value >= weiRaised
                                            weiRaised += msg.value
                                            require ext_code.size(tokenAddress)
                                            call tokenAddress.0x40c10f19 with:
                                                 gas gas_remaining wei
                                                args msg.sender, s - (10^18 / 2 * rate) / 2 * 2 * rate / 10^18
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            else:
                                                require return_data.size >= 32
                                                require ext_call.return_data[0]
                                                emit TokensPurchased(msg.value, s - (10^18 / 2 * rate) / 2 * 2 * rate / 10^18, msg.sender, msg.sender);
                                                call walletAddress with:
                                                   value msg.value wei
                                                     gas 2300 * is_zero(value) wei
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                else:
                                                    require stor0 == stor0
                                        else:
                                            require weiRaised + msg.value >= weiRaised
                                            weiRaised += msg.value
                                            require ext_code.size(tokenAddress)
                                            call tokenAddress.0x40c10f19 with:
                                                 gas gas_remaining wei
                                                args msg.sender, 0
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            else:
                                                require return_data.size >= 32
                                                require ext_call.return_data[0]
                                                emit TokensPurchased(msg.value, 0, msg.sender, msg.sender);
                                                call walletAddress with:
                                                   value msg.value wei
                                                     gas 2300 * is_zero(value) wei
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                else:
                                                    require stor0 == stor0
                                    else:
                                        require 10^18 / 2 * rate <= 0
                                        if Mask(255, 1, -10^18 / 2 * rate):
                                            require -10^18 / 2 * rate / 2
                                            require -10^18 / 2 * rate / 2 * 2 * rate / -10^18 / 2 * rate / 2 == 2 * rate
                                            require weiRaised + msg.value >= weiRaised
                                            weiRaised += msg.value
                                            require ext_code.size(tokenAddress)
                                            call tokenAddress.0x40c10f19 with:
                                                 gas gas_remaining wei
                                                args msg.sender, -10^18 / 2 * rate / 2 * 2 * rate / 10^18
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            else:
                                                require return_data.size >= 32
                                                require ext_call.return_data[0]
                                                emit TokensPurchased(msg.value, -10^18 / 2 * rate / 2 * 2 * rate / 10^18, msg.sender, msg.sender);
                                                call walletAddress with:
                                                   value msg.value wei
                                                     gas 2300 * is_zero(value) wei
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                else:
                                                    require stor0 == stor0
                                        else:
                                            require weiRaised + msg.value >= weiRaised
                                            weiRaised += msg.value
                                            require ext_code.size(tokenAddress)
                                            call tokenAddress.0x40c10f19 with:
                                                 gas gas_remaining wei
                                                args msg.sender, 0
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            else:
                                                require return_data.size >= 32
                                                require ext_call.return_data[0]
                                                emit TokensPurchased(msg.value, 0, msg.sender, msg.sender);
                                                call walletAddress with:
                                                   value msg.value wei
                                                     gas 2300 * is_zero(value) wei
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                else:
                                                    require stor0 == stor0
                                else:
                                    require 2 * rate > 0
                                    require 2 * rate
                                    require 0 / 2 * rate >= 0
                                    if 0 / 2 * rate:
                                        require 0 / 2 * rate
                                        require 10^18 * 0 / 2 * rate / 0 / 2 * rate == 10^18
                                        require (10^18 * 0 / 2 * rate) + 1 >= 10^18 * 0 / 2 * rate
                                        s = 10^18 * 0 / 2 * rate
                                        t = (10^18 * 0 / 2 * rate) + 1 / 2
                                        while t < s:
                                            require t > 0
                                            require t
                                            require (10^18 * 0 / 2 * rate / t) + t >= 10^18 * 0 / 2 * rate / t
                                            s = t
                                            t = (10^18 * 0 / 2 * rate / t) + t / 2
                                            continue 
                                        require 10^18 / 2 * rate <= s
                                        if Mask(255, 1, s - (10^18 / 2 * rate)):
                                            require s - (10^18 / 2 * rate) / 2
                                            require s - (10^18 / 2 * rate) / 2 * 2 * rate / s - (10^18 / 2 * rate) / 2 == 2 * rate
                                            require weiRaised + msg.value >= weiRaised
                                            weiRaised += msg.value
                                            require ext_code.size(tokenAddress)
                                            call tokenAddress.0x40c10f19 with:
                                                 gas gas_remaining wei
                                                args msg.sender, s - (10^18 / 2 * rate) / 2 * 2 * rate / 10^18
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            else:
                                                require return_data.size >= 32
                                                require ext_call.return_data[0]
                                                emit TokensPurchased(msg.value, s - (10^18 / 2 * rate) / 2 * 2 * rate / 10^18, msg.sender, msg.sender);
                                                call walletAddress with:
                                                   value msg.value wei
                                                     gas 2300 * is_zero(value) wei
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                else:
                                                    require stor0 == stor0
                                        else:
                                            require weiRaised + msg.value >= weiRaised
                                            weiRaised += msg.value
                                            require ext_code.size(tokenAddress)
                                            call tokenAddress.0x40c10f19 with:
                                                 gas gas_remaining wei
                                                args msg.sender, 0
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            else:
                                                require return_data.size >= 32
                                                require ext_call.return_data[0]
                                                emit TokensPurchased(msg.value, 0, msg.sender, msg.sender);
                                                call walletAddress with:
                                                   value msg.value wei
                                                     gas 2300 * is_zero(value) wei
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                else:
                                                    require stor0 == stor0
                                    else:
                                        require 10^18 / 2 * rate <= 0
                                        if Mask(255, 1, -10^18 / 2 * rate):
                                            require -10^18 / 2 * rate / 2
                                            require -10^18 / 2 * rate / 2 * 2 * rate / -10^18 / 2 * rate / 2 == 2 * rate
                                            require weiRaised + msg.value >= weiRaised
                                            weiRaised += msg.value
                                            require ext_code.size(tokenAddress)
                                            call tokenAddress.0x40c10f19 with:
                                                 gas gas_remaining wei
                                                args msg.sender, -10^18 / 2 * rate / 2 * 2 * rate / 10^18
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            else:
                                                require return_data.size >= 32
                                                require ext_call.return_data[0]
                                                emit TokensPurchased(msg.value, -10^18 / 2 * rate / 2 * 2 * rate / 10^18, msg.sender, msg.sender);
                                                call walletAddress with:
                                                   value msg.value wei
                                                     gas 2300 * is_zero(value) wei
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                else:
                                                    require stor0 == stor0
                                        else:
                                            require weiRaised + msg.value >= weiRaised
                                            weiRaised += msg.value
                                            require ext_code.size(tokenAddress)
                                            call tokenAddress.0x40c10f19 with:
                                                 gas gas_remaining wei
                                                args msg.sender, 0
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            else:
                                                require return_data.size >= 32
                                                require ext_call.return_data[0]
                                                emit TokensPurchased(msg.value, 0, msg.sender, msg.sender);
                                                call walletAddress with:
                                                   value msg.value wei
                                                     gas 2300 * is_zero(value) wei
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                else:
                                                    require stor0 == stor0
                            else:
                                require 2 * rate > 0
                                require 2 * rate
                                require 0 / 2 * rate >= 0
                                if 0 / 2 * rate:
                                    require 0 / 2 * rate
                                    require 10^18 * 0 / 2 * rate / 0 / 2 * rate == 10^18
                                    require (10^18 * 0 / 2 * rate) + 1 >= 10^18 * 0 / 2 * rate
                                    s = 10^18 * 0 / 2 * rate
                                    t = (10^18 * 0 / 2 * rate) + 1 / 2
                                    while t < s:
                                        require t > 0
                                        require t
                                        require (10^18 * 0 / 2 * rate / t) + t >= 10^18 * 0 / 2 * rate / t
                                        s = t
                                        t = (10^18 * 0 / 2 * rate / t) + t / 2
                                        continue 
                                    require 10^18 / 2 * rate <= s
                                    if Mask(255, 1, s - (10^18 / 2 * rate)):
                                        require s - (10^18 / 2 * rate) / 2
                                        require s - (10^18 / 2 * rate) / 2 * 2 * rate / s - (10^18 / 2 * rate) / 2 == 2 * rate
                                        require weiRaised + msg.value >= weiRaised
                                        weiRaised += msg.value
                                        require ext_code.size(tokenAddress)
                                        call tokenAddress.0x40c10f19 with:
                                             gas gas_remaining wei
                                            args msg.sender, s - (10^18 / 2 * rate) / 2 * 2 * rate / 10^18
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        else:
                                            require return_data.size >= 32
                                            require ext_call.return_data[0]
                                            emit TokensPurchased(msg.value, s - (10^18 / 2 * rate) / 2 * 2 * rate / 10^18, msg.sender, msg.sender);
                                            call walletAddress with:
                                               value msg.value wei
                                                 gas 2300 * is_zero(value) wei
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            else:
                                                require stor0 == stor0
                                    else:
                                        require weiRaised + msg.value >= weiRaised
                                        weiRaised += msg.value
                                        require ext_code.size(tokenAddress)
                                        call tokenAddress.0x40c10f19 with:
                                             gas gas_remaining wei
                                            args msg.sender, 0
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        else:
                                            require return_data.size >= 32
                                            require ext_call.return_data[0]
                                            emit TokensPurchased(msg.value, 0, msg.sender, msg.sender);
                                            call walletAddress with:
                                               value msg.value wei
                                                 gas 2300 * is_zero(value) wei
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            else:
                                                require stor0 == stor0
                                else:
                                    require 10^18 / 2 * rate <= 0
                                    if Mask(255, 1, -10^18 / 2 * rate):
                                        require -10^18 / 2 * rate / 2
                                        require -10^18 / 2 * rate / 2 * 2 * rate / -10^18 / 2 * rate / 2 == 2 * rate
                                        require weiRaised + msg.value >= weiRaised
                                        weiRaised += msg.value
                                        require ext_code.size(tokenAddress)
                                        call tokenAddress.0x40c10f19 with:
                                             gas gas_remaining wei
                                            args msg.sender, -10^18 / 2 * rate / 2 * 2 * rate / 10^18
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        else:
                                            require return_data.size >= 32
                                            require ext_call.return_data[0]
                                            emit TokensPurchased(msg.value, -10^18 / 2 * rate / 2 * 2 * rate / 10^18, msg.sender, msg.sender);
                                            call walletAddress with:
                                               value msg.value wei
                                                 gas 2300 * is_zero(value) wei
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            else:
                                                require stor0 == stor0
                                    else:
                                        require weiRaised + msg.value >= weiRaised
                                        weiRaised += msg.value
                                        require ext_code.size(tokenAddress)
                                        call tokenAddress.0x40c10f19 with:
                                             gas gas_remaining wei
                                            args msg.sender, 0
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        else:
                                            require return_data.size >= 32
                                            require ext_call.return_data[0]
                                            emit TokensPurchased(msg.value, 0, msg.sender, msg.sender);
                                            call walletAddress with:
                                               value msg.value wei
                                                 gas 2300 * is_zero(value) wei
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            else:
                                                require stor0 == stor0
                else:
                    require 2 * rate > 0
                    require 2 * rate
                    if 10^18 / 2 * rate:
                        require 10^18 / 2 * rate
                        require 10^18 / 2 * rate * 10^18 / 2 * rate / 10^18 / 2 * rate == 10^18 / 2 * rate
                        if msg.value:
                            require msg.value
                            require 10^18 * msg.value / msg.value == 10^18
                            if 10^18 * msg.value:
                                require 10^18 * msg.value
                                require 4 * 10^18 * msg.value / 10^18 * msg.value == 4
                                require 2 * rate > 0
                                require 2 * rate
                                require (10^18 / 2 * rate * 10^18 / 2 * rate / 10^18) + (4 * 10^18 * msg.value / 2 * rate) >= 10^18 / 2 * rate * 10^18 / 2 * rate / 10^18
                                if (10^18 / 2 * rate * 10^18 / 2 * rate / 10^18) + (4 * 10^18 * msg.value / 2 * rate):
                                    require (10^18 / 2 * rate * 10^18 / 2 * rate / 10^18) + (4 * 10^18 * msg.value / 2 * rate)
                                    require (10^18 * 10^18 / 2 * rate * 10^18 / 2 * rate / 10^18) + (10^18 * 4 * 10^18 * msg.value / 2 * rate) / (10^18 / 2 * rate * 10^18 / 2 * rate / 10^18) + (4 * 10^18 * msg.value / 2 * rate) == 10^18
                                    s = (10^18 * 10^18 / 2 * rate * 10^18 / 2 * rate / 10^18) + (10^18 * 4 * 10^18 * msg.value / 2 * rate)
                                    t = (10^18 * 10^18 / 2 * rate * 10^18 / 2 * rate / 10^18) + (10^18 * 4 * 10^18 * msg.value / 2 * rate) + 1 / 2
                                    while t < s:
                                        require t > 0
                                        require t
                                        require ((10^18 * 10^18 / 2 * rate * 10^18 / 2 * rate / 10^18) + (10^18 * 4 * 10^18 * msg.value / 2 * rate) / t) + t >= (10^18 * 10^18 / 2 * rate * 10^18 / 2 * rate / 10^18) + (10^18 * 4 * 10^18 * msg.value / 2 * rate) / t
                                        s = t
                                        t = ((10^18 * 10^18 / 2 * rate * 10^18 / 2 * rate / 10^18) + (10^18 * 4 * 10^18 * msg.value / 2 * rate) / t) + t / 2
                                        continue 
                                    require 10^18 / 2 * rate <= s
                                    if Mask(255, 1, s - (10^18 / 2 * rate)):
                                        require s - (10^18 / 2 * rate) / 2
                                        require s - (10^18 / 2 * rate) / 2 * 2 * rate / s - (10^18 / 2 * rate) / 2 == 2 * rate
                                        require weiRaised + msg.value >= weiRaised
                                        weiRaised += msg.value
                                        require ext_code.size(tokenAddress)
                                        call tokenAddress.0x40c10f19 with:
                                             gas gas_remaining wei
                                            args msg.sender, s - (10^18 / 2 * rate) / 2 * 2 * rate / 10^18
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        else:
                                            require return_data.size >= 32
                                            require ext_call.return_data[0]
                                            emit TokensPurchased(msg.value, s - (10^18 / 2 * rate) / 2 * 2 * rate / 10^18, msg.sender, msg.sender);
                                            call walletAddress with:
                                               value msg.value wei
                                                 gas 2300 * is_zero(value) wei
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            else:
                                                require stor0 == stor0
                                    else:
                                        require weiRaised + msg.value >= weiRaised
                                        weiRaised += msg.value
                                        require ext_code.size(tokenAddress)
                                        call tokenAddress.0x40c10f19 with:
                                             gas gas_remaining wei
                                            args msg.sender, 0
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        else:
                                            require return_data.size >= 32
                                            require ext_call.return_data[0]
                                            emit TokensPurchased(msg.value, 0, msg.sender, msg.sender);
                                            call walletAddress with:
                                               value msg.value wei
                                                 gas 2300 * is_zero(value) wei
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            else:
                                                require stor0 == stor0
                                else:
                                    require 10^18 / 2 * rate <= 0
                                    if Mask(255, 1, -10^18 / 2 * rate):
                                        require -10^18 / 2 * rate / 2
                                        require -10^18 / 2 * rate / 2 * 2 * rate / -10^18 / 2 * rate / 2 == 2 * rate
                                        require weiRaised + msg.value >= weiRaised
                                        weiRaised += msg.value
                                        require ext_code.size(tokenAddress)
                                        call tokenAddress.0x40c10f19 with:
                                             gas gas_remaining wei
                                            args msg.sender, -10^18 / 2 * rate / 2 * 2 * rate / 10^18
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        else:
                                            require return_data.size >= 32
                                            require ext_call.return_data[0]
                                            emit TokensPurchased(msg.value, -10^18 / 2 * rate / 2 * 2 * rate / 10^18, msg.sender, msg.sender);
                                            call walletAddress with:
                                               value msg.value wei
                                                 gas 2300 * is_zero(value) wei
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            else:
                                                require stor0 == stor0
                                    else:
                                        require weiRaised + msg.value >= weiRaised
                                        weiRaised += msg.value
                                        require ext_code.size(tokenAddress)
                                        call tokenAddress.0x40c10f19 with:
                                             gas gas_remaining wei
                                            args msg.sender, 0
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        else:
                                            require return_data.size >= 32
                                            require ext_call.return_data[0]
                                            emit TokensPurchased(msg.value, 0, msg.sender, msg.sender);
                                            call walletAddress with:
                                               value msg.value wei
                                                 gas 2300 * is_zero(value) wei
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            else:
                                                require stor0 == stor0
                            else:
                                require 2 * rate > 0
                                require 2 * rate
                                require (10^18 / 2 * rate * 10^18 / 2 * rate / 10^18) + (0 / 2 * rate) >= 10^18 / 2 * rate * 10^18 / 2 * rate / 10^18
                                if (10^18 / 2 * rate * 10^18 / 2 * rate / 10^18) + (0 / 2 * rate):
                                    require (10^18 / 2 * rate * 10^18 / 2 * rate / 10^18) + (0 / 2 * rate)
                                    require (10^18 * 10^18 / 2 * rate * 10^18 / 2 * rate / 10^18) + (10^18 * 0 / 2 * rate) / (10^18 / 2 * rate * 10^18 / 2 * rate / 10^18) + (0 / 2 * rate) == 10^18
                                    s = (10^18 * 10^18 / 2 * rate * 10^18 / 2 * rate / 10^18) + (10^18 * 0 / 2 * rate)
                                    t = (10^18 * 10^18 / 2 * rate * 10^18 / 2 * rate / 10^18) + (10^18 * 0 / 2 * rate) + 1 / 2
                                    while t < s:
                                        require t > 0
                                        require t
                                        require ((10^18 * 10^18 / 2 * rate * 10^18 / 2 * rate / 10^18) + (10^18 * 0 / 2 * rate) / t) + t >= (10^18 * 10^18 / 2 * rate * 10^18 / 2 * rate / 10^18) + (10^18 * 0 / 2 * rate) / t
                                        s = t
                                        t = ((10^18 * 10^18 / 2 * rate * 10^18 / 2 * rate / 10^18) + (10^18 * 0 / 2 * rate) / t) + t / 2
                                        continue 
                                    require 10^18 / 2 * rate <= s
                                    if Mask(255, 1, s - (10^18 / 2 * rate)):
                                        require s - (10^18 / 2 * rate) / 2
                                        require s - (10^18 / 2 * rate) / 2 * 2 * rate / s - (10^18 / 2 * rate) / 2 == 2 * rate
                                        require weiRaised + msg.value >= weiRaised
                                        weiRaised += msg.value
                                        require ext_code.size(tokenAddress)
                                        call tokenAddress.0x40c10f19 with:
                                             gas gas_remaining wei
                                            args msg.sender, s - (10^18 / 2 * rate) / 2 * 2 * rate / 10^18
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        else:
                                            require return_data.size >= 32
                                            require ext_call.return_data[0]
                                            emit TokensPurchased(msg.value, s - (10^18 / 2 * rate) / 2 * 2 * rate / 10^18, msg.sender, msg.sender);
                                            call walletAddress with:
                                               value msg.value wei
                                                 gas 2300 * is_zero(value) wei
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            else:
                                                require stor0 == stor0
                                    else:
                                        require weiRaised + msg.value >= weiRaised
                                        weiRaised += msg.value
                                        require ext_code.size(tokenAddress)
                                        call tokenAddress.0x40c10f19 with:
                                             gas gas_remaining wei
                                            args msg.sender, 0
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        else:
                                            require return_data.size >= 32
                                            require ext_call.return_data[0]
                                            emit TokensPurchased(msg.value, 0, msg.sender, msg.sender);
                                            call walletAddress with:
                                               value msg.value wei
                                                 gas 2300 * is_zero(value) wei
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            else:
                                                require stor0 == stor0
                                else:
                                    require 10^18 / 2 * rate <= 0
                                    if Mask(255, 1, -10^18 / 2 * rate):
                                        require -10^18 / 2 * rate / 2
                                        require -10^18 / 2 * rate / 2 * 2 * rate / -10^18 / 2 * rate / 2 == 2 * rate
                                        require weiRaised + msg.value >= weiRaised
                                        weiRaised += msg.value
                                        require ext_code.size(tokenAddress)
                                        call tokenAddress.0x40c10f19 with:
                                             gas gas_remaining wei
                                            args msg.sender, -10^18 / 2 * rate / 2 * 2 * rate / 10^18
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        else:
                                            require return_data.size >= 32
                                            require ext_call.return_data[0]
                                            emit TokensPurchased(msg.value, -10^18 / 2 * rate / 2 * 2 * rate / 10^18, msg.sender, msg.sender);
                                            call walletAddress with:
                                               value msg.value wei
                                                 gas 2300 * is_zero(value) wei
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            else:
                                                require stor0 == stor0
                                    else:
                                        require weiRaised + msg.value >= weiRaised
                                        weiRaised += msg.value
                                        require ext_code.size(tokenAddress)
                                        call tokenAddress.0x40c10f19 with:
                                             gas gas_remaining wei
                                            args msg.sender, 0
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        else:
                                            require return_data.size >= 32
                                            require ext_call.return_data[0]
                                            emit TokensPurchased(msg.value, 0, msg.sender, msg.sender);
                                            call walletAddress with:
                                               value msg.value wei
                                                 gas 2300 * is_zero(value) wei
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            else:
                                                require stor0 == stor0
                        else:
                            require 2 * rate > 0
                            require 2 * rate
                            require (10^18 / 2 * rate * 10^18 / 2 * rate / 10^18) + (0 / 2 * rate) >= 10^18 / 2 * rate * 10^18 / 2 * rate / 10^18
                            if (10^18 / 2 * rate * 10^18 / 2 * rate / 10^18) + (0 / 2 * rate):
                                require (10^18 / 2 * rate * 10^18 / 2 * rate / 10^18) + (0 / 2 * rate)
                                require (10^18 * 10^18 / 2 * rate * 10^18 / 2 * rate / 10^18) + (10^18 * 0 / 2 * rate) / (10^18 / 2 * rate * 10^18 / 2 * rate / 10^18) + (0 / 2 * rate) == 10^18
                                s = (10^18 * 10^18 / 2 * rate * 10^18 / 2 * rate / 10^18) + (10^18 * 0 / 2 * rate)
                                t = (10^18 * 10^18 / 2 * rate * 10^18 / 2 * rate / 10^18) + (10^18 * 0 / 2 * rate) + 1 / 2
                                while t < s:
                                    require t > 0
                                    require t
                                    require ((10^18 * 10^18 / 2 * rate * 10^18 / 2 * rate / 10^18) + (10^18 * 0 / 2 * rate) / t) + t >= (10^18 * 10^18 / 2 * rate * 10^18 / 2 * rate / 10^18) + (10^18 * 0 / 2 * rate) / t
                                    s = t
                                    t = ((10^18 * 10^18 / 2 * rate * 10^18 / 2 * rate / 10^18) + (10^18 * 0 / 2 * rate) / t) + t / 2
                                    continue 
                                require 10^18 / 2 * rate <= s
                                if Mask(255, 1, s - (10^18 / 2 * rate)):
                                    require s - (10^18 / 2 * rate) / 2
                                    require s - (10^18 / 2 * rate) / 2 * 2 * rate / s - (10^18 / 2 * rate) / 2 == 2 * rate
                                    require weiRaised + msg.value >= weiRaised
                                    weiRaised += msg.value
                                    require ext_code.size(tokenAddress)
                                    call tokenAddress.0x40c10f19 with:
                                         gas gas_remaining wei
                                        args msg.sender, s - (10^18 / 2 * rate) / 2 * 2 * rate / 10^18
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    else:
                                        require return_data.size >= 32
                                        require ext_call.return_data[0]
                                        emit TokensPurchased(msg.value, s - (10^18 / 2 * rate) / 2 * 2 * rate / 10^18, msg.sender, msg.sender);
                                        call walletAddress with:
                                           value msg.value wei
                                             gas 2300 * is_zero(value) wei
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        else:
                                            require stor0 == stor0
                                else:
                                    require weiRaised + msg.value >= weiRaised
                                    weiRaised += msg.value
                                    require ext_code.size(tokenAddress)
                                    call tokenAddress.0x40c10f19 with:
                                         gas gas_remaining wei
                                        args msg.sender, 0
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    else:
                                        require return_data.size >= 32
                                        require ext_call.return_data[0]
                                        emit TokensPurchased(msg.value, 0, msg.sender, msg.sender);
                                        call walletAddress with:
                                           value msg.value wei
                                             gas 2300 * is_zero(value) wei
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        else:
                                            require stor0 == stor0
                            else:
                                require 10^18 / 2 * rate <= 0
                                if Mask(255, 1, -10^18 / 2 * rate):
                                    require -10^18 / 2 * rate / 2
                                    require -10^18 / 2 * rate / 2 * 2 * rate / -10^18 / 2 * rate / 2 == 2 * rate
                                    require weiRaised + msg.value >= weiRaised
                                    weiRaised += msg.value
                                    require ext_code.size(tokenAddress)
                                    call tokenAddress.0x40c10f19 with:
                                         gas gas_remaining wei
                                        args msg.sender, -10^18 / 2 * rate / 2 * 2 * rate / 10^18
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    else:
                                        require return_data.size >= 32
                                        require ext_call.return_data[0]
                                        emit TokensPurchased(msg.value, -10^18 / 2 * rate / 2 * 2 * rate / 10^18, msg.sender, msg.sender);
                                        call walletAddress with:
                                           value msg.value wei
                                             gas 2300 * is_zero(value) wei
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        else:
                                            require stor0 == stor0
                                else:
                                    require weiRaised + msg.value >= weiRaised
                                    weiRaised += msg.value
                                    require ext_code.size(tokenAddress)
                                    call tokenAddress.0x40c10f19 with:
                                         gas gas_remaining wei
                                        args msg.sender, 0
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    else:
                                        require return_data.size >= 32
                                        require ext_call.return_data[0]
                                        emit TokensPurchased(msg.value, 0, msg.sender, msg.sender);
                                        call walletAddress with:
                                           value msg.value wei
                                             gas 2300 * is_zero(value) wei
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        else:
                                            require stor0 == stor0
                    else:
                        if msg.value:
                            require msg.value
                            require 10^18 * msg.value / msg.value == 10^18
                            if 10^18 * msg.value:
                                require 10^18 * msg.value
                                require 4 * 10^18 * msg.value / 10^18 * msg.value == 4
                                require 2 * rate > 0
                                require 2 * rate
                                require 4 * 10^18 * msg.value / 2 * rate >= 0
                                if 4 * 10^18 * msg.value / 2 * rate:
                                    require 4 * 10^18 * msg.value / 2 * rate
                                    require 10^18 * 4 * 10^18 * msg.value / 2 * rate / 4 * 10^18 * msg.value / 2 * rate == 10^18
                                    require (10^18 * 4 * 10^18 * msg.value / 2 * rate) + 1 >= 10^18 * 4 * 10^18 * msg.value / 2 * rate
                                    s = 10^18 * 4 * 10^18 * msg.value / 2 * rate
                                    t = (10^18 * 4 * 10^18 * msg.value / 2 * rate) + 1 / 2
                                    while t < s:
                                        require t > 0
                                        require t
                                        require (10^18 * 4 * 10^18 * msg.value / 2 * rate / t) + t >= 10^18 * 4 * 10^18 * msg.value / 2 * rate / t
                                        s = t
                                        t = (10^18 * 4 * 10^18 * msg.value / 2 * rate / t) + t / 2
                                        continue 
                                    require 10^18 / 2 * rate <= s
                                    if Mask(255, 1, s - (10^18 / 2 * rate)):
                                        require s - (10^18 / 2 * rate) / 2
                                        require s - (10^18 / 2 * rate) / 2 * 2 * rate / s - (10^18 / 2 * rate) / 2 == 2 * rate
                                        require weiRaised + msg.value >= weiRaised
                                        weiRaised += msg.value
                                        require ext_code.size(tokenAddress)
                                        call tokenAddress.0x40c10f19 with:
                                             gas gas_remaining wei
                                            args msg.sender, s - (10^18 / 2 * rate) / 2 * 2 * rate / 10^18
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        else:
                                            require return_data.size >= 32
                                            require ext_call.return_data[0]
                                            emit TokensPurchased(msg.value, s - (10^18 / 2 * rate) / 2 * 2 * rate / 10^18, msg.sender, msg.sender);
                                            call walletAddress with:
                                               value msg.value wei
                                                 gas 2300 * is_zero(value) wei
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            else:
                                                require stor0 == stor0
                                    else:
                                        require weiRaised + msg.value >= weiRaised
                                        weiRaised += msg.value
                                        require ext_code.size(tokenAddress)
                                        call tokenAddress.0x40c10f19 with:
                                             gas gas_remaining wei
                                            args msg.sender, 0
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        else:
                                            require return_data.size >= 32
                                            require ext_call.return_data[0]
                                            emit TokensPurchased(msg.value, 0, msg.sender, msg.sender);
                                            call walletAddress with:
                                               value msg.value wei
                                                 gas 2300 * is_zero(value) wei
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            else:
                                                require stor0 == stor0
                                else:
                                    require 10^18 / 2 * rate <= 0
                                    if Mask(255, 1, -10^18 / 2 * rate):
                                        require -10^18 / 2 * rate / 2
                                        require -10^18 / 2 * rate / 2 * 2 * rate / -10^18 / 2 * rate / 2 == 2 * rate
                                        require weiRaised + msg.value >= weiRaised
                                        weiRaised += msg.value
                                        require ext_code.size(tokenAddress)
                                        call tokenAddress.0x40c10f19 with:
                                             gas gas_remaining wei
                                            args msg.sender, -10^18 / 2 * rate / 2 * 2 * rate / 10^18
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        else:
                                            require return_data.size >= 32
                                            require ext_call.return_data[0]
                                            emit TokensPurchased(msg.value, -10^18 / 2 * rate / 2 * 2 * rate / 10^18, msg.sender, msg.sender);
                                            call walletAddress with:
                                               value msg.value wei
                                                 gas 2300 * is_zero(value) wei
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            else:
                                                require stor0 == stor0
                                    else:
                                        require weiRaised + msg.value >= weiRaised
                                        weiRaised += msg.value
                                        require ext_code.size(tokenAddress)
                                        call tokenAddress.0x40c10f19 with:
                                             gas gas_remaining wei
                                            args msg.sender, 0
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        else:
                                            require return_data.size >= 32
                                            require ext_call.return_data[0]
                                            emit TokensPurchased(msg.value, 0, msg.sender, msg.sender);
                                            call walletAddress with:
                                               value msg.value wei
                                                 gas 2300 * is_zero(value) wei
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            else:
                                                require stor0 == stor0
                            else:
                                require 2 * rate > 0
                                require 2 * rate
                                require 0 / 2 * rate >= 0
                                if 0 / 2 * rate:
                                    require 0 / 2 * rate
                                    require 10^18 * 0 / 2 * rate / 0 / 2 * rate == 10^18
                                    require (10^18 * 0 / 2 * rate) + 1 >= 10^18 * 0 / 2 * rate
                                    s = 10^18 * 0 / 2 * rate
                                    t = (10^18 * 0 / 2 * rate) + 1 / 2
                                    while t < s:
                                        require t > 0
                                        require t
                                        require (10^18 * 0 / 2 * rate / t) + t >= 10^18 * 0 / 2 * rate / t
                                        s = t
                                        t = (10^18 * 0 / 2 * rate / t) + t / 2
                                        continue 
                                    require 10^18 / 2 * rate <= s
                                    if Mask(255, 1, s - (10^18 / 2 * rate)):
                                        require s - (10^18 / 2 * rate) / 2
                                        require s - (10^18 / 2 * rate) / 2 * 2 * rate / s - (10^18 / 2 * rate) / 2 == 2 * rate
                                        require weiRaised + msg.value >= weiRaised
                                        weiRaised += msg.value
                                        require ext_code.size(tokenAddress)
                                        call tokenAddress.0x40c10f19 with:
                                             gas gas_remaining wei
                                            args msg.sender, s - (10^18 / 2 * rate) / 2 * 2 * rate / 10^18
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        else:
                                            require return_data.size >= 32
                                            require ext_call.return_data[0]
                                            emit TokensPurchased(msg.value, s - (10^18 / 2 * rate) / 2 * 2 * rate / 10^18, msg.sender, msg.sender);
                                            call walletAddress with:
                                               value msg.value wei
                                                 gas 2300 * is_zero(value) wei
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            else:
                                                require stor0 == stor0
                                    else:
                                        require weiRaised + msg.value >= weiRaised
                                        weiRaised += msg.value
                                        require ext_code.size(tokenAddress)
                                        call tokenAddress.0x40c10f19 with:
                                             gas gas_remaining wei
                                            args msg.sender, 0
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        else:
                                            require return_data.size >= 32
                                            require ext_call.return_data[0]
                                            emit TokensPurchased(msg.value, 0, msg.sender, msg.sender);
                                            call walletAddress with:
                                               value msg.value wei
                                                 gas 2300 * is_zero(value) wei
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            else:
                                                require stor0 == stor0
                                else:
                                    require 10^18 / 2 * rate <= 0
                                    if Mask(255, 1, -10^18 / 2 * rate):
                                        require -10^18 / 2 * rate / 2
                                        require -10^18 / 2 * rate / 2 * 2 * rate / -10^18 / 2 * rate / 2 == 2 * rate
                                        require weiRaised + msg.value >= weiRaised
                                        weiRaised += msg.value
                                        require ext_code.size(tokenAddress)
                                        call tokenAddress.0x40c10f19 with:
                                             gas gas_remaining wei
                                            args msg.sender, -10^18 / 2 * rate / 2 * 2 * rate / 10^18
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        else:
                                            require return_data.size >= 32
                                            require ext_call.return_data[0]
                                            emit TokensPurchased(msg.value, -10^18 / 2 * rate / 2 * 2 * rate / 10^18, msg.sender, msg.sender);
                                            call walletAddress with:
                                               value msg.value wei
                                                 gas 2300 * is_zero(value) wei
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            else:
                                                require stor0 == stor0
                                    else:
                                        require weiRaised + msg.value >= weiRaised
                                        weiRaised += msg.value
                                        require ext_code.size(tokenAddress)
                                        call tokenAddress.0x40c10f19 with:
                                             gas gas_remaining wei
                                            args msg.sender, 0
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        else:
                                            require return_data.size >= 32
                                            require ext_call.return_data[0]
                                            emit TokensPurchased(msg.value, 0, msg.sender, msg.sender);
                                            call walletAddress with:
                                               value msg.value wei
                                                 gas 2300 * is_zero(value) wei
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            else:
                                                require stor0 == stor0
                        else:
                            require 2 * rate > 0
                            require 2 * rate
                            require 0 / 2 * rate >= 0
                            if 0 / 2 * rate:
                                require 0 / 2 * rate
                                require 10^18 * 0 / 2 * rate / 0 / 2 * rate == 10^18
                                require (10^18 * 0 / 2 * rate) + 1 >= 10^18 * 0 / 2 * rate
                                s = 10^18 * 0 / 2 * rate
                                t = (10^18 * 0 / 2 * rate) + 1 / 2
                                while t < s:
                                    require t > 0
                                    require t
                                    require (10^18 * 0 / 2 * rate / t) + t >= 10^18 * 0 / 2 * rate / t
                                    s = t
                                    t = (10^18 * 0 / 2 * rate / t) + t / 2
                                    continue 
                                require 10^18 / 2 * rate <= s
                                if Mask(255, 1, s - (10^18 / 2 * rate)):
                                    require s - (10^18 / 2 * rate) / 2
                                    require s - (10^18 / 2 * rate) / 2 * 2 * rate / s - (10^18 / 2 * rate) / 2 == 2 * rate
                                    require weiRaised + msg.value >= weiRaised
                                    weiRaised += msg.value
                                    require ext_code.size(tokenAddress)
                                    call tokenAddress.0x40c10f19 with:
                                         gas gas_remaining wei
                                        args msg.sender, s - (10^18 / 2 * rate) / 2 * 2 * rate / 10^18
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    else:
                                        require return_data.size >= 32
                                        require ext_call.return_data[0]
                                        emit TokensPurchased(msg.value, s - (10^18 / 2 * rate) / 2 * 2 * rate / 10^18, msg.sender, msg.sender);
                                        call walletAddress with:
                                           value msg.value wei
                                             gas 2300 * is_zero(value) wei
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        else:
                                            require stor0 == stor0
                                else:
                                    require weiRaised + msg.value >= weiRaised
                                    weiRaised += msg.value
                                    require ext_code.size(tokenAddress)
                                    call tokenAddress.0x40c10f19 with:
                                         gas gas_remaining wei
                                        args msg.sender, 0
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    else:
                                        require return_data.size >= 32
                                        require ext_call.return_data[0]
                                        emit TokensPurchased(msg.value, 0, msg.sender, msg.sender);
                                        call walletAddress with:
                                           value msg.value wei
                                             gas 2300 * is_zero(value) wei
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        else:
                                            require stor0 == stor0
                            else:
                                require 10^18 / 2 * rate <= 0
                                if Mask(255, 1, -10^18 / 2 * rate):
                                    require -10^18 / 2 * rate / 2
                                    require -10^18 / 2 * rate / 2 * 2 * rate / -10^18 / 2 * rate / 2 == 2 * rate
                                    require weiRaised + msg.value >= weiRaised
                                    weiRaised += msg.value
                                    require ext_code.size(tokenAddress)
                                    call tokenAddress.0x40c10f19 with:
                                         gas gas_remaining wei
                                        args msg.sender, -10^18 / 2 * rate / 2 * 2 * rate / 10^18
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    else:
                                        require return_data.size >= 32
                                        require ext_call.return_data[0]
                                        emit TokensPurchased(msg.value, -10^18 / 2 * rate / 2 * 2 * rate / 10^18, msg.sender, msg.sender);
                                        call walletAddress with:
                                           value msg.value wei
                                             gas 2300 * is_zero(value) wei
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        else:
                                            require stor0 == stor0
                                else:
                                    require weiRaised + msg.value >= weiRaised
                                    weiRaised += msg.value
                                    require ext_code.size(tokenAddress)
                                    call tokenAddress.0x40c10f19 with:
                                         gas gas_remaining wei
                                        args msg.sender, 0
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    else:
                                        require return_data.size >= 32
                                        require ext_call.return_data[0]
                                        emit TokensPurchased(msg.value, 0, msg.sender, msg.sender);
                                        call walletAddress with:
                                           value msg.value wei
                                             gas 2300 * is_zero(value) wei
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        else:
                                            require stor0 == stor0
        else:
            require ext_code.size(tokenAddress)
            staticcall tokenAddress.0x18160ddd with:
                    gas gas_remaining wei
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            else:
                require return_data.size >= 32
                require ext_call.return_data[0]
                require ext_call.return_data[0]
                require 10^18 * ext_call.return_data[0] / ext_call.return_data[0] == 10^18
                require 10^18 * ext_call.return_data[0]
                require 10^18 * ext_call.return_data[0]
                require 2 * 10^18 * ext_call.return_data[0] / 10^18 * ext_call.return_data[0] == 2
                require (2 * 10^18 * ext_call.return_data[0]) + 10^18 < 2 * 10^18 * ext_call.return_data[0]
                revert
}



}

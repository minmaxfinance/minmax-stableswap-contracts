// SPDX-License-Identifier: MIT

pragma solidity 0.6.12;

import "@openzeppelin/contracts/token/ERC20/ERC20.sol";

contract MinMaxToken is ERC20 {
    using SafeMath for uint256;

    uint256 internal _1_MILLION = 1e24;    // 1e6 * 1e18 = 1e24

    constructor(
        address _team,
        address _incubator,
        address _futureInvestor,
        address _initialSetup,
        address _ecosystem,
        address _futureUse
        )
        public ERC20("MinMaxToken", "MAX") {
        
        uint256 _teamEntitlement = _1_MILLION.mul(16);
        _mint(_team, _teamEntitlement);

        uint256 _incubatorEntitlement = _1_MILLION.mul(4);
        _mint(_incubator, _incubatorEntitlement);

        uint256 _futureInvestorEntitlement = _1_MILLION.mul(10);
        _mint(_futureInvestor, _futureInvestorEntitlement);

        uint256 _initialSetupEntitlement = _1_MILLION.mul(1);
        _mint(_initialSetup, _initialSetupEntitlement);

        uint256 _ecosystemEntitlement = _1_MILLION.mul(59);
        _mint(_ecosystem, _ecosystemEntitlement);

        uint256 _futureUseEntitlement = _1_MILLION.mul(10);
        _mint(_futureUse, _futureUseEntitlement);
    }
}
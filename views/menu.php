<?php if ( ! defined('BASEPATH')) exit('No direct script access allowed');
$user=User_helper::get_user();
if($user)
{
    ?>
    <div class="navbar navbar-default" role="navigation">
        <div class="container">
            <div class="navbar-header">
                <button type="button" class="navbar-toggle" data-toggle="collapse" data-target=".navbar-ex1-collapse">
                    <span class="sr-only">Toggle navigation</span>
                    <span class="icon-bar"></span>
                    <span class="icon-bar"></span>
                    <span class="icon-bar"></span>
                </button>
            </div>
            <div class="collapse navbar-collapse navbar-ex1-collapse">
                <ul class="nav navbar-nav">
                    <li class="menu-item"><a href="<?php echo site_url(); ?>">Dashboard</a></li>
                    <li class="menu-item dropdown">
                        <a href="#" class="dropdown-toggle" data-toggle="dropdown">System settings<b class="caret"></b></a>
                        <ul class="dropdown-menu">
                            <li class="menu-item dropdown dropdown-submenu">
                                <a href="#" class="dropdown-toggle" data-toggle="dropdown">System settings</a>
                                <ul class="dropdown-menu">
                                    <li class="menu-item ">
                                        <a href="#">System settings</a>
                                    </li>
                                    <li class="menu-item dropdown dropdown-submenu">
                                        <a href="#" class="dropdown-toggle" data-toggle="dropdown">Level 2</a>
                                        <ul class="dropdown-menu">
                                            <li>
                                                <a href="#">Link 3</a>
                                            </li>
                                        </ul>
                                    </li>
                                </ul>
                            </li>
                        </ul>
                    </li>
                    <li class="menu-item dropdown">
                        <a href="#" class="dropdown-toggle" data-toggle="dropdown">Reports<b class="caret"></b></a>
                        <ul class="dropdown-menu">
                            <li class="menu-item dropdown dropdown-submenu">
                                <a href="#" class="dropdown-toggle btn" data-toggle="dropdown">r1</a>
                                <ul class="dropdown-menu">
                                    <li class="menu-item ">
                                        <a href="#">asd</a>
                                    </li>
                                    <li class="menu-item ">
                                        <a href="#">asd</a>
                                    </li>
                                    <li class="menu-item ">
                                        <a href="#">asd</a>
                                    </li>
                                    <li class="menu-item dropdown dropdown-submenu">
                                        <a href="#" class="dropdown-toggle" data-toggle="dropdown">Level 2</a>
                                        <ul class="dropdown-menu">
                                            <li>
                                                <a href="#">Link 3</a>
                                            </li>
                                        </ul>
                                    </li>
                                </ul>
                            </li>
                        </ul>
                    </li>
                    <li class="menu-item dropdown">
                        <a href="#" class="dropdown-toggle" data-toggle="dropdown">Drop Down<b class="caret"></b></a>
                        <ul class="dropdown-menu">
                            <li class="menu-item dropdown dropdown-submenu">
                                <a href="#" class="dropdown-toggle" data-toggle="dropdown">Level 1</a>
                                <ul class="dropdown-menu">
                                    <li class="menu-item ">
                                        <a href="#">Link 1</a>
                                    </li>
                                    <li class="menu-item dropdown dropdown-submenu">
                                        <a href="#" class="dropdown-toggle" data-toggle="dropdown">Level 2</a>
                                        <ul class="dropdown-menu">
                                            <li>
                                                <a href="#">Link 3</a>
                                            </li>
                                        </ul>
                                    </li>
                                </ul>
                            </li>
                        </ul>
                    </li>
                    <li class="menu-item"><a href="<?php echo site_url('home/logout'); ?>">Logout</a></li>
                </ul>
            </div>
        </div>
    </div>
    <?php
}
?>
### TreeGenerator.R --- 
## 
## Filename: TreeGenerator.R
## Description: 
## Author: Sergio-Feliciano Mendoza-Barrera
## Maintainer: 
## Created: Tue Oct 21 06:52:19 2014 (-0500)
## Version: 
## Package-Requires: ()
## Last-Updated: Tue Oct 21 07:40:37 2014 (-0500)
##           By: Sergio-Feliciano Mendoza-Barrera
##     Update #: 27
## URL: 
## Doc URL: 
## Keywords: 
## Compatibility: 
## 
######################################################################
## 
## Commentary: 
## Tree generator for R projects, use project template project.
## URL project http://projecttemplate.net/getting_started.html
## 
######################################################################
## 
### Change Log:
## 
## 
######################################################################
## 
## This program is free software: you can redistribute it and/or modify
## it under the terms of the GNU General Public License as published by
## the Free Software Foundation, either version 3 of the License, or (at
## your option) any later version.
## 
## This program is distributed in the hope that it will be useful, but
## WITHOUT ANY WARRANTY; without even the implied warranty of
## MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the GNU
## General Public License for more details.
## 
## You should have received a copy of the GNU General Public License
## along with GNU Emacs.  If not, see <http://www.gnu.org/licenses/>.
## 
######################################################################
## 
### Code:

######################################################################

TreeGenerator <- function(projectName, destDirectory = ".") {

        if (!(hasArg(projectName))) {
                stop("\t\nProject name is missing !\n")
        }
        
## projectName <- "RepData_PeerAssessment2"

        setwd(destDirectory)

        if(!file.exists("README") & !file.exists("README.md") & !file.exists("TODO")) {
                library('ProjectTemplate')
                create.project(projectName)
        } else {
                stop("\t\n --> Structure exists !\n")
        }

        print("***  DIRECTORY STRUCTURE CREATED !  ***")
}
######################################################################
### TreeGenerator.R ends here
